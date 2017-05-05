package itdc.adcootauco.data;

import java.util.List;

import itdc.adcootauco.model.Member;

public class DataService {
	
	private MemberDaoImpl dao;
	
	public DataService(){
		dao = new MemberDaoImpl();
	}
	
	public boolean addMember(Member member){
		
		boolean add = false;
		if(!dao.isMatch(member)){
			dao.addMember(member);
			add = true;
		}
		return add;
	}
	
	public List<Member> getAllMembers(){
		
		return dao.getAllMembers();
		
	}
	
}
