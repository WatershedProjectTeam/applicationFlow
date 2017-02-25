package controllers;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.StringUtils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import dbhelpers.UpdateGetDataQuery;
import model.WaterQuality;

/**
 * Servlet implementation class UpdateFormServlet
 */
@WebServlet(description = "This will get a water quality record and use the data to fill in a table for updating the record", 
	urlPatterns = { "/updateGetData" })

public class UpdateGetData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateGetData() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		this.doPost(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String SampleDate = request.getParameter("SampleDate");
		String SitePoint = request.getParameter("SitePoint");
		String url = "UpdateWaterQuality.jsp";		

		// create a UpdateGetDataQuery to read the update record
		UpdateGetDataQuery ud = new UpdateGetDataQuery();
		
/*    	*****Debug		
		System.out.println("Sample      D A T E   ====>"   + SampleDate  );
		System.out.println("S I T E    P O I N T    ====>"  + SitePoint  );
*/
		
		try {
			List<WaterQuality> waterQualities = ud.getWaterQualities(SampleDate, SitePoint);
			
			request.setAttribute("WATERQUALITIES", waterQualities);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
