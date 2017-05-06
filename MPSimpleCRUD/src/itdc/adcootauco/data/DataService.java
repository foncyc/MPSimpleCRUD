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
	
	public Member retrieveData(String id) {
		Member member = dao.findMember(id);
		return member;
	}
	
	public boolean updateMember(Member member){
		
		return dao.updateMember(member);
		
	}
	
	public boolean deleteMember(String id){
		
		boolean delete = false;
		Member member = retrieveData(id);
		
		if(member!=null){
			
			delete = dao.deleteMember(member);
		}
		
		return delete;
	}
	
	public List<Member> getAllMembers(){
		
		return dao.getAllMembers();
		
	}
	
}
