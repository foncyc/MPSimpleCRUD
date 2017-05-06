package itdc.adcootauco.data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import itdc.adcootauco.data.DataSourceFactory;
import itdc.adcootauco.model.Member;

public class MemberDaoImpl implements MemberDAO {
	
	public static final String DBADD_MEMBER = "INSERT INTO members (picture, firstName, lastName, motto, profession, skills, facebook, github, linkedin) VALUES (?,?,?,?,?,?,?,?,?)";
	public static final String DBFIND_MEMBER = "SELECT id, picture, firstName, lastName, motto, profession, skills, facebook, github, linkedin FROM members WHERE id = ?";
	public static final String DBGETALL_MEMBER = "SELECT id, picture, firstName, lastName, motto, profession, skills, facebook, github, linkedin FROM members";
	public static final String DBDELETE_MEMBER = "DELETE FROM members WHERE id = ?";
	public static final String DBIS_MATCH = "SELECT id, picture, firstName, lastName, motto, profession, skills, facebook, github, linkedin FROM members WHERE firstName = ? and lastName = ?";
	public static final String DBUPDATE_MEMBER = "UPDATE members SET picture = ?, firstName = ?, lastName = ?, motto = ?, profession = ?, skills = ?, facebook = ?, github = ?, linkedin = ? WHERE id = ?";
	
	@Override
	public void addMember(Member member) {
		Connection conn = DataSourceFactory.getJNDIDBConnection();
		if(conn==null) {
			System.out.println("No connection...");
		}
		
		try (PreparedStatement stmt = conn.prepareStatement(DBADD_MEMBER);) {
			//conn.setAutoCommit(false);
			stmt.setString(1, member.getPicture());
			stmt.setString(2, member.getFirstName());
			stmt.setString(3, member.getLastName());
			stmt.setString(4, member.getMotto());
			stmt.setString(5, member.getProfession());
			stmt.setString(6, member.getSkills());
			stmt.setString(7, member.getFacebook());
			stmt.setString(8, member.getGithub());
			stmt.setString(9, member.getLinkedin());
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
	public boolean updateMember(Member member) {
		
		Connection conn = DataSourceFactory.getJNDIDBConnection();
		if(conn==null) {
			System.out.println("No connection... in Update Method");
		}
		boolean update = false;
		
		try (PreparedStatement stmt = conn.prepareStatement(DBUPDATE_MEMBER);) {		
			
			stmt.setString(1, member.getPicture());
			stmt.setString(2, member.getFirstName());
			stmt.setString(3, member.getLastName());
			stmt.setString(4, member.getMotto());
			stmt.setString(5, member.getProfession());
			stmt.setString(6, member.getSkills());
			stmt.setString(7, member.getFacebook());
			stmt.setString(8, member.getGithub());
			stmt.setString(9, member.getLinkedin());
			stmt.setInt(10, member.getId());
			stmt.executeUpdate();
			
			update = true;
						
		} catch(SQLException ex) {
			ex.printStackTrace();
			System.out.println("Update Unsuccessfull");
		} finally {
			try {
				conn.close();
			} catch(SQLException ex) {
				ex.printStackTrace();
			}
		}
				
		return update;
		
	}
	
	@Override
	public boolean deleteMember(Member member) {
		
		Connection conn = DataSourceFactory.getJNDIDBConnection();
		if(conn==null) {
			System.out.println("No connection... in Delete Method");
		}
		boolean delete = false;
		
		try (PreparedStatement stmt = conn.prepareStatement(DBDELETE_MEMBER);) {		
			
			stmt.setInt(1, member.getId());
			stmt.executeUpdate();
			
			delete = true;
						
		} catch(SQLException ex) {
			ex.printStackTrace();
			System.out.println("Delete Unsuccessfull");
		} finally {
			try {
				conn.close();
			} catch(SQLException ex) {
				ex.printStackTrace();
			}
		}
				
		return delete;
	}
	
	@Override
	public Member findMember(String i) {
		
		Connection conn = DataSourceFactory.getJNDIDBConnection();
		ResultSet rs = null;
		Member member = null;
		
		try (PreparedStatement stmt = conn.prepareStatement(DBFIND_MEMBER);) {		
			stmt.setString(1, i.trim());
			rs = stmt.executeQuery();
			
			if(rs.next()) {
				
				int id = rs.getInt("id");
				String picture = rs.getString("picture");
				String firstName = rs.getString("firstName");
				String lastName = rs.getString("lastName");
				String motto = rs.getString("motto");
				String profession = rs.getString("profession");
				String skills = rs.getString("skills");
				String facebook = rs.getString("facebook");
				String github = rs.getString("github");
				String linkedin = rs.getString("linkedin");
				
				member = new Member(id, picture, firstName, lastName, motto, profession, skills, facebook, github, linkedin);
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
		
		return member;
	}
	
	@Override
	public boolean isMatch(Member member) {

		Connection conn = DataSourceFactory.getJNDIDBConnection();
		ResultSet rs = null;
		boolean match = false;
		
		try (PreparedStatement stmt = conn.prepareStatement(DBIS_MATCH);) {		
			stmt.setString(1, member.getFirstName());
			stmt.setString(2, member.getLastName());
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
	public List<Member> getAllMembers() {
		Connection conn = DataSourceFactory.getJNDIDBConnection();
		Statement stmt = null;
		ResultSet rs = null;
		List<Member> list = new ArrayList<Member>();
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(DBGETALL_MEMBER);
			
			while(rs.next()) {
				int id = rs.getInt("id");
				String picture = rs.getString("picture");
				String firstName = rs.getString("firstName");
				String lastName = rs.getString("lastName");
				String motto = rs.getString("motto");
				String profession = rs.getString("profession");
				String skills = rs.getString("skills");
				String facebook = rs.getString("facebook");
				String github = rs.getString("github");
				String linkedin = rs.getString("linkedin");
				
				list.add(new Member(id, picture, firstName, lastName, motto, profession, skills, facebook, github, linkedin));
			}
		} catch(SQLException ex) {
			ex.printStackTrace();
		} finally {
			try {
				rs.close();
				stmt.close();
				conn.close();
			} catch(SQLException ex) {
				ex.printStackTrace();
			}
		}
		
		return list;
	}
	
	@Override
	public int generateId() {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
	
	

}
