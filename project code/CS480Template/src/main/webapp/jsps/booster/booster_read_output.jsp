<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Read Booster Dose Output</title>
    
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
  <h1>Read Booster Dose Output</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form>
	Patient ID： <input type="text" name="patient_id" value="${booster_dose.patient_id }" disabled/>
	<br/>
	Type： <input type="text" name="booster_type" value="${booster_dose.type_b }" disabled/>
	<br/>
	Lot Number for Booster Dose： <input type="text" name="booster_lot_num" value="${booster_dose.lot_num_b }" disabled/>
	<br/>
	Date of Booster Dose： <input type="date" name="booster_date" value="${booster_dose.dose_b_date }" disabled/>
	<br/>
	Location： <input type="text" name="booster_location" value="${booster_dose.location_b }" disabled/>
	<br/>
</form>

<button onclick="window.location.href='<c:url value='/jsps/main.jsp'/>'">Continue</button>
</body>
</html>
