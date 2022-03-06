<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Update Patient</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <h1>Update Patient</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form>
	First Name    :<input type="text" name="patient_first_name" value="${patient.patient_first_name }" disabled/>
	<br/>	
	Last Name：<input type="text" name="patient_last_name" value="${patient.patient_last_name }" disabled />
	<br/>
	Date of Birth	：<input type="date" name="patient_dob" value="${patient.patient_dob }" disabled/>
	<br/>
	Gender(Female, Male, Intersex)	：<input type="text" name="patient_gender" value="${patient.patient_gender }" disabled/>
	<br/>
</form>
<h1>Update the values below</h1>
<form action="<c:url value='/PatientServletUpdate'/>" method="post">
		<input type="hidden" name="method" value="update"/>
				<input type="hidden" name="patient_first_name" value="${patient.patient_first_name }"/>
				<input type="hidden" name="patient_last_name" value="${patient.patient_last_name }"/>	
	Date of Birth：<input type="date" name="patient_dob" value="${form.patient_dob }"/>
	<span style="color: red; font-weight: 900">${errors.patient_dob }</span>
	<br/>
	Gender(Female, Male, Intersex)	：<input type="text" name="patient_gender" value="${form.patient_gender }"/>
	<span style="color: red; font-weight: 900">${errors.patient_gender}</span>
	<br/>
	<input type="submit" value="Update Patient"/>
</form>

</body>
</html>