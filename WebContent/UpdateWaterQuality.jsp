<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="model.WaterQuality" %>    
<%@page import="model.MonitoringPoint" %>      
<% WaterQuality waterquality = (WaterQuality)request.getAttribute("waterquality"); %>       
<% MonitoringPoint monitoringpoint = (MonitoringPoint)request.getAttribute("monitoringpoint"); %>        
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Watershed UGA Data Management Portal</title>

    <!-- Bootstrap core CSS -->
    <link href="bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="stylesheet.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js" 
 	integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="	  
	crossorigin="anonymous"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
  <div id="custom-bootstrap-menu" class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header"><a class="navbar-brand" href="#">Watershed UGA Data Management</a>
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-menubuilder"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
            </button>
        </div>
        <div class="collapse navbar-collapse navbar-menubuilder">
            <ul class="nav navbar-nav navbar-left">
                <li><a href="HomePage.html">Home</a>
                </li>
                <li class="dropdown"><a data-toggle="dropdown" class="dropdown-toggle">View Data<b class="caret"></b></a>
                	<ul class="dropdown-menu">
            		<li><a href="viewData">View Water Quality Data</a></li>
           			<li><a href="viewMonitor">View Monitoring Point Data</a></li>
        			</ul>
                </li>
                <li class="dropdown"> <a href="addData" data-toggle="dropdown" class="dropdown-toggle">Add Data<b class="caret"></b></a>
                	<ul class="dropdown-menu">
            		<li><a href="addData">Add Water Quality Data</a></li>
           			<li><a href="AddMonitorPoint.jsp">Add Monitoring Point</a></li>
        			</ul>
                </li>
           
                <li><a href="https://watershed.uga.edu/">Watershed UGA</a>
                </li>
                <li><a href="Login.jsp">Login</a>
                </li>
            </ul>
        </div>
    </div>
 </div>
 <div class="header-image">
	<p><img src="trailcreek.jpg" width="100%" height="auto"></p>
 </div>
    

      <div id="heading" class="page">
        <h1> Update Water Quality Data </h1>
       
    
        <p>Faculty, staff and students have been collecting data on UGA's streams. <br>Please use the below form to update data to the database.
         </p><br>
      </div> 
      
     <div class ="addform">

<form  name=updateForm action=UpdateData method=post>

<c:forEach items="${WATERQUALITIES}" var="waterQuality">
<div class="row">


<div class="col-xs-6 form-group">
<label> Sample Date :</label>
<input class="form-control" type = "text" name = "SampleDate" value="${waterQuality.getSampleDate()}" />

</div>

<div class="col-xs-6 form-group">
<label> Sampled By :</label>
<input class="form-control" type = "text" name = SampledBy value="${waterQuality.getSampledBy()}" />

</div>
<div class="col-xs-6 form-group">
<label> Site Condition :</label>
<input class="form-control" type = "text" name =SiteCondition value="${waterQuality.getSiteCondition()}" />
</div>

<div class="col-xs-6 form-group">
<label> PH :</label>
<input class="form-control" type = text name =PH value="${waterQuality.getPH()}" />
</div>

<div class="col-xs-6 form-group">
<label> Conductivity :</label>
<input class="form-control" type = text name =Conductivity value="${waterQuality.getConductivity()}" />
</div>

<div class="col-xs-6 form-group">
<label> Dissolved Oxygen :</label>
<input class="form-control" type = text name =DissolvedOxygen value="${waterQuality.getDissolvedOxygen()}" />
</div>

<div class="col-xs-6 form-group">
<label> Temperature:</label>
<input class="form-control" type = text name =Temperature value="${waterQuality.getTemperature()}" />
</div>

<div class="col-xs-6 form-group">
<label> TURBIDITY :</label>
<input class="form-control" type = text name =Turbidity value="${waterQuality.getTurbidity()}" />
</div>

<div class="col-xs-6 form-group">
<label> STAGE :</label>
<input class="form-control" type = text name =Stage value="${waterQuality.getStage()}" />
</div>

<div class="col-xs-6 form-group">
<label> FECAL COLIFORM :</label>
<input class="form-control" type = text name =FecalColiform value="${waterQuality.getFecalColiform()}" />
</div>

