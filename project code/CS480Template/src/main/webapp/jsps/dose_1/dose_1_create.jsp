<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Dose #1</title>
    
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
  <h1>Dose #1</h1>
<form action="<c:url value='/Dose1ServletCreate'/>" method="post">
	Full Name: <input type="text" name="dose_1_fullname" value="${form.dose_1_fullname }"/>
	<span style="color: red; font-weight: 900">${errors.dose_1_fullname }</span>
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
	<input type="submit" value="Create Dose 1"/>
</form>
  </body>
</html>
