package dbhelpers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import dbhelpers.dao.ConnectionBuilder;
import model.WaterQuality;
/**
 * @author gfalk
 *
 */
public class UpdateQuery {

	// Query the DB to update water quality data

	public void doUpdate(WaterQuality waterQuality) {		

	                   																																																																																																																																																																																																																																															   	
		String query = "UPDATE WATER_QUALITY SET SAMPLE_DATE = ?, SAMPLED_BY=?, SITE_CONDITION =?, PH=?, CONDUCTIVITY=?, DISSOLVED_OXYGEN=?, TEMPERATURE=?,TURBIDITY=?,STAGE=?,FECAL_COLIFORM=?,E_COLI=?,HARDNESS=?,TOTAL_P=?,TOTAL_N=?,TSS=?,ARSENIC=?,COPPER=?,LEAD=?,ZINC=?,	1_1_2_2_tetrachloroethene=?, 1_1_1_trichloroethane=?, 1_1_2_trichloroethane=?, 1_1_dichloroethane = ?, 1_1_dichloroethene = ?, 1_2_dichlorobenzene =?, 1_2_dichloroethane = ?, 1_2_dichloropropane =?, 1_2_dimethylbenzene =?, 1_3_dichlorobenzene =?, 1_4_dichlorobenzene =?, 2_chloroethyl_vinyl_ether =?, ACROLEIN=?,ACRYLONITRILE=?,BENZENE=?, BROMODICHLOROMETHANE=?,BROMOFORM  = ?, BROMOMETHANE  = ?, CARBON_TETRACHLORIDE  = ?, CHLOROBENZENE  = ?, CHLOROETHANE  = ?, CHLOROFORM  = ?, CHLOROMETHANE  = ?, CIS_1_3_DICHLOROPROPENE  = ?, DIBROMOCHLOROMETHANE  = ?, ETHYLBENZENE  = ?, METHYLENE_CHLORIDE  = ?, TETRACHLOROETHENE_PCE  = ?, TOLUENE  = ?, TRANS_1_2_DICHLOROETHENE  = ?, TRANS_1_3_DICHLOROPROPENE  = ?, TRICHLOROETHENE_TCE  = ?,	TRICHLOROFLUOROMETHANE_FREON_11  = ?, VINYL_CHLORIDE  = ?, XYLENES_MP  = ?, SITE_NAME = ?, SITE_POINT=? WHERE SAMPLE_DATE=? AND SITE_POINT=?"; 		
				
		Connection connection = ConnectionBuilder.connect();
		try {
			// create java preparedstatement using a sql update query
			PreparedStatement ps = connection.prepareStatement(query);

//			*****Debug
    		System.out.println("UpdateQuery Before setString !! S A M P L E   D A T E = " + waterQuality.getSampleDate());
    		System.out.println("UpdateQuery Before setString !! S I T E     P O I N T = " + waterQuality.getSitepoint());
//
    		
			ps.setString(1, waterQuality.getSampleDate());
			ps.setString(2, waterQuality.getSampledBy());
			ps.setString(3, waterQuality.getSiteCondition());
			ps.setString(4, waterQuality.getPH());
			ps.setString(5, waterQuality.getConductivity());
			ps.setString(6, waterQuality.getDissolvedOxygen());
			ps.setString(7, waterQuality.getTemperature());
			ps.setString(8, waterQuality.getTurbidity());
			ps.setString(9, waterQuality.getStage());
			ps.setString(10, waterQuality.getFecalColiform());
			ps.setString(11, waterQuality.getEcoli());
			ps.setString(12, waterQuality.getHardness());
			ps.setString(13, waterQuality.getTotalP());
			ps.setString(14, waterQuality.getTotaln());
			ps.setString(15, waterQuality.getTss());
			ps.setString(16, waterQuality.getArsenic());
			ps.setString(17, waterQuality.getCopper());
			ps.setString(18, waterQuality.getLead());
			ps.setString(19, waterQuality.getZinc());
			ps.setString(20, waterQuality.getTETRACHLOROETHENE());
            ps.setString(21, waterQuality.getTRICHLOROETHANE());
            ps.setString(22, waterQuality.getTRICHLOROETHANEa());
            ps.setString(23, waterQuality.getDICHLOROETHANE());
            ps.setString(24, waterQuality.getDICHLOROETHENEa());
            ps.setString(25, waterQuality.getDICHLOROBENZENE());
            ps.setString(26, waterQuality.getDICHLOROETHANEa());
            ps.setString(27, waterQuality.getDICHLOROPROPANE());
            ps.setString(28, waterQuality.getDIMETHYLBENZENEa());
            ps.setString(29, waterQuality.getDICHLOROBENZENEb());
            ps.setString(30, waterQuality.getDICHLOROBENZENEc());
            ps.setString(31, waterQuality.getCHLOROETHYLVINYLETHER());
            ps.setString(32, waterQuality.getACROLEIN());
            ps.setString(33, waterQuality.getACRYLONITRILE());
            ps.setString(34, waterQuality.getBENZENE());
            ps.setString(35, waterQuality.getBROMODICHLOROMETHANE());
            ps.setString(36, waterQuality.getBROMOFORM());
            ps.setString(37, waterQuality.getBROMOMETHANE());
            ps.setString(38, waterQuality.getCARBONTETRACHLORIDE());
            ps.setString(39, waterQuality.getCHLOROBENZENE());
            ps.setString(40, waterQuality.getCHLOROETHANEa());
            ps.setString(41, waterQuality.getCHLOROFORM());
            ps.setString(42, waterQuality.getCHLOROMETHANE());
            ps.setString(43, waterQuality.getCISDICHLOROPROPENE());
            ps.setString(44, waterQuality.getDIBROMOCHLOROMETHANE());
            ps.setString(45, waterQuality.getETHYLBENZENE());
            ps.setString(46, waterQuality.getMETHYLENECHLORIDE());
            ps.setString(47, waterQuality.getTETRACHLOROETHENEPCE());
            ps.setString(48, waterQuality.getTOLUENE());
            ps.setString(49, waterQuality.getTRANSDICHLOROETHENEa());
            ps.setString(50, waterQuality.getTRANSDICHLOROPROPENEb());
            ps.setString(51, waterQuality.getTRICHLOROETHENETCE());
            ps.setString(52, waterQuality.getTRICHLOROFLUOROMETHANEFREON());
            ps.setString(53, waterQuality.getVINYLCHLORIDE());
            ps.setString(54, waterQuality.getXYLENES_MP());
            ps.setString(55, waterQuality.getSitename());
            ps.setString(56, waterQuality.getSitepoint());
            ps.setString(57, waterQuality.getSampleDate());
            ps.setString(58, waterQuality.getSitepoint());

    		String psQuerySQL = ps.toString();    		
    		int rowsInserted = ps.executeUpdate();            
            
/*			*****Debug            
    		System.out.println("UpdateQuery After setString !! X Y L E N E S = " + waterQuality.getXYLENES_MP());
            System.out.println("UpdateQuery After setString !! S A M P L E   D A T E = " + waterQuality.getSampleDate());
    		System.out.println("UpdateQuery After setString !! S I T E     P O I N T = " + waterQuality.getSitepoint());
   		    		    		
    		if (rowsInserted > 0) {
    		    System.out.println("A new user was inserted successfully!");
    		}

    		System.out.println("The SQL Query = " + psQuerySQL);
    		System.out.println("The number of rows inserted = " + rowsInserted);
			System.out.println(ps.executeUpdate());
*/
    		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		ConnectionBuilder.disconnect();
	}

}