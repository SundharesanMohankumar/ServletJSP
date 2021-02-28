<%@page import="com.registration.controller.employeeServlet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:cyan ">
	<div align="center">
		<h2>Registration Form</h2>

		<form action="<%= request.getContextPath() %>/registeration" method="post">
			<table align="center" style="width: 35%" border="1">
				<tr align="center">
					<td>ID :</td>
					<td><input type="text" name="id"></td>
				</tr>
				<tr align="center">
					<td>FirstName :</td>
					<td><input type="text" name="firstname"></td>
				</tr>
				<tr align="center">
					<td>LastName :</td>
					<td><input type="text" name="lastname"></td>
				</tr>
				<tr align="center">
					<td>Username :</td>
					<td><input type="text" name="username"></td>
				</tr>
				<tr align="center">
					<td>Password :</td>
					<td><input type="password" name="password"></td>
				</tr>
				<tr align="center">
					<td>Address :</td>
					<td><input type="text" name="address"></td>
				</tr>
				<tr align="center">
					<td>ContactNo :</td>
					<td><input type="text" name="contact"></td>
				</tr>
			</table>
			<br> <input type="submit" value="Register" align="top">
			<% response.addHeader("cache-control", "no-cache, no-store, must-revalidate"); %>
	</form>
	</div>
	
		
</body>
</html>