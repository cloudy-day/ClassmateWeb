package cse.web.model;

public class Course {
	
	private String id;
	private String courseName;
	private String courseCode;
	private String usn;
	private String courseTeacher;
	
	public Course() {
		
	}
	
	public Course(String id, String courseName, String courseCode, String usn, String courseTeacher) {
		this.id = id;
		this.courseName = courseName;
		this.courseCode = courseCode;
		this.usn = usn;
		this.courseTeacher = courseTeacher;
	}
	
	public String getID() {
		return id;
	}
	public void setID(String id) {
		this.id = id;
	}
	
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	
	public String getCourseCode() {
		return courseCode;
	}
	public void setCourseCode(String courseCode) {
		this.courseCode = courseCode;
	}
	
	public String getUSN() {
		return usn;
	}
	public void setUSN(String usn) {
		this.usn = usn;
	}
	
	public String getCourseTeacher() {
		return courseTeacher;
	}
	public void setCourseTeacher(String courseTeacher) {
		this.courseTeacher = courseTeacher;
	}
	
	

}
