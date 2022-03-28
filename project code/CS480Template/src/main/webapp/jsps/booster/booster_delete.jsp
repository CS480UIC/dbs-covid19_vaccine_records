<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Delete Booster Dose</title>
    
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
  <h1>Delete Booster Dose</h1>
<form action="<c:url value='/BoosterServletDelete'/>" method="post">
	<input type="hidden" name="method" value="booster_search"/>
	Patient ID: <input type="text" name="patient_id" value="${form.patient_id }"/>
	<span style="color: red; font-weight: 900">${errors.patient_id }</span>
	<br/>
	Full Name: <input type="text" name="booster_fullname" value="${form.booster_fullname }"/>
	<span style="color: red; font-weight: 900">${errors.booster_fullname }</span>
	<br/>
	Type： <input type="text" name="booster_type" value="${form.booster_type }"/>
	<span style="color: red; font-weight: 900">${errors.booster_type }</span>
	<br/>
	Lot Number： <input type="text" name="booster_lot_num" value="${form.booster_lot_num }"/>
	<span style="color: red; font-weight: 900">${errors.booster_lot_num }</span>
	<br/>
	Location： <input type="text" name="booster_location" value="${form.booster_location }"/>
	<span style="color: red; font-weight: 900">${errors.booster_location }</span>
	<br/>
	Date of Dose: <input type="date" name="booster_date" value="${form.booster_date }"/>
	<span style="color: red; font-weight: 900">${errors.booster_date }</span>
	<br/>
	<input type="submit" value="Delete Booster Dose"/>
</form>
  </body>
</html>
