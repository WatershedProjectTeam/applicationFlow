
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.WaterQuality,java.util.List" %>
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
<title>View Site Data</title>
	<!-- Bootstrap core CSS -->
    <link href="bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="stylesheet.css" rel="stylesheet">
    
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>
    
    
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
	<p><img src="trailcreek.jpg" width="100%" height="auto" ></p>
 </div>
 <div id="heading" class="page">
	<h1> ${sessionScope.name} Site Data </h1>
</div>
	

<div class = "table-responsive">
<table>
<thead>
<tr>
<th>Update</th>
<th>Delete</th>
<th>Sample Date</th>
<th>Sampled By</th>
<th>Site Condition</th>
<th>PH</th>
<th>Conductivity</th>
<th>Dissolved Oxygen</th>
<th>Temperature</th>
<th>Turbidity</th>
<th>Stage</th>
<th>Fecal Coliform</th>
<th>Ecoli</th>
<th>Hardness</th>
<th>TotalP</th>
<th>TotalN</th>
<th>Tss</th>
<th>Arsenic</th>
<th>Copper</th>
<th>Lead</th>
<th>Zinc</th>
<th>TETRACHLOROETHENE</th>
<th>TRICHLOROETHANE </th>
<th>TRICHLOROETHANEa </th>
 <th>DICHLOROETHANE</th>