<div class="col-xs-6 form-group">
<label> ECOLI :</label>
<input class="form-control" type = text name =Ecoli value="${waterQuality.getEcoli()}" />
</div>

<div class="col-xs-6 form-group">
<label> HARDNESS :</label>
<input class="form-control" type = text name =Hardness value="${waterQuality.getHardness()}" />
</div>

<div class="col-xs-6 form-group">
<label> TOTAL-P :</label>
<input class="form-control" type = text name =TotalP  value="${waterQuality.getTotalP()}" />
</div>

<div class="col-xs-6 form-group">
<label> TOTAL-N:</label>
<input class="form-control" type = text name =Totaln  value="${waterQuality.getTotaln()}" />
</div>

<div class="col-xs-6 form-group">
<label> TSS :</label>
<input class="form-control" type = text name =Tss  value="${waterQuality.getTss()}" />
</div>

<div class="col-xs-6 form-group">
<label> ARSENIC :</label>
<input class="form-control" type = text name =Arsenic value="${waterQuality.getArsenic()}" />
</div>

<div class="col-xs-6 form-group">
<label> COPPER :</label>
<input class="form-control" type = text name =Copper  value="${waterQuality.getCopper()}" />
</div>

<div class="col-xs-6 form-group">
<label> Lead :</label>
<input class="form-control" type = text name =Lead value="${waterQuality.getLead()}" />
</div>

<div class="col-xs-6 form-group">
<label> Zinc :</label>
<input class="form-control" type = text name =Zinc value="${waterQuality.getZinc()}" />
</div>

<div class="col-xs-6 form-group">
<label> 1_1_2_2_TETRACHLOROETHENE :</label>
<input class="form-control" type = text name =TETRACHLOROETHENE value="${waterQuality.getTETRACHLOROETHENE()}" />
</div>

<div class="col-xs-6 form-group">
<label> 1_1_1_TRICHLOROETHANE:</label>
<input class="form-control" type = text name =TRICHLOROETHANE value="${waterQuality.getTRICHLOROETHANE()}" />
</div>

<div class="col-xs-6 form-group">
<label> 1_1_2_TRICHLOROETHANE:</label>
<input class="form-control" type = text name =TRICHLOROETHANEa value="${waterQuality.getTRICHLOROETHANEa()}" />
</div>

<div class="col-xs-6 form-group">
<label> 1_1_DICHLOROETHANE :</label>
<input class="form-control" type = text name =DICHLOROETHANE value="${waterQuality.getDICHLOROETHANE()}" />
</div>

<div class="col-xs-6 form-group">
<label> 1_1_DICHLOROETHENE :</label>
<input class="form-control" type = text name =DICHLOROETHENEa value="${waterQuality.getDICHLOROETHENEa()}" />
</div>

<div class="col-xs-6 form-group">
<label> 1_2_DICHLOROBENZENE :</label>
<input class="form-control" type = text name =DICHLOROBENZENE value="${waterQuality.getDICHLOROBENZENE()}" />
</div>

<div class="col-xs-6 form-group">
<label> 1_2_DICHLOROETHANE:</label>
<input class="form-control" type = text name =DICHLOROETHANEa value="${waterQuality.getDICHLOROETHANEa()}" />
</div>

<div class="col-xs-6 form-group">
<label> 1_2_DICHLOROPROPANE :</label>
<input class="form-control" type = text name =DICHLOROPROPANE value="${waterQuality.getDICHLOROPROPANE()}" />
</div>

<div class="col-xs-6 form-group">
<label> 1_2_DIMETHYLBENZENE :</label>
<input class="form-control" type = text name =DIMETHYLBENZENEa value="${waterQuality.getDIMETHYLBENZENEa()}" />
</div>

<div class="col-xs-6 form-group">
<label> 1_3_DICHLOROBENZENE :</label>
<input class="form-control" type = text name =DICHLOROBENZENEb value="${waterQuality.getDICHLOROBENZENEb()}" />
</div>

<div class="col-xs-6 form-group">
<label> 1_4_DICHLOROBENZENE :</label>
<input class="form-control" type = text name =DICHLOROBENZENEc value="${waterQuality.getDICHLOROBENZENEc()}" />
</div>

