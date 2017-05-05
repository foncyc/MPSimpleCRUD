package itdc.adcootauco.model;

public class Member {
	private int id;
	private String picture;
	private String firstName;
	private String lastName;
	private String motto;
	private String profession;
	private String skills;
	private String facebook;
	private String github;
	private String linkedin;	
	
	public Member(int id, 
			String picture, 
			String firstName, 
			String lastName, 
			String motto, 
			String profession,
			String skills,
			String facebook,
			String github,
			String linkedin){
		
		this.id = id;
		this.picture = picture;
		this.firstName = firstName;
		this.lastName = lastName;
		this.motto = motto;
		this.profession = profession;
		this.skills = skills;
		this.facebook = facebook;
		this.github = github;
		this.linkedin = linkedin;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getMotto() {
		return motto;
	}

	public void setMotto(String motto) {
		this.motto = motto;
	}

	public String getProfession() {
		return profession;
	}

	public void setProfession(String profession) {
		this.profession = profession;
	}

	public String getSkills() {
		return skills;
	}

	public void setSkills(String skills) {
		this.skills = skills;
	}

	public String getFacebook() {
		return facebook;
	}

	public void setFacebook(String facebook) {
		this.facebook = facebook;
	}

	public String getGithub() {
		return github;
	}

	public void setGithub(String github) {
		this.github = github;
	}

	public String getLinkedin() {
		return linkedin;
	}

	public void setLinkedin(String linkedin) {
		this.linkedin = linkedin;
	}
	
	
	
}
