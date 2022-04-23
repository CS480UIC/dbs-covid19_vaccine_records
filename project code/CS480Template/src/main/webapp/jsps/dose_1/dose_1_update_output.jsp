<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Update Dose #1</title>
    
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
  <h1>Update Dose #1</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form>
	Patient ID :<input type="text" name="patient_id" value="${medical_history.patient_id }" disabled/>
	<br/>
	Full Name: <input type="text" name="dose_1_fullname" value="${dose_1.dose_1_fullname }" disabled/>
	<br/>
	Type： <input type="text" name="dose_1_type" value="${dose_1.dose_1_type }" disabled/>
	<br/>
	Lot Number： <input type="text" name="dose_1_lot_num" value="${dose_1.dose_1_lot_num }" disabled/>
	<br/>
	Location： <input type="text" name="dose_1_location" value="${dose_1.dose_1_location }" disabled/>
	<br/>
	Date of Dose： <input type="date" name="dose_1_date" value="${dose_1.dose_1_date }" disabled/>
	<br/>
</form>
<h1>Update the values below</h1>
<form action="<c:url value='/Entity1ServletUpdate'/>" method="post">
		<input type="hidden" name="method" value="dose_1_update"/>
				<input type="hidden" name="dose_1_fullname" value="${dose_1.dose_1_fullname }"/>
	Patient ID :<input type="hidden" name="method" value="search"/>:<input type="text" name="patient_id" value="${form.patient_id }"/>
	<span style="color: red; font-weight: 900">${errors.patient_id }</span>
	<br/>
	Type： <input type="text" name="dose_1_type" value="${form.dose_1_type }"/>
	<span style="color: red; font-weight: 900">${errors.dose_1_type }</span>
	<br/>
	Lot Number： <input type="text" name="dose_1_lot_num" value="${form.dose_1_lot_num }"/>
	<span style="color: red; font-weight: 900">${errors.dose_1_lot_num }</span>
	<br/>
	Location： <input type="text" name="dose_1_location" value="${form.dose_1_location }"/>
	<span style="color: red; font-weight: 900">${errors.dose_1_location }</span>
	<br/>
	Date of Dose: <input type="date" name="dose_1_date" value="${form.dose_1_date }"/>
	<span style="color: red; font-weight: 900">${errors.dose_1_date }</span>
	<br/>
	<input type="submit" value="Update Dose #1"/>
</form>

</body>
</html>
