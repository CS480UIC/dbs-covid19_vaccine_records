<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>
	<h3 align="center"> After 08-15-2020 Covid Dates Table </h3>
	<table border="1" width="70%" align="center">
	<tr>
		<th>Patient ID</th>
		<th>Contracted COVID-19 Date</th>
	</tr>
<c:forEach items="${CovidDateList}" var="medical_history">
	<tr>
		<td>${medical_history.patient_id}</td>
		<td>${medical_history.contracted_covid}</td>
	</tr>
</c:forEach>
</table>
</body>
</html>
