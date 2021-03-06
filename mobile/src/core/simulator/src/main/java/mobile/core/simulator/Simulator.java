package mobile.core.simulator;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mobile.common.message.Message;
import mobile.tools.common.Log;
import mobile.tools.common.msg.Parser;

import org.apache.log4j.Logger;

public class Simulator extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String CONTENT_TYPE = "text/plain; charset=UTF-8";
	private Logger log = Log.getInstance();

	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String message = null;
		try {
			log.info(":::::::::::::::::::::::::");
			log.info("content-type: " + request.getContentType());
			log.info("character-encoding: " + request.getCharacterEncoding());
			log.info("content-length: " + request.getContentLength());
			log.info("remote-addr: " + request.getRemoteAddr());

			BufferedReader reader = request.getReader();
			log.info("Message");
			message = reader.readLine();

			log.info("Input message: ");
			log.info(message);

			if (message == null) {
				setResponseProp(response);

				PrintWriter out = response.getWriter();

				out.println("No message received.");
				out.close();
				return;
			}

			// Get data from json
			Parser parser = new Parser();
			Message msg = parser.parseMsg(message, Message.XML);

			// Process
			SimulatorProcessor proc = new SimulatorProcessor();
			proc.process(msg);
			
			// Return the changes in JSON format
			setResponseProp(response);
			PrintWriter out = response.getWriter();

			out.println(msg.toXML());
			out.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	private void setResponseProp(HttpServletResponse response) {
		response.setContentType(CONTENT_TYPE);
	}
}
