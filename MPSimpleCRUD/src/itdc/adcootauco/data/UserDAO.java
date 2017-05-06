package itdc.adcootauco.data;

import java.util.List;

import itdc.adcootauco.model.Member;
import itdc.adcootauco.model.User;


public interface UserDAO {
	
	public void addUser(User user);
	
	public boolean updateUser(User user);
	
	public boolean deleteUser(User user);
	
	public User findUser(String email);
	
	public boolean isMatch(User user);
	
	public List<User> getAllUsers();
	
}