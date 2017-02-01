package model;

public class WaterQuality {

	private String SampleDate;
	private String SampledBy;
	private String SiteCondition;
	private String PH;
	private String Conductivity;
	private String DissolvedOxygen;
	private String Temperature;
	private String Turbidity;
	private String Stage;
	private String FecalColiform;
	private String Ecoli;
	private String Hardness;
	private String TotalP;
	private String Totaln;
	private String Tss;
	private String Arsenic;
	private String Copper;
	private String Lead;
	private String Zinc;
	private String Sitename;
	private String Sitepoint;

	public WaterQuality(String SampleDate, String SampledBy, String SiteCondition, String PH, String Conductivity,
			String DissolvedOxygen, String Temperature, String Turbidity, String Stage, String FecalColiform,
			String Ecoli, String Hardness, String TotalP, String Totaln, String Tss, String Arsenic, String Copper,
			String Lead, String Zinc, String Sitename, String sitepoint) {

		this.SampleDate = SampleDate;
		this.SampledBy = SampledBy;
		this.SiteCondition = SiteCondition;
		this.PH = PH;
		this.Conductivity = Conductivity;
		this.DissolvedOxygen = DissolvedOxygen;
		this.Temperature = Temperature;
		this.Turbidity = Turbidity;
		this.Stage = Stage;
		this.FecalColiform = FecalColiform;
		this.Ecoli = Ecoli;
		this.Hardness = Hardness;
		this.TotalP = TotalP;
		this.Totaln = Totaln;
		this.Tss = Tss;
		this.Arsenic = Arsenic;
		this.Copper = Copper;
		this.Lead = Lead;
		this.Zinc = Zinc;
		this.Sitename = Sitename;
		this.Sitepoint = Sitepoint;

	}

	public WaterQuality() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @return the sampleDate
	 */
	public String getSampleDate() {
		return SampleDate;
	}

	/**
	 * @param sampleDate
	 *            the sampleDate to set
	 */
	public void setSampleDate(String sampleDate) {
		SampleDate = sampleDate;
	}

	/**
	 * @return the sampledBy
	 */
	public String getSampledBy() {
		return SampledBy;
	}

	/**
	 * @param sampledBy
	 *            the sampledBy to set
	 */
	public void setSampledBy(String sampledBy) {
		SampledBy = sampledBy;
	}

	/**
	 * @return the siteCondition
	 */
	public String getSiteCondition() {
		return SiteCondition;
	}

	/**
	 * @param siteCondition
	 *            the siteCondition to set
	 */
	public void setSiteCondition(String siteCondition) {
		SiteCondition = siteCondition;
	}

	/**
	 * @return the pH
	 */
	public String getPH() {
		return PH;
	}

	/**
	 * @param pH
	 *            the pH to set
	 */
	public void setPH(String pH) {
		PH = pH;
	}

	/**
	 * @return the conductivity
	 */
	public String getConductivity() {
		return Conductivity;
	}

	/**
	 * @param conductivity
	 *            the conductivity to set
	 */
	public void setConductivity(String conductivity) {
		Conductivity = conductivity;
	}

	/**
	 * @return the DissolvedOxygen
	 */
	public String getDissolvedOxygen() {
		return DissolvedOxygen;
	}

	/**
	 * @param DissolvedOxygen
	 *            the DissolvedOxygen to set
	 */
	public void setDissolvedOxygen(String dissolvedoxygen) {
		DissolvedOxygen = dissolvedoxygen;
	}

	/**
	 * @return the temperature
	 */
	public String getTemperature() {
		return Temperature;
	}

	/**
	 * @param temperature
	 *            the temperature to set
	 */
	public void setTemperature(String temperature) {
		Temperature = temperature;
	}

	/**
	 * @return the turbidity
	 */
	public String getTurbidity() {
		return Turbidity;
	}

	/**
	 * @param turbidity
	 *            the turbidity to set
	 */
	public void setTurbidity(String turbidity) {
		Turbidity = turbidity;
	}

	/**
	 * @return the stage
	 */
	public String getStage() {
		return Stage;
	}

	/**
	 * @param stage
	 *            the stage to set
	 */
	public void setStage(String stage) {
		Stage = stage;
	}

	/**
	 * @return the fecalColiform
	 */
	public String getFecalColiform() {
		return FecalColiform;
	}

	/**
	 * @param fecalColiform
	 *            the fecalColiform to set
	 */
	public void setFecalColiform(String fecalColiform) {
		FecalColiform = fecalColiform;
	}

	/**
	 * @return the ecoli
	 */
	public String getEcoli() {
		return Ecoli;
	}

	/**
	 * @param ecoli
	 *            the ecoli to set
	 */
	public void setEcoli(String ecoli) {
		Ecoli = ecoli;
	}

	/**
	 * @return the hardness
	 */
	public String getHardness() {
		return Hardness;
	}

	/**
	 * @param hardness
	 *            the hardness to set
	 */
	public void setHardness(String hardness) {
		Hardness = hardness;
	}

	/**
	 * @return the totalP
	 */
	public String getTotalP() {
		return TotalP;
	}

	/**
	 * @param totalP
	 *            the totalP to set
	 */
	public void setTotalP(String totalP) {
		TotalP = totalP;
	}

	/**
	 * @return the totaln
	 */
	public String getTotaln() {
		return Totaln;
	}

	/**
	 * @param totaln
	 *            the totaln to set
	 */
	public void setTotaln(String totaln) {
		Totaln = totaln;
	}

	/**
	 * @return the tss
	 */
	public String getTss() {
		return Tss;
	}

	/**
	 * @param tss
	 *            the tss to set
	 */
	public void setTss(String tss) {
		Tss = tss;
	}

	/**
	 * @return the arsenic
	 */
	public String getArsenic() {
		return Arsenic;
	}

	/**
	 * @param arsenic
	 *            the arsenic to set
	 */
	public void setArsenic(String arsenic) {
		Arsenic = arsenic;
	}

	/**
	 * @return the copper
	 */
	public String getCopper() {
		return Copper;
	}

	/**
	 * @param copper
	 *            the copper to set
	 */
	public void setCopper(String copper) {
		Copper = copper;
	}

	/**
	 * @return the lead
	 */
	public String getLead() {
		return Lead;
	}

	/**
	 * @param lead
	 *            the lead to set
	 */
	public void setLead(String lead) {
		Lead = lead;
	}

	/**
	 * @return the zinc
	 */
	public String getZinc() {
		return Zinc;
	}

	/**
	 * @param zinc
	 *            the zinc to set
	 */
	public void setZinc(String zinc) {
		Zinc = zinc;
	}

	/**
	 * @return the sitename
	 */
	public String getSitename() {
		return Sitename;
	}

	/**
	 * @param sitename
	 *            the sitename to set
	 */
	public void setSitename(String sitename) {
		Sitename = sitename;
	}

	/**
	 * @return the sitepoint
	 */
	public String getSitepoint() {
		return Sitepoint;
	}

	/**
	 * @param sitepoint
	 *            the sitepoint to set
	 */
	public void setSitepoint(String sitepoint) {
		this.Sitepoint = sitepoint;
	}

}
