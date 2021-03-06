package mobile.core.processor;

import java.io.PrintWriter;
import java.io.StringReader;
import java.io.StringWriter;
import java.util.Date;
import java.util.List;

import javax.persistence.PersistenceException;
import javax.persistence.TypedQuery;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

import mobile.common.message.Message;
import mobile.common.tools.ProcessType;
import mobile.core.security.RoleValidator;
import mobile.core.security.SessionValidator;
import mobile.entity.manager.JpManager;
import mobile.entity.security.ProcessComponent;
import mobile.tools.common.Config;
import mobile.tools.common.Log;
import mobile.tools.common.Objection;
import mobile.tools.common.convertion.FormatDates;
import mobile.tools.common.enums.ObjectionCode;
import mobile.tools.common.param.LocalParameter;
import mobile.tools.common.param.ParameterEnum;
import mobile.tools.common.structure.GeneralProcessor;

import org.apache.log4j.Logger;
import org.eclipse.persistence.config.HintValues;
import org.eclipse.persistence.config.QueryHints;
import org.eclipse.persistence.exceptions.DatabaseException;

import com.mysql.jdbc.exceptions.jdbc4.CommunicationsException;

public class CoreProcessor {

	private final Logger log = Log.getInstance();

	private final String QRY_PROCESSES = "Select p from ProcessComponent p " + "where p.pk.companyId = :companyId "
			+ "and p.pk.subsystemId = :subsystemId " + "and p.pk.moduleId = :moduleId "
			+ "and p.pk.processId = :processId " + "and p.typeId = :processType " + "and p.enable = true "
			+ "order by p.pk.processSequence";

	private final int MAX_STACK_TRACE = 500;

	public Message process(Message msg) {
		log.info("Begin processing... ");
		long init = System.currentTimeMillis();
		log.info("Input message: \n" + formatXml(msg.toXML(), 2));

		try {
//			while (JpManager.isBusy()) {
//				log.info("Waiting...");
//				Thread.sleep(100);
//			}
			// Create entity manager
			JpManager.createEntityManager();
			// Begin transaction
			JpManager.beginTransaction();
			// Security verifications
			executeValidations(msg);
			// Execute associated processes
			executeProcesses(msg);
			// Commit
			JpManager.commitTransaction();
			// Set response
			setResponse(msg, null);
		} catch (Exception e) {
			log.error(e.getMessage(), e);
			if (!(e instanceof PersistenceException && e.getCause() instanceof DatabaseException && ((DatabaseException) e
					.getCause()).getErrorCode() == 4002)) {
				// Rollback
				JpManager.rollbackTransaction();
			}
			// Set error response
			setResponse(msg, e);
		} finally {
			JpManager.close();
		}

		log.info("Output message: \n" + formatXml(msg.toXML(), 2));
		log.info("Processing time: "
				+ FormatDates.getMinuteFormat().format(new Date(System.currentTimeMillis() - init)));

		return msg;
	}

	private void executeValidations(Message msg) throws Exception {
		if (Config.is("core-validate-session")) {
			SessionValidator sessionValidator = new SessionValidator();
			sessionValidator.execute(msg);
		}
		if (Config.is("core-validate-role")) {
			RoleValidator roleValidator = new RoleValidator();
			roleValidator.execute(msg);
		}
	}

	private void executeProcesses(Message msg) throws Exception {
		String strProcess = msg.getRequest().getProcess();
		String strProcessType = msg.getRequest().getProcessType();

		log.info("Process: " + strProcess + " (" + strProcessType + ")");
		String subsystem = strProcess.substring(0, 1);
		String module = strProcess.substring(1, 2);
		String process = strProcess.substring(2);

		TypedQuery<ProcessComponent> query = JpManager.getEntityManager().createQuery(QRY_PROCESSES,
				ProcessComponent.class);
		query.setHint(QueryHints.READ_ONLY, HintValues.TRUE);
		query.setParameter("companyId", LocalParameter.get(ParameterEnum.COMPANY, String.class));
		query.setParameter("subsystemId", subsystem);
		query.setParameter("moduleId", module);
		query.setParameter("processId", process);
		query.setParameter("processType", strProcessType);

		List<ProcessComponent> lProcesses = query.getResultList();

		if (lProcesses.size() == 0) {
			if (ProcessType.QUERY.getShortName().compareTo(strProcessType) == 0) {
				new GeneralQuery().process(msg);
			} else if (ProcessType.MAINTENANCE.getShortName().compareTo(strProcessType) == 0) {
				new GeneralMaintenance().process(msg);
			}
		}

		for (ProcessComponent processComponent : lProcesses) {
			log.info("Processing: " + processComponent.getComponentId());

			GeneralProcessor proc;
			try {
				proc = (GeneralProcessor) Class.forName(processComponent.getComponentId()).newInstance();
			} catch (ClassNotFoundException e) {
				throw new Objection(ObjectionCode.NO_CLASS, processComponent.getComponentId());
			}

			long init = System.currentTimeMillis();
			proc.process(msg);
			log.info("Processed " + processComponent.getComponentId() + ". Processing time: "
					+ FormatDates.getMinuteFormat().format(new Date(System.currentTimeMillis() - init)));

		}
	}

