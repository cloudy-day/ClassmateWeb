package cse.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mongodb.MongoClient;

import cse.web.dao.CourseDao;
import cse.web.dao.EnrollDao;
import cse.web.dao.UserDao;
import cse.web.model.Course;
import cse.web.model.Enroll;
import cse.web.model.User;

@WebServlet("/profile")
public class Profile extends HttpServlet{
	
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Profile() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	 HttpSession session = request.getSession(false);
    	 MongoClient mongo = (MongoClient) request.getServletContext()
                 .getAttribute("MONGO_CLIENT");
         
    	 String studentId = (String) session.getAttribute("id");

        
         UserDao  userDao = new UserDao(mongo);
         User user = userDao.getUserDetails(studentId);
                  
   	  	 request.setAttribute("user", user);
   	  	
         RequestDispatcher dispatcher = request.getRequestDispatcher("Profile.jsp");
         dispatcher.forward(request, response);

    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
       
       
    }

}
