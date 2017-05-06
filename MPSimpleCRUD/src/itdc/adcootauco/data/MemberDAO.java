package itdc.adcootauco.data;

import java.util.List;

import itdc.adcootauco.model.Member;


public interface MemberDAO {
	
	public void addMember(Member member);
	
	public boolean updateMember(Member member);
	
	public boolean deleteMember(Member member);
	
	public Member findMember(String id);
	
	public boolean isMatch(Member member);
	
	public List<Member> getAllMembers();
	
	public int generateId();
}