package it.perchiacca.rubrica.connection;



import java.sql.Connection;
import java.util.ResourceBundle;

import javax.mail.Session;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class Env {
	
	private static InitialContext ctx;
	private static Context c;	
	
	private static ResourceBundle bundle;
	
	public static final String RUOLO_ADMIN_KEY = "protocollo.ruolo.admin";
	public static final String GRUPPO_ADMIN_KEY = "protocollo.gruppo.admin";
	public static final String RUOLO_GRUPPO_ADMIN_KEY = "protocollo.ruolo.gruppo";
	public static final String DATA_SOURCE_KEY = "protocollo.datasource";
	public static final String MAIL_KEY = "protocollo.mail";
	
	static {
		try {
			ctx = new InitialContext();
			c = (Context)ctx.lookup("java:comp/env");
			bundle = ResourceBundle.getBundle("protocollo");
		}
		catch (NamingException e) {
			e.printStackTrace();
		}
	}
	public static String getProperty(String key) {
		return bundle.getString(key);		
	}
	public static String getEnvVariable(String key) {
		try {
			return (String)c.lookup(key);
		}
		catch (NamingException e) {
			e.printStackTrace();
			return null;
		}
	}
	public static Connection getConnection() {
		try {
			String datasource = getProperty(DATA_SOURCE_KEY);
			DataSource	ds = (DataSource) ctx.lookup(datasource);
			return ds.getConnection();
		}
		catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public static Session initializeMailContext(){
		Session session=null;
		try{
			String mail=getProperty(MAIL_KEY);
			session = (Session)ctx.lookup(mail);
		}
		catch(NamingException e){
			e.printStackTrace();
		}
		return session;
	}
}
