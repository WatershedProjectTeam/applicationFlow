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
  <div id="navbar">
  <div id="custom-bootstrap-menu" class="navbar navbar-default " role="navigation">
    <div class="container-fluid">
        <div class="navbar-header"><a class="navbar-brand" href="#">Watershed UGA Data Management</a>
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-menubuilder"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
            </button>
        </div>
        <div class="collapse navbar-collapse navbar-menubuilder">
            <ul class="nav navbar-nav navbar-left">
                <li><a href="/">Home</a>
                </li>
                 <li> <a href="AddMonitorPoint.jsp">Add Monitoring Point Information</a>
                </li>
                <li><a href="viewData">View Data</a>
                </li>
                <li><a href="https://watershed.uga.edu/">Watershed UGA</a>
                </li>
                <li><a href="/about-us">Login</a>
                </li>
            </ul>
        </div>
    </div>
 </div>
 </div>
 <div class="header-image">
	<p><img src="trailcreek.jpg" width="100%" height="auto"></p>
 </div>
</div>

    <div class="container">

      <div id="heading" class="page">
        <h1> Add Water Quality Data </h1>
        <p>Faculty, staff and students have been collecting data on UGA's streams.Please use the below form to enter data to the database
         </p><br>
      </div>
      
     <div class ="form">

<form  name=addForm action=addData method=post>



<label> Sample Date :</label>
<input type = "text" name = "SampleDate" placeholder="YYYY-MM-DD" required>
<br/>

<label> Sampled By :</label>
<input type = "text" name = SampledBy value=""/>
<br/>

<label> Site Condition :</label>
<input type = "text" name =SiteCondition value=""/>
<br/>

<label> PH :</label>
<input type = text name =PH value=""/>
<br/>

<label> Conductivity :</label>
<input type = text name =Conductivity value=""/>
<br/>

<label> Dissolved Oxygen :</label>
<input type = text name =DissolvedOxygen value=""/>
<br/>

<label> Temperature:</label>
<input type = text name =Temperature value=""/>
<br/>

<label> TURBIDITY :</label>
<input type = text name =Turbidity value=""/>
<br/>

<label> STAGE :</label>
<input type = text name =Stage value=""/>
<br/>

<label> FECAL COLIFORM :</label>
<input type = text name =FecalColiform value=""/>
<br/>

<label> ECOLI :</label>
<input type = text name =Ecoli value=""/>
<br/>

<label> HARDNESS :</label>
<input type = text name =Hardness value=""/>
<br/>

<label> TOTAL-P :</label>
<input type = text name =TotalP value=""/>
<br/>

<label> TOTAL-N:</label>
<input type = text name =Totaln value=""/>
<br/>

<label> TSS :</label>
<input type = text name =Tss value=""/>
<br/>

<label> ARSENIC :</label>
<input type = text name =Arsenic value=""/>
<br/>

<label> COPPER :</label>
<input type = text name =Copper value=""/>
<br/>

<label> Lead :</label>
<input type = text name =Lead value=""/>
<br/>

