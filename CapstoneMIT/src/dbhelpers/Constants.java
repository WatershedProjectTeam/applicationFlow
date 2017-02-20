package dbhelpers;

public class Constants {
	public static final String dbName = "watershed";
	public static final String uname = "root";
	public static final String pwd = "root";
	public static final String url = "jdbc:mysql://localhost:3306/";
	public static final String serverCert = "?verifyServerCertificate=false&useSSL=true";	// 20170203 Code added to correct Warning about SSL connection when connecting to MySQL database
}
