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

@WebServlet("/dashboard")
public class Dashboard extends HttpServlet{
	
	
	 private static final long serialVersionUID = 1L;

	    /**
	     * @see HttpServlet#HttpServlet()
	     */
	    public Dashboard() {
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
	        UserDao userDao = new UserDao(mongo);
	        CourseDao courseDao = new CourseDao(mongo);
	        EnrollDao  enrollDao = new EnrollDao(mongo);
	        if (session != null && session.getAttribute("id") != null) {
	            System.out.println(session.getAttribute("role"));
	            String role = session.getAttribute("role").toString();
	            if (role.equals("Admin")) {
	            	
	            	int totalStudents = userDao.getUserCount("Student");
	                int totalTeachers = userDao.getUserCount("Teacher");
	                int totalCourses = courseDao.getCourseCount();
	                request.setAttribute("totalTeachers", totalTeachers);
	                request.setAttribute("totalStudents", totalStudents);
	                request.setAttribute("totalCourses", totalCourses);
	                RequestDispatcher dispatcher = request.getRequestDispatcher("AdminHome.jsp");
	                dispatcher.forward(request, response);
	                

	            } else if (role.equals("Teacher")) {
	                String teacherId = (String) session.getAttribute("id");
	                System.out.println("Teacher Id : " + teacherId);
	                
	                List<Course>  courses = courseDao.getAssignedCourses(teacherId);
	                
	                request.setAttribute("courses", courses);
	                
	                RequestDispatcher dispatcher = request.getRequestDispatcher("Teacher.jsp");
	                dispatcher.forward(request, response);
	            } else {
	                String studentId = (String) session.getAttribute("id");
	                System.out.println("Student Id : " + studentId);
	                
	             
	                List<Enroll> enrolls = enrollDao.getEnrolledCourseCode(studentId);
	                
//	                System.out.println(enrolls.size());
	                
	                List<Course> courses = courseDao.getEnrolledCourses(enrolls);
	                
	                List<Course> courseCodes = courseDao.getAllCourseCode();
	                
	          	  	request.setAttribute("courses", courses);
	          	  	request.setAttribute("courseCodes", courseCodes);
	                
	                RequestDispatcher dispatcher = request.getRequestDispatcher("Student.jsp");
	                dispatcher.forward(request, response);
	            }
	        } else {
	            String url = "/Classmate-Web";
	            response.sendRedirect(url);
	        }


	    }

	    /**
	     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	     */
	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	       

	    }

	
	

}
