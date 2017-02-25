package dbhelpers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import dbhelpers.dao.ConnectionBuilder;
import model.MonitoringPoint;;
/**
 * @author gfalk
 *
 */
public class UpdateQueryMP {

	// Query the DB to update water quality data

	public void doUpdate(MonitoringPoint monitoringPoint) {		

	                   																																																																																																																																																																																																																																															   	
		String query = "UPDATE MONITORING_POINT SET SITE_NAME = ?, SITE_POINT=?, LOCATION_LATITUDE =?, LOCATION_LONGITUDE=?, DESCRIPTION=?, SITE_USE=? WHERE SITE_NAME=? AND SITE_POINT=?"; 		
				
		Connection connection = ConnectionBuilder.connect();
		try {
			// create java preparedstatement using a sql update query
			PreparedStatement ps = connection.prepareStatement(query);

/*			*****Debug			
     		System.out.println("UpdateQuery Before setString !! S I T E      N A M E = " + monitoringPoint.getSiteName());
    		System.out.println("UpdateQuery Before setString !! S I T E     P O I N T = " + monitoringPoint.getSitePoint());
*/
    		
			ps.setString(1, monitoringPoint.getSiteName());
			ps.setString(2, monitoringPoint.getSitePoint());
			ps.setString(3, monitoringPoint.getLatitude());
			ps.setString(4, monitoringPoint.getLongitude());
			ps.setString(5, monitoringPoint.getDescription());
			ps.setString(6, monitoringPoint.getSiteUse());
            ps.setString(7, monitoringPoint.getSiteName());
            ps.setString(8, monitoringPoint.getSitePoint());

 /*			*****Debug            
    		String psQuerySQL = ps.toString();    		
    		int rowsUpdated = ps.executeUpdate();            
            
            System.out.println("UpdateQuery After setString !! S A M P L E   D A T E = " + monitoringPoint.getSiteName());
    		System.out.println("UpdateQuery After setString !! S I T E     P O I N T = " + monitoringPoint.getSitePoint());
   		    		    		
    		if (rowsUpdated > 0) {
    		    System.out.println("A site was updated successfully!");
    		}

    		System.out.println("The SQL Query = " + psQuerySQL);
    		System.out.println("The number of rows updated = " + rowsUpdated);
*/
    		System.out.println(ps.executeUpdate());

    		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		ConnectionBuilder.disconnect();
	}

}