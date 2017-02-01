
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.WaterQuality,java.util.List" %>
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
<th>Site Name</th>
<th>Site Point</th>
</thead>
<tbody>  <c:forEach items="${WATERQUALITIES}" var="waterQuality" varStatus="loop">
    <tr>
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
      <td><c:out value="${waterQuality.getSitename()}" /></td>
      <td><c:out value="${waterQuality.getSitepoint()}" /></td>
    </tr>
  </c:forEach></tbody>
</table>

</body>
</html>