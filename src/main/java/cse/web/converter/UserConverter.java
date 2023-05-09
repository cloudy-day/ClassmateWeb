package cse.web.converter;

import org.bson.Document;
import org.bson.types.ObjectId;

import cse.web.model.User;


public class UserConverter {
	
	 // convert Product Object to MongoDB Document
    // take special note of converting id String to ObjectId
    public static Document toDocument(User u) {
        Document doc = new Document("name", u.getName());
        doc.append("password", u.getPassword());
        doc.append("role", u.getRole());
        doc.append("username", u.getUsername());
        doc.append("department", u.getDepartment());
      

        if (u.getID() != null) {
            doc.append("_id", new ObjectId(u.getID()));
        }
        return doc;
    }

    public static User toUser(Document doc) {
        User u = new User();
        u.setName((String) doc.get("name"));
        u.setUsername((String) doc.get("username"));
        u.setPassword((String) doc.get("password"));
        u.setRole((String) doc.get("role"));
        u.setDepartment((String) doc.get("department"));
        

        u.setID(((ObjectId) doc.get("_id")).toString());
        return u;
    }

}
