package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbhelpers.AddQuery;
import model.WaterQuality;

/**
 * Servlet implementation class AddData
 */
@WebServlet({ "/addData" })
public class AddData extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddData() {
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
		String url = "AddWaterQuality.jsp";

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String SampleDate = request.getParameter("SampleDate");
		String SampledBy = request.getParameter("SampledBy");
		String SiteCondition = request.getParameter("SiteCondition");
		String PH = request.getParameter("PH");
		String Conductivity = request.getParameter("Conductivity");
		String DissolvedOxygen = request.getParameter("DissolvedOxygen");
		String Temperature = request.getParameter("Temperature");
		String Turbidity = request.getParameter("Turbidity");
		String Stage = request.getParameter("Stage");
		String FecalColiform = request.getParameter("FecalColiform");
		String Ecoli = request.getParameter("Ecoli");
		String Hardness = request.getParameter("Hardness");
		String TotalP = request.getParameter("TotalP");
		String Totaln = request.getParameter("Totaln");
		String Tss = request.getParameter("Tss");
		String Arsenic = request.getParameter("Arsenic");
		String Copper = request.getParameter("Copper");
		String Lead = request.getParameter("Lead");
		String Zinc = request.getParameter("Zinc");
		String Sitename = request.getParameter("Sitename");
		String Sitepoint = request.getParameter("Sitepoint");

		// set up the water quality object

		WaterQuality waterQuality = new WaterQuality();

		// store data for the fields in the waterQuality object

		waterQuality.setSampleDate(SampleDate);
		waterQuality.setSampledBy(SampledBy);
		waterQuality.setSiteCondition(SiteCondition);
		waterQuality.setPH(PH);
		waterQuality.setConductivity(Conductivity);
		waterQuality.setDissolvedOxygen(DissolvedOxygen);
		waterQuality.setTemperature(Temperature);
		waterQuality.setTurbidity(Turbidity);
		waterQuality.setStage(Stage);
		waterQuality.setFecalColiform(FecalColiform);
		waterQuality.setEcoli(Ecoli);
		waterQuality.setHardness(Hardness);
		waterQuality.setTotalP(TotalP);
		waterQuality.setTotaln(Totaln);
		waterQuality.setTss(Tss);
		waterQuality.setArsenic(Arsenic);
		waterQuality.setCopper(Copper);
		waterQuality.setLead(Lead);
		waterQuality.setZinc(Zinc);
		waterQuality.setSitename(Sitename);
		waterQuality.setSitepoint(Sitepoint);

		// Setting up the add Query object for Water Quality
		AddQuery addQuery = new AddQuery();
		addQuery.doAdd(waterQuality);

		// pass on the object to the view data url
		String url = "/viewData";

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
