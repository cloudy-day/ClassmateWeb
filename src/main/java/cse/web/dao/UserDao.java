package cse.web.dao;


import com.mongodb.client.model.Sorts;

import cse.web.converter.CourseConverter;
import cse.web.converter.UserConverter;
import cse.web.model.Course;
import cse.web.model.Enroll;
import cse.web.model.User;

import java.util.ArrayList;
import java.util.List;

import org.bson.Document;
import org.bson.types.ObjectId;


import com.mongodb.MongoClient;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.model.Filters;



public class UserDao {
	
	private MongoCollection<Document> coll;

    public UserDao(MongoClient mongo) {
        this.coll = mongo.getDatabase("classmate-web").getCollection("user");
    }
    
    
    public User create(User p) {
        Document doc = UserConverter.toDocument(p);
        this.coll.insertOne(doc);
        ObjectId id = (ObjectId) doc.get("_id");
        p.setID(id.toString());
        return p;
    }
    
    public User checkCredentials(String username, String password) {
        Document doc = this.coll.find(
                Filters.and(
                        Filters.eq("username", username),
                        Filters.eq("password", password)
                )).first();
        if (doc == null)
            return null;
        else return UserConverter.toUser(doc);
    }
    
    public int getUserCount(String role) {
        return (int) coll.countDocuments(Filters.eq("role", role));
    }
    
    public List<User> getAllTeacher() {
        List<User> teacherList = new ArrayList<>();
        for (Document doc : coll.find(Filters.eq("role", "Teacher"))) {
        	teacherList.add(UserConverter.toUser(doc));
        }
        return teacherList;
    }
    
    public User getUserDetails(String id) {
    	
    	Document doc = this.coll.find(Filters.eq("_id", new ObjectId(id))).first();
        return UserConverter.toUser(doc);
    }
    
    
    public List<User> getCourseWiseStudentDetails(List<Enroll> enrolls) {
        List<User> users = new ArrayList<>();
        
        for (Enroll enroll : enrolls) {
            String id = enroll.getStudentID();
            
            Document doc = coll.find(Filters.eq("_id", new ObjectId(id))).first();
            if (doc != null) {
         
                users.add(UserConverter.toUser(doc));
            }
        }
        return users;
    }
    

}
