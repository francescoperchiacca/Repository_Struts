package it.perchiacca.rubrica.connection;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ResourceBundle;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class ConnectionManager {
	
	/**
	 * VEDI FILE DB.PROPERTIES
	 */
	
	private static final String TYPE_JNDI = "JNDI";
	private static final String TYPE_DIRECT = "DIRECT";
	
	/** tipo */
	private static String type = null;
	
	/** Se il tipo JNDI devo settare il datasource*/
	private static DataSource dataSource = null;
	
	/** Se il tipo DIRECT devo settare tutti i parametri*/
	private static String driver = null;
	private static String url = null;
	private static String user = null;
	private static String password = null;
		
	/** Per ricavare le properties */
	private static ResourceBundle props = ResourceBundle.getBundle("db");
	
	private static boolean isJNDIType() {
		return type.equals(TYPE_JNDI);
	}
	private static boolean isDIRECTType() {		
		return type.equals(TYPE_DIRECT);
	}
	/**
	 * Inizializza la connessione al Db
	 */
	public static void initConnection() {
		try {
			type = props.getString("connection.type");
			if (isJNDIType()) {
				String dataSourceName = props.getString("connection.jndi.dataSourceName");
				Context ctx = new InitialContext();
				dataSource = (DataSource)ctx.lookup("java:/" + dataSourceName);
			}
			else if (isDIRECTType()) {
				driver = props.getString("connection.direct.driver");
				System.out.println(driver);
				url = props.getString("connection.direct.url");
				user = props.getString("connection.direct.user");
				password = props.getString("connection.direct.password");
				System.out.println("url:" + url +" " +"user:" + user +" "+ "password:" + password);
				Class.forName(driver);
				System.out.println("driver "+driver);
			}
			else {
				throw new RuntimeException("Impossibile determinare il tipo di connessione che si vuole utilizzare");
			}
		}
		catch (Exception e) {
			throw new RuntimeException("Impossibile inizializzare la connessione", e);
		}
	}
	public static Connection getConnection() throws SQLException {
		Connection conn = null;
		if (isJNDIType()) {
			conn = dataSource.getConnection();
			conn.setAutoCommit(false);
			return conn;
		}
		else if (isDIRECTType()) {
			conn = DriverManager.getConnection(url, user, password);
			conn.setAutoCommit(false);
			return conn;
		}
		else {
			throw new SQLException("Impossibile ottenere la connessione al database");
		}
	}
	
	public static void chiudiResultSet(ResultSet rs) {
		try {
			if (rs != null && !rs.isClosed()) {
				rs.close();
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public static void chiudiStatement(Statement stmt) {
		try {
			if (stmt != null && !stmt.isClosed()) {
				stmt.close();
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public static void chiudiConnection(Connection conn) {
		try {
			if (conn != null && !conn.isClosed()) {
				conn.close();
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public static void chiudiRisorse(ResultSet rs, Statement stmt, Connection conn) {
		chiudiResultSet(rs);
		chiudiStatement(stmt);
		chiudiConnection(conn);
	}
	
	public static void rollback(Connection conn){
		try{
			conn.rollback();
		}
		catch(SQLException ex){
			ex.printStackTrace();
		}		
	}
	public static void commit(Connection conn){
		try{
			conn.commit();
		}
		catch(SQLException ex){
			ex.printStackTrace();
		}		
	}

}
