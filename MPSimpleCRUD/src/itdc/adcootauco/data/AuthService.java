package itdc.adcootauco.data;

import itdc.adcootauco.model.User;
import itdc.adcootauco.data.UserDAOImpl;


public class AuthService {

	UserDAOImpl auth;
	
	public AuthService(){
		auth = new UserDAOImpl();
		
	}
	
	public void addUser(String email, String password){
		auth.addUser(new User(email, password));
	}
	
	public User findUser(String email){
		return auth.findUser(email);
	}
	
	public boolean isMatch(User user){
		
		return auth.isMatch(user);
		
	}
	
	
	
}
