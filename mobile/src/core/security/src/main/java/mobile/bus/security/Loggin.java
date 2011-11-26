package mobile.bus.security;

import org.apache.log4j.Logger;

import mobile.core.common.Log;
import mobile.core.message.Data;
import mobile.core.message.Field;
import mobile.core.message.Message;
import mobile.core.structure.processor.GeneralProcessor;
import mobile.entity.manager.JPManager;
import mobile.entity.security.UserAccess;
import mobile.entity.security.UserAccessPk;
import mobile.entity.security.UserAccount;
import mobile.entity.security.UserAccountPk;

public class Loggin implements GeneralProcessor{

	private final String LOGGIN_DATA = "loggin";

	private final Logger log = Log.getInstance();
	
	@Override
	public Message process(Message msg) throws Exception {
		Data logginData = msg.getData(LOGGIN_DATA);
		
		String user = logginData.getField("user").getValue();
		String password = logginData.getField("password").getValue();
		
		// Verify
		UserAccountPk userPk = new UserAccountPk(user);
		UserAccount userAcc = JPManager.find(UserAccount.class, userPk);

		if (userAcc != null) {
			log.info("User found: ");
			log.info(userAcc);

			// Find the password and compare
			UserAccessPk accessPk = new UserAccessPk(user);
			UserAccess userAccess = JPManager.find(UserAccess.class,
					accessPk);

			if (userAccess != null
					&& userAccess.getUserKey().compareTo(password) == 0) {
				log.info("Verified password");
				log.info(userAccess);
			} else {
				log.info("Error de autenticacion");
			}
		}

		if(user.compareToIgnoreCase("admin")==0 && password.compareToIgnoreCase("admin")==0){
			logginData.addField(new Field("authorized", "1"));
		}else{
			logginData.addField(new Field("authorized", "0"));
		}
		
		return msg;
	}

}
