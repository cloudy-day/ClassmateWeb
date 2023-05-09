package cse.web.model;

public class Enroll {
	
	private String id;
	private String studentId;
	private String courseId;
	
	public Enroll() {
		
	}
	
	public Enroll(String id, String studentId, String courseId) {
		this.id = id;
		this.studentId = studentId;
		this.courseId = courseId;
	}
	
	public String getID() {
		return id;
	}
	public void setID(String id) {
		this.id = id;
	}
	
	public String getStudentID() {
		return studentId;
	}
	public void setStudentID(String studentId) {
		this.studentId = studentId; 
	}
	
	public String getCourseID() {
		return courseId;
	}
	public void setCourseID(String  courseId) {
		this.courseId = courseId;
	}
	

}
