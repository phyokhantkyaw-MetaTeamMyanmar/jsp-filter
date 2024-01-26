<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manager Home</title>
</head>
<body>
	<h1>Manager Home</h1>
	<p><%=session.getAttribute("user")%>:<%=session.getAttribute("role")%></p>
	<%
	String url = getServletContext().getContextPath().concat("logout");
	%>
	<a href="<%=url%>">Log Out</a>
</body>
</html>