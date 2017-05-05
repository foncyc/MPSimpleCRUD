package itdc.adcootauco.data;

import java.sql.Connection;

public class TestDBConnect {
	public static void main(String[] args) {
		Connection conn;
		try {
			conn = DataSourceFactory.getDBConnection();
			System.out.println(conn.getMetaData().getURL());
			System.out.println(conn.getMetaData().getConnection().getCatalog());
			System.out.println(conn.getMetaData().getUserName());
			System.out.println("Connection successful...");
		} catch(Exception ex) {
			System.err.println("Connection not available...");
		}
	}
}

