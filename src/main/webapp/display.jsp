<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student details</title>
</head>
<body style="background-color:teal;">
<h1 style="text-align: center;color: red;">View Student Details</h1>
	<table border="2px solid black;" align="center">
		<tr>
			<th>STUDENT Roll</th>
			<th>STUDENT NAME</th>
			<th>STUDENT CLASS</th>
			<th>STUDENT ADDRESS</th>
			<th>STUDENT AGE</th> 
			<th>SCHOOL MONTHLY FEES</th>
			<th>EDIT</th>
			<th>DELETE</th>
		</tr>
		<c:forEach var="e"  items="${students}"> 
			<tr>
				<td>${e.getRoll()}</td>
				<td>${e.getName()}</td>
				<td>${e.getStudyClass()}</td>
				<td>${e.getAddress()}</td>	
				<td>${e.getAge()}</td>
				<td>${e.getFee()}</td>
				<td><a href="edit?roll=${e.getRoll()}">EDIT</a></td>
				<td><a href="delete?roll=${e.getRoll()}">Delete</a></td>
			</tr> 
		</c:forEach>
	</table>
</body>
</html> 
<!--  
private int roll; 
	private String name; 
	private String StudyClass;  
	private String address;
	private int age; 
	private double fee;
	public int getRoll() {
		return roll;
	}
	public void setRoll(int roll) {
		this.roll = roll;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getStudyClass() {
		return StudyClass;
	}
	public void setStudyClass(String studyClass) {
		StudyClass = studyClass;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	} 
	public double getFee() {
		return fee;
	}
	public void setFee(double fee) {
		this.fee = fee;
	}  
 -->