<div class="col-xs-6 form-group">
<label> 2_CHLOROETHYL_VINYL_ETHER :</label>
<input class="form-control" type = text name =CHLOROETHYLVINYLETHER value="${waterQuality.getCHLOROETHYLVINYLETHER()}" />
</div>

<div class="col-xs-6 form-group">
<label> ACROLEIN :</label>
<input class="form-control" type = text name =ACROLEIN value="${waterQuality.getACROLEIN()}" />
</div>

<div class="col-xs-6 form-group">
<label> ACRYLONITRILE :</label>
<input class="form-control" type = text name =ACRYLONITRILE value="${waterQuality.getACRYLONITRILE()}" />
</div>

<div class="col-xs-6 form-group">
<label> BENZENE :</label>
<input class="form-control" type = text name =BENZENE value="${waterQuality.getBENZENE()}" />
</div>

<div class="col-xs-6 form-group">
<label> BROMODICHLOROMETHANE :</label>
<input class="form-control" type = text name =BROMODICHLOROMETHANE value="${waterQuality.getBROMODICHLOROMETHANE()}" />
</div>

<div class="col-xs-6 form-group">
<label> BROMOFORM :</label>
<input class="form-control" type = text name =BROMOFORM value="${waterQuality.getBROMOFORM()}" />
</div>

<div class="col-xs-6 form-group">
<label> BROMOMETHANE :</label>
<input class="form-control" type = text name =BROMOMETHANE value="${waterQuality.getBROMOMETHANE()}" />
</div>

<div class="col-xs-6 form-group">
<label> CARBONTETRACHLORIDE :</label>
<input class="form-control" type = text name =CARBONTETRACHLORIDE value="${waterQuality.getCARBONTETRACHLORIDE()}" />
</div>

<div class="col-xs-6 form-group">
<label> CHLOROBENZENE :</label>
<input class="form-control" type = text name =CHLOROBENZENE value="${waterQuality.getCHLOROBENZENE()}" />
</div>

<div class="col-xs-6 form-group">
<label> CHLOROETHANEa :</label>
<input class="form-control" type = text name =CHLOROETHANEa value="${waterQuality.getCHLOROETHANEa()}" />
</div>

<div class="col-xs-6 form-group">
<label> CHLOROFORM :</label>
<input class="form-control" type = text name =CHLOROFORM value="${waterQuality.getCHLOROFORM()}" />
</div>

<div class="col-xs-6 form-group">
<label> CHLOROMETHANE :</label>
<input class="form-control" type = text name =CHLOROMETHANE value="${waterQuality.getCHLOROMETHANE()}" />
</div>

<div class="col-xs-6 form-group">
<label> CIS_1_3_DICHLOROPROPENE :</label>
<input class="form-control" type = text name =CISDICHLOROPROPENE value="${waterQuality.getCISDICHLOROPROPENE()}" />
</div>

<div class="col-xs-6 form-group">
<label> DIBROMOCHLOROMETHANE :</label>
<input class="form-control" type = text name =DIBROMOCHLOROMETHANE value="${waterQuality.getDIBROMOCHLOROMETHANE()}" />
</div>

<div class="col-xs-6 form-group">
<label> ETHYLBENZENE :</label>
<input class="form-control" type = text name =ETHYLBENZENE value="${waterQuality.getETHYLBENZENE()}" />
</div>

<div class="col-xs-6 form-group">
<label> METHYLENECHLORIDE :</label>
<input class="form-control" type = text name =METHYLENECHLORIDE value="${waterQuality.getMETHYLENECHLORIDE()}" />
</div>

<div class="col-xs-6 form-group">
<label> TETRACHLOROETHENEPCE :</label>
<input class="form-control" type = text name =TETRACHLOROETHENEPCE value="${waterQuality.getTETRACHLOROETHENEPCE()}" />
</div>

<div class="col-xs-6 form-group">
<label> TOLUENE :</label>
<input class="form-control" type = text name =TOLUENE value="${waterQuality.getTOLUENE()}" />
</div>

