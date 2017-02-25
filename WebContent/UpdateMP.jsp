<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
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

 <div id="navbar">
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
 </div>
 <div class="header-image">
	<p><img src="trailcreek.jpg" width="100%" height="auto"></p>
 </div>
    

      <div id="heading" class="page">
        <h1> Update Monitoring Point Information</h1>
        <p>Faculty, staff and students have been collecting data on UGA's streams.<br> Please use the below form to update Monitoring Pint data to the database.
         </p><br>
      </div>
      
     <div class ="addmonitorform">

<form  name=updateFormMP action=UpdateDataMP method=post>
	<c:forEach items="${MonitoringPoint}" var="monitoringPoint" varStatus="loop">
		<div >
		<div class="col-xs-6 form-group">
		<label> Site Name :</label>
		<input type = text name =SiteName value="${monitoringPoint.getSiteName()}"/>
		</div>
		
		<div class="col-xs-6 form-group">
		<label> Site Point :</label>
		<input type = text name= SitePoint value="${monitoringPoint.getSitePoint()}"/>
		</div>
		
		<div class="col-xs-6 form-group">
		<label> Location - Latitude :</label>
		<input type = text name= Latitude value="${monitoringPoint.getLatitude()}"/>
		</div>
		
		<div class="col-xs-6 form-group">
		<label> Location - Longitude :</label>
		<input type = text name= Longitude value="${monitoringPoint.getLongitude()}"/>
		</div>
		
		<div class="col-xs-6 form-group">
		<label> Description :</label>
		<input type = text name= Description value="${monitoringPoint.getDescription()}"/>
		</div>
		
		<div class="col-xs-6 form-group">
		<label> Site Use :</label>
		<input type = text name= SiteUse value="${monitoringPoint.getSiteUse()}"/>
		</div>
		
		</div>
		<div class = "addbutton">
		<input type =submit name =submit value="Update Data"/>
		</div>
</c:forEach>	
</form>

   
    
   <!-- <div id="veiw">
				<input class ="button" type="button" value="View Data">
				<input class ="button" type="button" value="Watershed UGA HomePage">
				</div>
				<div id="login">
				<br><input class ="button" type="button" value="Login"><br>
				</div> -->
</div>			
	
	
	<div class="footer">
		<p>Watershed UGA 2017 <br><img src="georgia.png" alt="" width="70px" height="auto" /> </br></p>
		
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

</body>
</html>