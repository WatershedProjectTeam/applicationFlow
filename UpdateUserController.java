package controllers;

import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbhelpers.AddUser;
import dbhelpers.UpdateUser;
import model.User;
import utilities.PasswordService;

/**
 * Servlet implementation class AddFormServlet
 */
@WebServlet(description = "Controller to generate the add a user form", urlPatterns = { "/update" })
public class UpdateUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateUserController() {
        super();
        // TODO Auto-generated constructor stub 
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		   //get current date time with Date()
		   

		String email = request.getParameter("email");
		String password = request.getParameter("password");
	    String username = request.getParameter("username");
	    String admin = request.getParameter("admin");
	    // Date createdate = new Date(0);
	    
	    java.sql.Date createdate = new java.sql.Date(Calendar.getInstance().getTime().getTime());
	    System.out.println(createdate);
	    // Object param = new java.sql.Timestamp(createdate.getTime());
	    // System.out.println(param);

		
	 // set up an encrypted password
	    PasswordService ps = new PasswordService();
	    		   
	    // ps.encrypt(this.password);
	    
	    // set up a user object
	    User user = new User();
	    user.setEmail(email);
	    user.setUsername(username);
	    user.setPassword(ps.encrypt(password));
	    user.setCreatedate(createdate);
	    user.setAdmin(admin);
	    
	    
		// set up an addQuery object
	    UpdateUser uq = new UpdateUser();
		
	    
	    //located in UpdateUser under dbhelpers
		uq.doUpdate(user);
		
		// pass control on to the ReadServlet
		
		
		
		String url = "HomePage.html";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