<div class="col-xs-6 form-group">
<label> TRANS_1_2_DICHLOROETHENE :</label>
<input class="form-control" type = text name =TRANSDICHLOROETHENEa value="${waterQuality.getTRANSDICHLOROETHENEa()}" />
</div>

<div class="col-xs-6 form-group">
<label> TRANS_1_3_DICHLOROPROPENE :</label>
<input class="form-control" type = text name =TRANSDICHLOROPROPENEbnc value="${waterQuality.getTRANSDICHLOROPROPENEb()}" />
</div>

<div class="col-xs-6 form-group">
<label> TRICHLOROETHENE_TCE :</label>
<input class="form-control" type = text name =TRICHLOROETHENE_TCE value="${waterQuality.getTRICHLOROETHENETCE()}" />
</div>

<div class="col-xs-6 form-group">
<label> TRICHLOROFLUOROMETHANE_FREON_11 :</label>
<input class="form-control" type = text name =TRICHLOROFLUOROMETHANEFREON value="${ waterQuality.getTRICHLOROFLUOROMETHANEFREON()}" />
</div>

<div class="col-xs-6 form-group">
<label> VINYL_CHLORIDE :</label>
<input class="form-control" type = text name =VINYLCHLORIDE value="${ waterQuality.getVINYLCHLORIDE()}" />
</div>

<div class="col-xs-6 form-group">
<label> XYLENES_MP :</label>
<input class="form-control" type = text name =XYLENES_MP value="${ waterQuality.getXYLENES_MP()}" />
</div>

<div class="col-xs-6 form-group">
<label>Site Name: </label>
<input class="form-control" type=text name=SiteName	value="${waterQuality.getSitename()}"  readonly="readonly" />   <!-- Key value - not editable -->
</div>


<div class="col-xs-6 form-group">
<label>Site Name: </label>
<input class="form-control" type=text name=SitePoint value="${waterQuality.getSitepoint()}"  readonly="readonly" />   <!-- Key value - not editable -->
</div>


<!-- Comment out updates to key values


<div class="col-xs-6 form-group">
<label> Site Name :</label>
 <select  class="form-control" id="siteNameOptions" name= Site >
<c:forEach items="${MONITORINGPOINTS}" var="monitoringPoint" varStatus="loop">
	<option Value = "${monitoringPoint.getSiteName() }"> ${monitoringPoint.getSiteName() }</option>
  </c:forEach>
</select>
  <br/>
<script type="text/javascript">
$(document).on("onchange", "#siteNameOptions", function() {  // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
    $.get("sitePoints?siteName=Tanyard Creek", function(responseJson) {    // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response JSON...
      //  var $ul = $("<option value='").appendTo($("#sitePointOptions")); // Create HTML <ul> element and append it to HTML DOM element with ID "somediv".
        $.each(responseJson, function(index, item) { // Iterate over the JSON array.
            $("<option>").text(item).appendTo($("#sitePointOptions"));      // Create HTML <li> element, set its text content with currently iterated item and append it to the <ul>.
        });
    });
});
</script>
</div>

<div class="col-xs-6 form-group">
<label> Site Point :</label>
<select  class="form-control" id="sitePointOptions" name= "Sitepoint" >
<option value ="MP-3" > MP-3 </option>
<option value ="MP-10" > MP-10 </option>
<option value ="MP-8" > MP-8 </option>
<option value ="MS4-2" > MS4-2 </option>
<option value ="MS4-3" > MS4-3 </option>
<option value ="MS4-4b" > MS4-4b </option>
<option value ="MS4-4c">MS4-4c </option>
<option value ="MS4-8">MS4-8 </option>
<option value ="MP-1">MP-1 </option>
<option value ="MP-6">MP-6 </option>
<option value ="TestP1">TestP1 </option>
		
</select>

</div>

END Comment out updates to key values -->
 
 
</div>
</c:forEach>
<input type =submit name =submit value="Update Data"/>
</form>
</div>
   
    
   
	
	<div class="footer">
		<p>Watershed UGA 2017 <br><img src="georgia.png" alt="" width="70px" height="auto" /> </p>
		
	</div>	


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
    <!--Included to ensure the mobile drop down menu works properly -->
    <script src="http://code.jquery.com/jquery-latest.min.js"></script> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  </body>
</html>


