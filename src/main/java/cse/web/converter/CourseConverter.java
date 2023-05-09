package cse.web.converter;

import org.bson.Document;
import org.bson.types.ObjectId;

import cse.web.model.Course;

public class CourseConverter {
	
	 public static Document toDocument(Course u) {
	        Document doc = new Document("courseName", u.getCourseName());
	        doc.append("courseCode", u.getCourseCode());
	        doc.append("usn", u.getUSN());
	        doc.append("courseTeacher", u.getCourseTeacher());
	        if (u.getID() != null) {
	            doc.append("_id", new ObjectId(u.getID()));
	        }
	        return doc;
	    }

	    public static Course toCourse(Document doc, String teacherName) {
	        Course u = new Course();
	        u.setCourseName((String) doc.get("courseName"));
	        u.setCourseCode((String) doc.get("courseCode"));
	        u.setUSN((String) doc.get("usn"));
	        u.setCourseTeacher(teacherName);
	        u.setID(((ObjectId) doc.get("_id")).toString());
	        return u;
	    }

}
