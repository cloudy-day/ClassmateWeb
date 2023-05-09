package cse.web.model;

public class User {
	
	private String id;
	private String name;
	private String username;
	private String password;
	private String role;
	private String department;
	
	public  User() {
		
	}
	
	public User(String id, String name, String username, String password, String role, String department) {
		this.id  = id;
        this.name = name;
        this.username = username;
        this.password = password;
        this.role = role;
        this.department = department;
	}
	
	public String getID() {
		return id;
	}
	public void setID(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	
	

}
