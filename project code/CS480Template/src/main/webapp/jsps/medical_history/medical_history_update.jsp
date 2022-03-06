<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Update Medical History</title>
    
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
  <h1>Update Medical History</h1>
<form action="<c:url value='/MedicalHistoryServletUpdate'/>" method="post">
	<input type="hidden" name="method" value="medical_history_search"/>
	Update Notes:<input type="text" name="medical_history_notes" value="${medical_history.medical_history_notes}" disabled/>
	<br/>	
	Update Pre-existing Conditions：<input type="text" name="medical_history_preexisiting_conditions" value="${medical_history.medical_history_preexisiting_conditions}" disabled />
	<br/>
	Update Contracted Covid：<input type="date" name="medical_history_contracted_covid" value="${medical_history.medical_history_contracted_covid}" disabled/>
	<br/>
	<input type="submit" value="Update Medical History"/>
</form>
  </body>
</html>
