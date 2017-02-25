package controllers;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbhelpers.UpdateQueryMP;
import model.MonitoringPoint;;

/**
 * Servlet implementation class ViewData
 */
@WebServlet({ "/UpdateDataMP" })
public class UpdateDataMP extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateDataMP() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Servlet#getServletConfig()
	 */
	public ServletConfig getServletConfig() {
		// TODO Auto-generated method stub
		return null;
	}

	/**
	 * @see Servlet#getServletInfo()
	 */
	public String getServletInfo() {
		// TODO Auto-generated method stub
		return null;
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// TODO Auto-generated method stub

/*	*****Debug
		System.out.println("---->Getting the request.getParameter from the Form Sample Date = !! X Y L E N E S = " + request.getParameter("XYLENES_MP"));
		System.out.println(" ---->Getting the request.getParameter from the Form Sample Date = "+ request.getParameter("SampleDate"));		
		System.out.println(" ---->Getting the request.getParameter from the Form Site Point = "+ request.getParameter("SitePoint"));		
*/		
		String SiteName = request.getParameter("SiteName");
		String SitePoint = request.getParameter("SitePoint");
		String Latitude = request.getParameter("Latitude");
		String Longitude = request.getParameter("Longitude");
		String Description = request.getParameter("Description");
		String SiteUse = request.getParameter("SiteUse");

		
/*		*****Debug		
		System.out.println("Hello UpdateDataMP Servlet doPost!! --->Before waterQuality =" + request.getParameter("SiteName"));
		System.out.println("Hello UpdateDataMP Servlet doPost!! --->Before waterQuality =" + request.getParameter("SitePoint"));
*/
		// set up the monitoring point object
		MonitoringPoint monitoringPoint = new MonitoringPoint();

		// store data for the fields in the waterQuality object
		
		monitoringPoint.setSiteName(SiteName);
		monitoringPoint.setSitePoint(SitePoint);
		monitoringPoint.setLatitude (Latitude);
		monitoringPoint.setLongitude(Longitude);
		monitoringPoint.setDescription(Description);
		monitoringPoint.setSiteUse(SiteUse);

		// Setting up the add Query object for Water Quality
		UpdateQueryMP uq = new UpdateQueryMP();
		uq.doUpdate(monitoringPoint);

		// pass on the object to the view data url
		String url = "/viewMonitor";

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
