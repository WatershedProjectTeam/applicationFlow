package controllers;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dbhelpers.DeleteQueryMP;
/**
 * Servlet implementation class DeleteDataMP
 */
@WebServlet(description = "Servlet to initiate deletion of monitoring point locations", urlPatterns = { "/DeleteDataMP" })
public class DeleteDataMP extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteDataMP() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
 
		String SiteName = request.getParameter("SiteName");
		String SitePoint = request.getParameter("SitePoint");		
				
		//System.out.println("Hello doPost DeleteData Servlet!! - siteName =" + SiteName + " sitePoint =  " + SitePoint);  //*****Debug
		
		// create a deleteQuery to delete the record
		DeleteQueryMP dq= new DeleteQueryMP();
		
		// use deleteQuery to delete the record
		dq.doDelete(SiteName, SitePoint );
		
		// pass execution on to the view Data Servlet- "viewMonitorData.java"
		String url = "/viewMonitor";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
