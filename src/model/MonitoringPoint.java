package model;

public class MonitoringPoint {

	private String SiteName;
	private String SitePoint;
	private String Latitude;
	private String Longitude;
	private String Description;
	private String SiteUse;

	/**
	 * @param siteName
	 * @param sitePoint
	 * @param latitiude
	 * @param longitute
	 * @param description
	 * @param siteUse
	 */
	public MonitoringPoint(String siteName, String sitePoint, String latitude, String longitude, String description,
			String siteUse) {
		SiteName = siteName;
		SitePoint = sitePoint;
		Latitude = latitude;
		Longitude = longitude;
		Description = description;
		SiteUse = siteUse;
	}

	public MonitoringPoint() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @return the siteName
	 */
	public String getSiteName() {
		return SiteName;
	}

	/**
	 * @param siteName
	 *            the siteName to set
	 */
	public void setSiteName(String siteName) {
		SiteName = siteName;
	}

	/**
	 * @return the sitePoint
	 */
	public String getSitePoint() {
		return SitePoint;
	}

	/**
	 * @param sitePoint
	 *            the sitePoint to set
	 */
	public void setSitePoint(String sitePoint) {
		SitePoint = sitePoint;
	}

	/**
	 * @return the latitiude
	 */
	public String getLatitude() {
		return Latitude;
	}

	/**
	 * @param latitiude
	 *            the latitiude to set
	 */
	public void setLatitude(String latitude) {
		Latitude = latitude;
	}

	/**
	 * @return the longitute
	 */
	public String getLongitude() {
		return Longitude;
	}

	/**
	 * @param longitute
	 *            the longitute to set
	 */
	public void setLongitude(String longitude) {
		Longitude = longitude;
	}

	/**
	 * @return the description
	 */
	public String getDescription() {
		return Description;
	}

	/**
	 * @param description
	 *            the description to set
	 */
	public void setDescription(String description) {
		Description = description;
	}

	/**
	 * @return the siteUse
	 */
	public String getSiteUse() {
		return SiteUse;
	}

	/**
	 * @param siteUse
	 *            the siteUse to set
	 */
	public void setSiteUse(String siteUse) {
		SiteUse = siteUse;
	}

}
