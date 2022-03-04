<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Address</title>
    
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
  <h1>Address</h1>
<form action="<c:url value='/AddressServletCreate'/>" method="post">
	Full name： <input type="text" name="address_full_name" value="${form.address_zip_code }"/>
	<span style="color: red; font-weight: 900">${errors.address_zip_code }</span>
	<br/>
	Street Address: <input type="text" name="address_streetaddress" value="${form.address_streetaddress }"/>
	<span style="color: red; font-weight: 900">${errors.address_streetaddress }</span>
	<br/>
	Zip code： <input type="text" name="address_zip_code" value="${form.address_zip_code }"/>
	<span style="color: red; font-weight: 900">${errors.address_zip_code }</span>
	<br/>
	City： <input type="text" name="address_city" value="${form.address_city }"/>
	<span style="color: red; font-weight: 900">${errors.address_city }</span>
	<br/>
	State： <input type="text" name="address_state" value="${form.address_state }"/>
	<span style="color: red; font-weight: 900">${errors.address_state }</span>
	<br/>
	<input type="submit" value="Create Address"/>
</form>
  </body>
</html>