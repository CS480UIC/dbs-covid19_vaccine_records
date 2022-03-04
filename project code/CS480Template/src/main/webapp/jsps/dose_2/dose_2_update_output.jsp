<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Update Dose #2</title>
    
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
  <h1>Update Dose #2</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form>
	Full Name: <input type="text" name="dose_2_fullname" value="${dose_2.dose_2_fullname }" disabled/>
	<br/>
	Type： <input type="text" name="dose_2_type" value="${dose_2.dose_2_type }" disabled/>
	<br/>
	Lot Number： <input type="text" name="dose_2_lot_num" value="${dose_2.dose_2_lot_num }" disabled/>
	<br/>
	Location： <input type="text" name="dose_2_location" value="${dose_2.dose_2_location }" disabled/>
	<br/>
	Date of Dose： <input type="date" name="dose_2_date" value="${dose_2.dose_2_date }" disabled/>
	<br/>
</form>
<h1>Update the values below</h1>
<form action="<c:url value='/Entity1ServletUpdate'/>" method="post">
		<input type="hidden" name="method" value="dose_2_update"/>
				<input type="hidden" name="dose_2_fullname" value="${dose_2.dose_2_fullname }"/>
	Type： <input type="text" name="dose_2_type" value="${form.dose_2_type }"/>
	<span style="color: red; font-weight: 900">${errors.dose_2_type }</span>
	<br/>
	Lot Number： <input type="text" name="dose_2_lot_num" value="${form.dose_2_lot_num }"/>
	<span style="color: red; font-weight: 900">${errors.dose_2_lot_num }</span>
	<br/>
	Location： <input type="text" name="dose_2_location" value="${form.dose_2_location }"/>
	<span style="color: red; font-weight: 900">${errors.dose_2_location }</span>
	<br/>
	Date of Dose: <input type="date" name="dose_2_date" value="${form.dose_2_date }"/>
	<span style="color: red; font-weight: 900">${errors.dose_2_date }</span>
	<br/>
	<input type="submit" value="Update Dose #2"/>
</form>

</body>
</html>