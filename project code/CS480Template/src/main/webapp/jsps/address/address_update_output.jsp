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
	Full Name: <input type="text" name="address_fullname" value="${address.address_fullname }" disabled/>
	<br/>
	Street address: <input type="text" name="address_streetaddress" value="${address.address_streetaddress }" disabled/>
	<br/>
	Zip code： <input type="text" name="address_zipcode" value="${address.address_zipcode }" disabled/>
	<br/>
	City： <input type="text" name="address_city" value="${address.address_city }" disabled/>
	<br/>
	State： <input type="text" name="address_state" value="${address.address_state }" disabled/>
	<br/>
</form>
<h1>Update the values below</h1>
<form action="<c:url value='/AddressServletUpdate'/>" method="post">
		<input type="hidden" name="method" value="address_update"/>
				<input type="hidden" name="address_fullname" value="${address.address_fullname }"/>
	Street address: ： <input type="text" name="address_streetaddress" value="${form.address_streetaddress }"/>
	<span style="color: red; font-weight: 900">${errors.address_streetaddress }</span>
	<br/>
	Zip code： <input type="text" name="address_zipcode" value="${form.address_zipcode }"/>
	<span style="color: red; font-weight: 900">${errors.address_zipcode }</span>
	<br/>
	City： <input type="text" name="address_city" value="${form.address_city }"/>
	<span style="color: red; font-weight: 900">${errors.address_city }</span>
	<br/>
	State: <input type="text" name="address_state" value="${form.address_state }"/>
	<span style="color: red; font-weight: 900">${errors.address_state }</span>
	<br/>
	<input type="submit" value="Update Address"/>
</form>

</body>
</html>
