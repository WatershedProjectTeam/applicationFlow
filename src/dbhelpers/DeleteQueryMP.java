/**
 * 
 */
package dbhelpers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import dbhelpers.dao.ConnectionBuilder;

/**
 * @author gfalk
 *
 */
public class DeleteQueryMP {
	
//	 private Connection connection;
	
	public DeleteQueryMP(){
	
	}
	
	public void doDelete(String siteName, String sitePoint){
		Connection connection = ConnectionBuilder.connect();
		
		// set up a String to hold our query
		String query = "DELETE from monitoring_point  WHERE SITE_NAME=? AND SITE_POINT=?";
		
		// create a preparestatement using our query string
		try {
			PreparedStatement ps = connection.prepareStatement(query);
			
			// fill in the preparedstatement
			ps.setString(1, siteName);
            ps.setString(2, sitePoint);
			
			// execute the query
			ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		// System.out.println("Goodbye Delete Query!! " + sampleDate); *****Debug
	}
	
}
