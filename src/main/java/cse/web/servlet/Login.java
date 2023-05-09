package cse.web.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mongodb.MongoClient;

import cse.web.dao.UserDao;
import cse.web.model.User;


@WebServlet("/login")
public class Login extends HttpServlet {
	
	 private static final long serialVersionUID = 1L;

	    /**
	     * @see HttpServlet#HttpServlet()
	     */
	    public Login() {
	        super();
	        // TODO Auto-generated constructor stub
	    }

	    /**
	     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	     */
	    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        HttpSession session = request.getSession(false);
	        if (session != null && session.getAttribute("id") != null) {
	            System.out.println(session.getAttribute("role"));
	            String url = "/Classmate-Web/dashboard";
	            response.sendRedirect(url);
	        } else {

	            RequestDispatcher dispatcher = request.getRequestDispatcher("Login.jsp");
	            dispatcher.forward(request, response);
	        }
	    }

	    /**
	     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	     */
	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        String username = request.getParameter("username");
	        String password = request.getParameter("password");
	        MongoClient mongo = (MongoClient) request.getServletContext()
	                .getAttribute("MONGO_CLIENT");
	        UserDao userDao = new UserDao(mongo);
	        User user = userDao.checkCredentials(username, password);


	        if (user == null) {
	            response.sendRedirect("login.jsp?error=1");
	        } else {
	            HttpSession session = request.getSession();
	            session.setAttribute("username", username);
	            session.setAttribute("id", user.getID());
	            session.setAttribute("role", user.getRole());
	            session.setAttribute("isLoggedIn", true);
	            String url = "/Classmate-Web/dashboard";
	            response.sendRedirect(url);
	        }

	    }


}
