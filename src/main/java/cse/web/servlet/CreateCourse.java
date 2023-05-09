package cse.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mongodb.MongoClient;

import cse.web.dao.CourseDao;
import cse.web.dao.UserDao;
import cse.web.model.Course;
import cse.web.model.User;

@WebServlet("/createCourse")
public class CreateCourse extends HttpServlet {
	
	public CreateCourse() {
		super();
	}
	
	  /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      MongoClient mongo = (MongoClient) request.getServletContext()
              .getAttribute("MONGO_CLIENT");
      
      UserDao userDao = new UserDao(mongo);
      List<User> teachers = userDao.getAllTeacher();
      System.out.println(teachers.size());
      
      CourseDao  courseDao = new CourseDao(mongo);
      List<Course> courses = courseDao.getAllCourse();
      System.out.println(courses.size());
      
	  request.setAttribute("teachers", teachers);
	  request.setAttribute("courses", courses);
	  
      RequestDispatcher dispatcher = request.getRequestDispatcher("Admin.jsp");
      dispatcher.forward(request, response);

  }

  /**
   * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
   */
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      Course course = new Course();
      course.setCourseCode(request.getParameter("courseCode"));
      course.setCourseName(request.getParameter("courseName"));
      course.setCourseTeacher(request.getParameter("courseTeacher"));
      course.setUSN(request.getParameter("usn"));
      MongoClient mongo = (MongoClient) request.getServletContext()
              .getAttribute("MONGO_CLIENT");
      CourseDao courseDao = new CourseDao(mongo);
      courseDao.create(course);
      System.out.println("Course Created Successfully...");

      String url = "/Classmate-Web/dashboard";
      response.sendRedirect(url);
  }
	
	

}
