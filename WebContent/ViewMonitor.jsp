

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title></title>
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
	<h1> ${sessionScope.name} View Data </h1>
</div>	
	<br>
	
<br>

<div class = "table-responsive">	
<table>
<thead>
<tr>
<th>Site Name</th>
<th>Site Point</th>
<th>Location- Latitude</th>
<th>Location-Longtitude</th>
<th>Description</th>
<th>Site Use</th>
</thead>
<tbody>

<c:forEach items="${MONITORINGPOINTS}" var="monitoringPoint" varStatus="loop">
    <tr>
      <td><c:out value="${monitoringPoint.getSiteName()}" /></td>
      <td><c:out value="${monitoringPoint.getSitePoint()}"/></td>
      <td><c:out value="${monitoringPoint.getLatitude()}" /></td>
      <td><c:out value="${monitoringPoint.getLongitude()}" /></td>
      <td><c:out value="${monitoringPoint.getDescription()}"/></td>
      <td><c:out value="${monitoringPoint.getSiteUse()}" /></td>
      </tr>
      </c:forEach>

</tbody>
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
