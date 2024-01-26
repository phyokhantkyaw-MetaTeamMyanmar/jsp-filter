<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Filter Demo</title>
<style>
body {
	padding: 2rem;
}

.card {
	padding: 2rem;
	font-size: 1.4rem;
	background-color: red;
	box-shadow: 1px 2px 2px gray;
	border-radius: 0.4 rem;
}
</style>
</head>
<body>
	<h1>Hello Filter</h1>
	<div>
		<%
		String hello = getServletContext().getContextPath().concat("/hello");
		%>
		<a href="<%=hello%>">Hello Servlet</a>
		<%
		if (request.getAttribute("message") != null) {
		%>
		<div class="card">
			<%=request.getAttribute("message")%>
		</div>
		<%
		}
		%>
	</div>
	<h3>Using Filter</h3>
	<h2>Employee Login</h2>
	<form action="login" method="post">
		<input type="hidden" name="home" value="employee">
		<div>
			<label>Name</label> <input type="text" name="name"
				placeholder="Enter Name">
		</div>

		<div>
			<label>Role</label> <select name="role">
				<option value="">Select One</option>
				<option value="Employee">Employee</option>
				<option value="Manager">Manager</option>
			</select>
		</div>

		<div>
			<button type="submit">Login</button>
		</div>
	</form>
	<h2>Manager Login</h2>
	<form action="login" method="post">
		<input type="hidden" name="home" value="manager">
		<div>
			<label>Name</label> <input type="text" name="name"
				placeholder="Enter Name">
		</div>

		<div>
			<label>Role</label> <select name="role">
				<option value="">Select One</option>
				<option value="Employee">Employee</option>
				<option value="Manager">Manager</option>
			</select>
		</div>

		<div>
			<button type="submit">Login</button>
		</div>
	</form>
</body>
</html>