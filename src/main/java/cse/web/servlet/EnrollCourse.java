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

@WebServlet("/enrollCourse")
public class EnrollCourse extends HttpServlet{
	
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public EnrollCourse() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       HttpSession session = request.getSession(false);
       Enroll enroll = new Enroll();
       enroll.setCourseID(request.getParameter("courseId"));
       enroll.setStudentID((String) session.getAttribute("id"));
       MongoClient mongo = (MongoClient) request.getServletContext()
               .getAttribute("MONGO_CLIENT");
       EnrollDao enrollDao = new EnrollDao(mongo);
       enrollDao.create(enroll);
       System.out.println("Course Enrolled Successfully...");

       String url = "/Classmate-Web/dashboard";
       response.sendRedirect(url);
       
       
    }

}
