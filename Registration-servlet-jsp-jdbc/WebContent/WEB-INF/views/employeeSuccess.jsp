<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: cyan">
<h3>hello ${param.firstname}</h3><br>
<h3>Registration done successfully! Click "Done" to register another user</h3>

<form action="<%= request.getContextPath() %>/register" method="get">
 <input type="submit" value="Done">
</form>
<% response.addHeader("cache-control", "no-cache, no-store, must-revalidate"); %>

</body>
</html>