	private String formatXml(String input, int indent) {
		try {
			Source xmlInput = new StreamSource(new StringReader(input));
			StringWriter stringWriter = new StringWriter();
			StreamResult xmlOutput = new StreamResult(stringWriter);
			TransformerFactory transformerFactory = TransformerFactory.newInstance();
			transformerFactory.setAttribute("indent-number", indent);
			Transformer transformer = transformerFactory.newTransformer();
			transformer.setOutputProperty(OutputKeys.INDENT, "yes");
			transformer.transform(xmlInput, xmlOutput);
			return xmlOutput.getWriter().toString();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	public Message setResponse(Message msg, Throwable throwable) {
		Objection objection = null;

		if (throwable == null) {
			msg.getResponse().setCode(ObjectionCode.SUCCESS.getCode());
			msg.getResponse().setMessage(ObjectionCode.SUCCESS.getMessage());
			return msg;
		} else if (throwable instanceof NullPointerException) {
			objection = new Objection(throwable, ObjectionCode.NULL_VALUES);
		} else if (throwable instanceof PersistenceException) {
			DatabaseException dbe = (DatabaseException) throwable.getCause();
			if (dbe.isCommunicationFailure()) {
				objection = new Objection(dbe, ObjectionCode.DB_CONNECTION_ERROR);
			} else {
				objection = new Objection(dbe, ObjectionCode.DB_ERROR);
				Integer errorCode = dbe.getDatabaseErrorCode();
				if (errorCode != null) {
					if (errorCode == 1062) {
						objection = new Objection(dbe, ObjectionCode.DB_DUPLICATE_PK);
					} else if (errorCode == 1451 || errorCode == 1452) {
						objection = new Objection(dbe, ObjectionCode.DB_FOREIGN_KEY);
					} else if (errorCode == 1048) {
						objection = new Objection(dbe, ObjectionCode.DB_NULL);
					}
				}
			}
		} else if (throwable instanceof CommunicationsException) {
			objection = new Objection(throwable, ObjectionCode.DB_CONNECTION_ERROR);
		} else if (throwable instanceof Objection) {
			objection = (Objection) throwable;
		} else {
			objection = new Objection(throwable, ObjectionCode.FAILED);
		}

		msg.getResponse().setCode(objection.getCode());
		msg.getResponse().setMessage(objection.getMessage());
		String stackTrace = replaceWrongCharacters(getStackTrace(throwable));
		stackTrace = (stackTrace.length() > MAX_STACK_TRACE) ? stackTrace.substring(0, MAX_STACK_TRACE) + "..."
				: stackTrace;
		msg.getResponse().setError(stackTrace);
		// DatabaseException dbe = (DatabaseException) throwable.getCause();
		// message = ObjectionCode.DB_ERROR.getMessage() + "<br/>";
		// message = "CÓDIGO: " + dbe.getDatabaseErrorCode() + "<br/>";
		// message = message + dbe.getMessage();
		// message = replaceWrongCharacters(message);
		// msg.getResponse().setMessage(message);
		// String stackTrace = replaceWrongCharacters(getStackTrace(dbe));
		// msg.getResponse().setError(stackTrace);

		return msg;
	}

	// private String getStackTrace(Throwable throwable) {
	// Writer writer = new StringWriter();
	// PrintWriter printWriter = new PrintWriter(writer);
	// throwable.printStackTrace(printWriter);
	// return "<![CDATA[" + writer.toString() + "]]>";
	// }

	private String getStackTrace(Throwable throwable) {
		if (throwable != null) {
			try {
				StringWriter sw = new StringWriter();
				PrintWriter pw = new PrintWriter(sw);
				throwable.printStackTrace(pw);
				return sw.toString();
			} catch (Exception ex) {
				return "COULD NOT SHOW THE STACKTRACE IN STRING \n" + ex.getMessage();
			}
		}
		return "";
	}

	private String replaceWrongCharacters(String message) {
		String out = message.replaceAll("\t", "  ");
		out = out.replaceAll("(\\<|\\>)", "'");
		out = out.replaceAll("(\r|\n)", "<br/>");
		out = out.replaceAll("\"", "'");

		return out;
	}
}