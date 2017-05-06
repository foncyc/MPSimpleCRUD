package itdc.adcootauco.data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class DataSourceFactory {
	
	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch(Exception ex) {	
		}
	}
	
	public static Connection getDBConnection() {
		Connection conn = null;
		try {
			String url = "jdbc:mysql://localhost:3306/memberdb?useSSL=false";
			String user = "root";
			String pass = "foncyc";					
			conn = DriverManager.getConnection(url, user, pass);
		} catch(Exception ex) {
			//ex.printStackTrace();
			System.out.println("Connection Failure...");
		}
		return conn;
	}
	
	
	public static Connection getJNDIDBConnection() {
		String DATASOURCE_CONTEXT = "java:comp/env/jdbc/memberApp";
		Connection conn = null;
		try {
			Context initialContext = new InitialContext();
			DataSource ds = (DataSource) initialContext.lookup(DATASOURCE_CONTEXT);
			if (ds != null) {
				conn = ds.getConnection();
			} else {
				System.out.println("JNDI resource not found!");	
			}
		} catch (NamingException ex) {
			System.out.println("Connection problem: " + ex);
		} catch (SQLException ex) {
			System.out.println("Connection problem: " + ex);
		}
		return conn;
	}
	/*public static Connection getDBConnection2() {
		Properties props = new Properties();	
		Connection conn = null;
		try {
			props.load(new FileInputStream("resources/dbConnection.conf"));
			String url = props.getProperty("DB_URL");
			String user = props.getProperty("DB_USERNAME");
			String pass = props.getProperty("DB_PASSWORD");
					
			conn = DriverManager.getConnection(url, user, pass);
		} catch(Exception ex) {
			ex.printStackTrace();
		}
		return conn;
	}*/
	
}
