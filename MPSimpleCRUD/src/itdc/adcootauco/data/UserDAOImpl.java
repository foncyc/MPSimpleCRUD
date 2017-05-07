package itdc.adcootauco.data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import itdc.adcootauco.data.DataSourceFactory;
import itdc.adcootauco.model.User;

public class UserDAOImpl implements UserDAO {
	
	public static final String ADD_USER = "INSERT INTO users (email, password) VALUES (?,?)";
	public static final String FIND_USER = "SELECT email, password FROM users WHERE email = ?";
	public static final String GETALL_USER = "SELECT * FROM users";
	public static final String DELETE_USER = "DELETE FROM users WHERE email = ?";
	public static final String IS_MATCH = "SELECT email, password FROM users WHERE email = ? and password = ?";
	public static final String UPDATE_USER = "UPDATE users SET email = ?, password = ? WHERE email = ?";
	
	@Override
	public void addUser(User user) {
		
		Connection conn = DataSourceFactory.getJNDIDBConnection();
		if(conn==null) {
			System.out.println("No connection...");
		}
		
		try (PreparedStatement stmt = conn.prepareStatement(ADD_USER);) {
			//conn.setAutoCommit(false);
			stmt.setString(1, user.getEmail());
			stmt.setString(2, user.getPassword());
			stmt.execute();
			//conn.setAutoCommit(true);
		} catch(SQLException ex) {
			ex.printStackTrace();
			try {
				conn.rollback();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		} finally {
			try {
			   conn.close();
			} catch(Exception ex) {
				
			}
		}
	}
	@Override
	public boolean updateUser(User user) {

		return false;
	}
	@Override
	public boolean deleteUser(User user) {

		return false;
	}
	@Override
	public User findUser(String username) {
		
		Connection conn = DataSourceFactory.getJNDIDBConnection();
		ResultSet rs = null;
		User user = null;
		
		try (PreparedStatement stmt = conn.prepareStatement(FIND_USER);) {		
			
			stmt.setString(1, username.trim());					
			rs = stmt.executeQuery();
			
			if(rs.next()) {
				String email = rs.getString("email");
				String password = rs.getString("password");
				user = new User(email, password);
			}
			
			rs.close();
			
		} catch(SQLException ex) {
			ex.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch(SQLException ex) {
				ex.printStackTrace();
			}
		}
		
		return user;
	}
	@Override
	public boolean isMatch(User user) {
		
		Connection conn = DataSourceFactory.getJNDIDBConnection();
		ResultSet rs = null;
		boolean match = false;
		
		try (PreparedStatement stmt = conn.prepareStatement(IS_MATCH);) {	
			
			stmt.setString(1, user.getEmail());
			stmt.setString(2, user.getPassword());
			rs = stmt.executeQuery();
			
			if(rs.next()) {
				match = true;
			}
			rs.close();
		} catch(SQLException ex) {
			ex.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch(SQLException ex) {
				ex.printStackTrace();
			}
		}
		return match;
	}
	
	@Override
	public List<User> getAllUsers() {

		return null;
	}
	
	
}