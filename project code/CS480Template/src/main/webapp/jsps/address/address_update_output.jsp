<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Update Address</title>
    
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
  <h1>Update Address</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form>
	Patient ID :<input type="text" name="patient_id" value="${address.patient_id }" disabled/>
	<br/>
	Street address: <input type="text" name="streetAddress" value="${address.streetAddress }" disabled/>
	<br/>
	Zip code： <input type="text" name="zipCode" value="${address.zipCode }" disabled/>
	<br/>
	City： <input type="text" name="city" value="${address.city }" disabled/>
	<br/>
	State： <input type="text" name="state" value="${address.state }" disabled/>
	<br/>
</form>
<h1>Update the values below</h1>
<form action="<c:url value='/AddressServletUpdate'/>" method="post">
		<input type="hidden" name="method" value="address_update"/>
				<input type="hidden" name="patient_id" value="${address.patient_id }"/>
	Street address: ： <input type="text" name="streetAddress" value="${form.streetAddress }"/>
	<span style="color: red; font-weight: 900">${errors.streetAddress }</span>
	<br/>
	Zip code： <input type="text" name="zipCode" value="${form.zipCode }"/>
	<span style="color: red; font-weight: 900">${errors.zipCode }</span>
	<br/>
	City： <input type="text" name="city" value="${form.city }"/>
	<span style="color: red; font-weight: 900">${errors.city }</span>
	<br/>
	State: <input type="text" name="address_state" value="${form.state }"/>
	<span style="color: red; font-weight: 900">${errors.state }</span>
	<br/>
	<input type="submit" value="Update Address"/>
</form>

</body>
</html>
