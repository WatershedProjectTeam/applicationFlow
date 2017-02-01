package dbhelpers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dbhelpers.dao.ConnectionBuilder;
import model.WaterQuality;

public class ViewQuery {

	public ViewQuery() {
		// TODO Auto-generated constructor stub
	}

	public List<WaterQuality> getWaterQualities() throws SQLException {
		List<WaterQuality> waterQualities = new ArrayList<>();

		Connection connection = ConnectionBuilder.connect();
		String query = "select `SAMPLE_DATE`, `SAMPLED_BY`, `SITE_CONDITION`,`PH`,`CONDUCTIVITY`,`DISSOLVED_OXYGEN`,`TEMPERATURE`,`TURBIDITY`,`STAGE`,`FECAL_COLIFORM`,`E_COLI`,`HARDNESS`,`TOTAL_P`,`TOTAL_N`,`TSS`,`ARSENIC`,`COPPER`,`LEAD`,`ZINC`,`SITE_NAME`,`SITE_POINT`  from WATER_QUALITY";

		PreparedStatement ps = connection.prepareStatement(query);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			WaterQuality waterQuality = new WaterQuality();

			waterQuality.setSampleDate(rs.getString(1));
			waterQuality.setSampledBy(rs.getString(2));
			waterQuality.setSiteCondition(rs.getString(3));
			waterQuality.setPH(rs.getString(4));
			waterQuality.setConductivity(rs.getString(5));
			waterQuality.setDissolvedOxygen(rs.getString(6));
			waterQuality.setTemperature(rs.getString(7));
			waterQuality.setTurbidity(rs.getString(8));
			waterQuality.setStage(rs.getString(9));
			waterQuality.setFecalColiform(rs.getString(10));
			waterQuality.setEcoli(rs.getString(11));
			waterQuality.setHardness(rs.getString(12));
			waterQuality.setTotalP(rs.getString(13));
			waterQuality.setTotaln(rs.getString(14));
			waterQuality.setTss(rs.getString(15));
			waterQuality.setArsenic(rs.getString(16));
			waterQuality.setCopper(rs.getString(17));
			waterQuality.setLead(rs.getString(18));
			waterQuality.setZinc(rs.getString(19));
			waterQuality.setSitename(rs.getString(20));
			waterQuality.setSitepoint(rs.getString(21));

			// create the object to hold the values from the db
			waterQualities.add(waterQuality);
		}
		ConnectionBuilder.disconnect();

		// returns the object that holds the values
		return waterQualities;

	}
}
