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

@WebServlet("/courseDetail")
public class CourseDetails extends HttpServlet{
	
	
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CourseDetails() {
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
        
        String courseName = request.getParameter("name");
        String courseCode = request.getParameter("code");
        String usn = request.getParameter("usn");
        String teacher = request.getParameter("teacher");
        
        request.setAttribute("courseName",courseName);
        request.setAttribute("courseCode",courseCode);
        request.setAttribute("usn",usn);
        request.setAttribute("teacher",teacher);
        
        UserDao userDao = new UserDao(mongo);
        EnrollDao  enrollDao = new EnrollDao(mongo);
        
        List<Enroll> enrolls = enrollDao.getCourseWiseEnrolledStudents(courseCode);
        
        List<User> users = userDao.getCourseWiseStudentDetails(enrolls);
        
        request.setAttribute("total",enrolls.size());
        System.out.println("Size "+ users.size());
        request.setAttribute("users",users);
        
       
        RequestDispatcher dispatcher = request.getRequestDispatcher("CourseDetails.jsp");
        dispatcher.forward(request, response);

    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

       

    }
	
	

}
