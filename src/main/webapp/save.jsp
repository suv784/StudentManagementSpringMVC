<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: maroon;">
	<h2 style="text-align: center; color: silver;">ENTER STUDENT
		DETAILS</h2>
	<form action="saveStudent">
		<table align="center">

			<tr>

				<td>Enter Student's Roll : <input type="number" name="roll"
					placeholder="Enter Stuent roll" required="Enter the roll"></td>

			</tr>
			<tr>
				<td>Name : <input type="text" name="name"
					placeholder="Enter Name" required="Enter your Name">
				</td>
			</tr>

			<tr>
				<td>Class:<input type="text" name="StudyClass"
					placeholder="Enter class" required="Enter the class"></td>
			</tr>
			<tr>
				<td>Address:<input type="text" name="address"
					placeholder="Enter the Address" required="Enter Address"></td>
			</tr>
			<tr>
				<td>Age:<input type="number" name="age"
					placeholder="Enter the Age" required="Enter age"></td>
			</tr>
			<!--  <tr>
				<td>MALE:<input type="radio" name="gender" placeholder="MALE"
					required="choose gender"></td>
				<td>FEMALE:<input type="radio" name="gender"
					placeholder="FEMALE" required="choose gender"></td>
			</tr> -->

			<tr>
				<td>School Monthly Fees:<input type="number" name="fee"
					placeholder="Enter the Fees" required="Enter Feees"></td>
			</tr>
			<tr>
				<td><input type="submit" style="background-color: teal;"
					value="save"></td>
			</tr>
		</table>

	</form>

</body>
</html>
<!-- private int roll; 
	private String name; 
	private String StudyClass;  
	private String address; 
	private int age; 
	private double fee; -->