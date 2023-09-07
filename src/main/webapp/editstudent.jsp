<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EditStudentInformation</title>
</head>
<body style="background-color:teal;">
<h1 style="text-align: center; color: red;">Edit Student Information</h1>
	<form:form action="update" modelAttribute="stdfind">
	<table align="center">
	<tr><td>	Student Roll :<form:input path="roll" readonly="true"/></td></tr>
	<tr><td>	Name :<form:input path="name"/></td></tr>
	<tr><td>	Class:<form:input path="StudyClass"/></td></tr>
	<tr><td>	Address:<form:input path="address"/></td></tr>
	<tr><td>	Age : <form:input path="age"/></td></tr>	
	<tr><td>	MonthlyFEES: <form:input path="fee"/></td></tr>
		<tr><td >	  <form:button style="background-color: silver;">Update</form:button>	</td></tr>
			  </table>
	</form:form>
</body>
</html>  