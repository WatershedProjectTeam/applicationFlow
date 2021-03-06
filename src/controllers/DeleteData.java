package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbhelpers.DeleteQuery;

/**
 * Servlet implementation class DeleteServlet
 */
@WebServlet(
		description = "Delete a record for a particular sample date", 
		urlPatterns = {
				"/DeleteServlet", 
				"/DeleteData", 
				"/delete" 
		})
public class DeleteData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteData() {
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
		
		String SampleDate = request.getParameter("SampleDate");
		String SitePoint = request.getParameter("SitePoint");
		
		// System.out.println("Hello doPost DeleteData Servlet!! " + SampleDate + " sitePoint =  " + SitePoint);  *****Debug
		
		// create a deleteQuery to delete the record
		DeleteQuery dq= new DeleteQuery();
		
		// use deleteQuery to delete the record
		dq.doDelete(SampleDate, SitePoint );
		
		// pass execution on to the view Data Servlet- "viewData.java"
		String url = "/viewData";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