<th>DICHLOROETHENEa</th>
<th>DICHLOROBENZENE</th>
<th>DICHLOROETHANEa</th>
<th>DICHLOROPROPANE</th>
<th>DIMETHYLBENZENEa</th>
<th>DICHLOROBENZENEb</th>
<th>DICHLOROBENZENEc</th>
<th>CHLOROETHYLVINYLETHER</th>
<th>ACROLEIN</th>
<th>ACRYLONITRILE</th>
<th>BENZENE</th>
<th>BROMODICHLOROMETHANE</th>
<th>BROMOFORM</th>
<th>BROMOMETHANE</th>
<th>CARBONTETRACHLORIDE</th>
<th>CHLOROBENZENE</th>
<th>CHLOROETHANEa</th>
<th>CHLOROFORM</th>
<th>CHLOROMETHANE</th>
<th>CISDICHLOROPROPENE</th>
<th>DIBROMOCHLOROMETHANE</th>
<th>ETHYLBENZENE</th>
<th>METHYLENECHLORIDE</th>
<th>TETRACHLOROETHENEPCE</th>
<th>TOLUENE</th>
<th>TRANSDICHLOROETHENEa</th>
<th>TRANSDICHLOROPROPENEb</th>
<th>TRICHLOROETHENETCE</th>
<th>TRICHLOROFLUOROMETHANEFREON</th>
<th>VINYLCHLORIDE</th>
<th>XYLENESMP</th>
<th>Site Name</th>
<th>Site Point</th>
</thead>
<tbody>  <c:forEach items="${WATERQUALITIES}" var="waterQuality" varStatus="loop">
    <tr>

    <td>
        <a href=<c:url value="updateGetData">
            <c:param name="SampleDate" value="${waterQuality.getSampleDate()}"/>
            <c:param name="SitePoint"  value="${waterQuality.getSitepoint()}"/>
        </c:url>><button type="button" >Update</button></a>
	</td>

    <td>
        <a href=<c:url value="DeleteData">
            <c:param name="SampleDate" value="${waterQuality.getSampleDate()}"/>
            <c:param name="SitePoint"  value="${waterQuality.getSitepoint()}"/>
        </c:url>><button type="button" onclick="return confirm('Are you sure you want to delete?');">Delete</button></a>
	</td>    
    
    <td><c:out value="${waterQuality.getSampleDate()}" /></td>
    <td><c:out value="${waterQuality.getSampledBy()}" /></td>
    <td><c:out value="${waterQuality.getSiteCondition()}" /></td>
    <td><c:out value="${waterQuality.getPH()}" /></td>
    <td><c:out value="${waterQuality.getConductivity()}" /></td>
    <td><c:out value="${waterQuality.getDissolvedOxygen()}" /></td>
    <td><c:out value="${waterQuality.getTemperature()}" /></td>
    <td><c:out value="${waterQuality.getTurbidity()}" /></td>
    <td><c:out value="${waterQuality.getStage()}" /></td>
    <td><c:out value="${waterQuality.getFecalColiform()}" /></td>
    <td><c:out value="${waterQuality.getEcoli()}" /></td>
    <td><c:out value="${waterQuality.getHardness()}" /></td>
    <td><c:out value="${waterQuality.getTotalP()}" /></td>
    <td><c:out value="${waterQuality.getTotaln()}" /></td>
    <td><c:out value="${waterQuality.getTss()}" /></td>
    <td><c:out value="${waterQuality.getArsenic()}" /></td>
    <td><c:out value="${waterQuality.getCopper()}" /></td>
    <td><c:out value="${waterQuality.getLead()}" /></td>
    <td><c:out value="${waterQuality.getZinc()}" /></td>
    <td><c:out value="${waterQuality.getTETRACHLOROETHENE()}" /></td>
	<td><c:out value="${waterQuality.getTRICHLOROETHANE()}" /></td>
	<td><c:out value="${waterQuality.getTRICHLOROETHANEa()}" /></td>
	<td><c:out value="${waterQuality.getDICHLOROETHANE()}" /></td>
	<td><c:out value="${waterQuality.getDICHLOROETHENEa()}" /></td>
	<td><c:out value="${waterQuality.getDICHLOROBENZENE()}" /></td>
	<td><c:out value="${waterQuality.getDICHLOROETHANEa()}" /></td>
	<td><c:out value="${waterQuality.getDICHLOROPROPANE()}" /></td>
	<td><c:out value="${waterQuality.getDIMETHYLBENZENEa()}" /></td>
	<td><c:out value="${waterQuality.getDICHLOROBENZENEb()}" /></td>
	<td><c:out value="${waterQuality.getDICHLOROBENZENEc()}" /></td>
	<td><c:out value="${waterQuality.getCHLOROETHYLVINYLETHER()}" /></td>
	<td><c:out value="${waterQuality.getACROLEIN()}" /></td>
	<td><c:out value="${waterQuality.getACRYLONITRILE()}" /></td>
	<td><c:out value="${waterQuality.getBENZENE()}" /></td>
	<td><c:out value="${waterQuality.getBROMODICHLOROMETHANE()}" /></td>
	<td><c:out value="${waterQuality.getBROMOFORM()}" /></td>
	<td><c:out value="${waterQuality.getBROMOMETHANE()}" /></td>
	<td><c:out value="${waterQuality.getCARBONTETRACHLORIDE()}" /></td>
	<td><c:out value="${waterQuality.getCHLOROBENZENE()}" /></td>
	<td><c:out value="${waterQuality.getCHLOROETHANEa()}" /></td>
	<td><c:out value="${waterQuality.getCHLOROFORM()}" /></td>
	<td><c:out value="${waterQuality.getCHLOROMETHANE()}" /></td>
	<td><c:out value="${waterQuality.getCISDICHLOROPROPENE()}" /></td>
	<td><c:out value="${waterQuality.getDIBROMOCHLOROMETHANE()}" /></td>
	<td><c:out value="${waterQuality.getETHYLBENZENE()}" /></td>
	<td><c:out value="${waterQuality.getMETHYLENECHLORIDE()}" /></td>
	<td><c:out value="${waterQuality.getTETRACHLOROETHENE()}" /></td>
	<td><c:out value="${waterQuality.getTOLUENE()}" /></td>
	<td><c:out value="${waterQuality.getTRANSDICHLOROETHENEa()}" /></td>
	<td><c:out value="${waterQuality.getTRANSDICHLOROPROPENEb()}" /></td>
	<td><c:out value="${waterQuality.getTRICHLOROETHENETCE()}" /></td>
	<td><c:out value="${waterQuality.getTRICHLOROFLUOROMETHANEFREON()}" /></td>
	<td><c:out value="${waterQuality.getVINYLCHLORIDE()}" /></td>
	<td><c:out value="${waterQuality.getXYLENES_MP()}" /></td>
    <td><c:out value="${waterQuality.getSitename()}" /></td>
    <td><c:out value="${waterQuality.getSitepoint()}" /></td>
    </tr>
  </c:forEach></tbody>
</table>
</div>
<div class="footer">
		<p>Watershed UGA 2017 <br><img src="georgia.png" alt="" width="70px" height="auto" /> <br></p>
		
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