<label> Zinc :</label>
<input type = text name =Zinc value=""/>
<br/>
<label> 1_1_2_2_TETRACHLOROETHENE :</label>
<input type = text name =TETRACHLOROETHENE value=""/>
<br/>
<label> 1_1_1_TRICHLOROETHANE:</label>
<input type = text name =TRICHLOROETHANE value=""/>
<br/>
<label> 1_1_2_TRICHLOROETHANE:</label>
<input type = text name =TRICHLOROETHANEa value=""/>
<br/>
<label> 1_1_DICHLOROETHANE :</label>
<input type = text name =DICHLOROETHANE value=""/>
<br/>
<label> 1_1_DICHLOROETHENE :</label>
<input type = text name =DICHLOROETHENEa value=""/>
<br/>
<label> 1_2_DICHLOROBENZENE :</label>
<input type = text name =DICHLOROBENZENE value=""/>
<br/>
<label> 1_2_DICHLOROETHANE:</label>
<input type = text name =DICHLOROETHANEa value=""/>
<br/>
<label> 1_2_DICHLOROPROPANE :</label>
<input type = text name =DICHLOROPROPANE value=""/>
<br/>
<label> 1_2_DIMETHYLBENZENE :</label>
<input type = text name =DIMETHYLBENZENEa value=""/>
<br/>
<label> 1_3_DICHLOROBENZENE :</label>
<input type = text name =DICHLOROBENZENEb value=""/>
<br/>
<label> 1_4_DICHLOROBENZENE :</label>
<input type = text name =DICHLOROBENZENEc value=""/>
<br/>
<label> 2_CHLOROETHYL_VINYL_ETHER :</label>
<input type = text name =CHLOROETHYLVINYLETHER value=""/>
<br/>
<label> ACROLEIN :</label>
<input type = text name =ACROLEIN value=""/>
<br/>
<label> ACRYLONITRILE :</label>
<input type = text name =ACRYLONITRILE value=""/>
<br/>
<label> BENZENE :</label>
<input type = text name =BENZENE value=""/>
<br/>
<label> BROMODICHLOROMETHANE :</label>
<input type = text name =BROMODICHLOROMETHANE value=""/>
<br/>
<label> BROMOFORM :</label>
<input type = text name =BROMOFORM value=""/>
<br/>
<label> BROMOMETHANE :</label>
<input type = text name =BROMOMETHANE value=""/>
<br/>
<label> CARBONTETRACHLORIDE :</label>
<input type = text name =CARBONTETRACHLORIDE value=""/>
<br/>
<label> CHLOROBENZENE :</label>
<input type = text name =CHLOROBENZENE value=""/>
<br/>
<label> CHLOROETHANEa :</label>
<input type = text name =CHLOROETHANEa value=""/>
<br/>
<label> CHLOROFORM :</label>
<input type = text name =CHLOROFORM value=""/>
<br/>
<label> CHLOROMETHANE :</label>
<input type = text name =CHLOROMETHANE value=""/>
<br/>
<label> CIS_1_3_DICHLOROPROPENE :</label>
<input type = text name =CISDICHLOROPROPENE value=""/>
<br/>
<label> DIBROMOCHLOROMETHANE :</label>
<input type = text name =DIBROMOCHLOROMETHANE value=""/>
<br/>
<label> ETHYLBENZENE :</label>
<input type = text name =ETHYLBENZENE value=""/>
<br/>
<label> METHYLENECHLORIDE :</label>
<input type = text name =METHYLENECHLORIDE value=""/>
<br/>
<label> TETRACHLOROETHENEPCE :</label>
<input type = text name =TETRACHLOROETHENEPCE value=""/>
<br/>
<label> TOLUENE :</label>
<input type = text name =TOLUENE value=""/>
<br/>
<label> TRANS_1_2_DICHLOROETHENE :</label>
<input type = text name =TRANSDICHLOROETHENEa value=""/>
<br/>
<label> TRANS_1_3_DICHLOROPROPENE :</label>
<input type = text name =TRANSDICHLOROPROPENEbnc value=""/>
<br/>
<label> TRICHLOROETHENE_TCE :</label>
<input type = text name =TRICHLOROETHENE_TCE value=""/>
<br/>
<label> TRICHLOROFLUOROMETHANE_FREON_11 :</label>
<input type = text name =TRICHLOROFLUOROMETHANEFREON value=""/>
<br/>
<label> VINYL_CHLORIDE :</label>
<input type = text name =VINYLCHLORIDE value=""/>
<br/>
<label> XYLENES_MP :</label>
<input type = text name =XYLENES_MP value=""/>
<br/>

<label> Site Name :</label>
 <select id="siteNameOptions" name= Site >
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

<label> Site Point :</label>
<select id="sitePointOptions" name= "Sitepoint" >
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
<br/>


<input type =submit name =submit value="Add Data"/>
</form>

    </div><!-- /.container -->
    
   <div id="veiw">
				<input class ="button" type="button" value="View Data">
				<input class ="button" type="button" value="Watershed UGA HomePage">
				</div>
				<div id="login">
				<br><input class ="button" type="button" value="Login"><br>
				</div>
			
	</div><!-- /end .section.body -->
	
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
</html>
</head>
