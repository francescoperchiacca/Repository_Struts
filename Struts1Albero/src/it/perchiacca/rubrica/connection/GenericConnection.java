package it.perchiacca.rubrica.connection;

//import java.util.*;
import java.sql.*;
class GenericConnection	{
	
	public static void main(String args[]) {
	
		String class_driver = "com.mysql.jdbc.Driver"; //Factory da utilizzare
		String url_connect = "jdbc:mysql://localhost:3306/framar"; //JDBCExcel = nome DSN da aprire - Url
		Connection DBConnection; // database connection
		Statement SQLStatement; // SQL statement
		ResultSet rsQuery; // query result set
		String str;
		try{
			Class.forName(class_driver); 
		}
		catch(java.lang.Exception exc){
			System.out.println("Class Driver ERROR " + exc.toString());
		}
		try{
			DBConnection = DriverManager.getConnection(url_connect);
			SQLStatement = DBConnection.createStatement();
			rsQuery = SQLStatement.executeQuery("select * from nometab");
			ResultSetMetaData rsmd = rsQuery.getMetaData();
			int nCols = rsmd.getColumnCount();
			while(rsQuery.next()){
				str = "";
				for(int ctCol = 0; ctCol < nCols; ctCol++){
					str = str + rsQuery.getString(ctCol+1)+" ";
					if(str == null) str = "NULL";
				}
				System.out.println(str);
			}
			if(rsQuery != null) rsQuery.close();
			if(SQLStatement != null) SQLStatement.close();
			if(DBConnection != null) DBConnection.close(); 
		} // end try
		catch(java.sql.SQLException exc){
			System.out.println("SQL ERROR: " + exc.toString());
		}
	} // end main
} // end GenericConnection
