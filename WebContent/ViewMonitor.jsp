
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link rel="stylesheet" type="text/css" href="store.css">
</head>

	<h1> ${sessionScope.name} View Data </h1>
	
	<br>
	
<br>
	
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

<c:forEach items="${MONITORINGPOINT}" var="monitoringPoint" varStatus="loop">
    <tr>
      <td><c:out value="${monitoringPoint.getSiteName()}" /></td>
      <td><c:out value="${monitoringPoint.getSitePoint()}"/></td>
      <td><c:out value="${monitoringPoint.getLatitude()}" /></td>
      <td><c:out value="${monitoringPoint.getLongitude()}" /></td>
      <td><c:out value="${monitoringPoint.Description()}"/></td>
      <td><c:out value="${monitoringPoint.getSiteUse()}" /></td>
      </tr>
      </c:forEach>

</tbody>
</table>
</body>
</html>