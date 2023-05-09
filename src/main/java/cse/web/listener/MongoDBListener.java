/**
 * 
 */
package cse.web.listener;

/**
 * @author mahin
 *
 */

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.MongoException;



@WebListener
public class MongoDBListener implements ServletContextListener {
	
	@Override
	   public void contextInitialized(ServletContextEvent sce) {
	       try {
	           ServletContext ctx = sce.getServletContext();
	           MongoClientURI uri = new MongoClientURI("mongodb+srv://Mahin:Mahin123456789@cluster0.7ndlxmn.mongodb.net/?retryWrites=true&w=majority");

	           MongoClient mongo = new MongoClient(uri);

//	           MongoClient mongo = new MongoClient(
//	                   ctx.getInitParameter("MONGODB_HOST"),
//	                   Integer.parseInt(ctx.getInitParameter("MONGODB_PORT")));
	           System.out.println("MongoClient initialized successfully");

	           sce.getServletContext().setAttribute("MONGO_CLIENT", mongo);
	       } catch (MongoException e) {
	           throw new RuntimeException("MongoClient init failed");
	       }
	   }

	   @Override
	   public void contextDestroyed(ServletContextEvent sce) {
	       MongoClient mongo = (MongoClient) sce.getServletContext()
	                           .getAttribute("MONGO_CLIENT");
	       mongo.close();
	       System.out.println("MongoClient closed successfully");
	   }
	

}
