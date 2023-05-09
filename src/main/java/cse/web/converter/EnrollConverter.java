package cse.web.converter;

import org.bson.Document;
import org.bson.types.ObjectId;

import cse.web.model.Enroll;

public class EnrollConverter {
	
	 public static Document toDocument(Enroll u) {
	        Document doc = new Document("courseId", u.getCourseID());
	        doc.append("studentId", new ObjectId(u.getStudentID()));
	        if (u.getID() != null) {
	            doc.append("_id", new ObjectId(u.getID()));
	        }
	        return doc;
	    }

	    public static Enroll toCourse(Document doc) {
	        Enroll u = new Enroll();
	        u.setID(((ObjectId) doc.get("_id")).toString());
	        u.setCourseID((doc.get("courseId")).toString());
	        u.setStudentID(((ObjectId) doc.get("studentId")).toString());
	        return u;
	    }

}
