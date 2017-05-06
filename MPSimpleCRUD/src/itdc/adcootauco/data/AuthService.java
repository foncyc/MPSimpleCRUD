package itdc.adcootauco.data;

import itdc.adcootauco.model.User;
import itdc.adcootauco.data.UserDAOImpl;


public class AuthService {

	UserDAOImpl auth;
	
	public AuthService(){
		auth = new UserDAOImpl();
		
	}
	
	public boolean isMatch(User user){
		
		return auth.isMatch(user);
		
	}
	
	
	
}
