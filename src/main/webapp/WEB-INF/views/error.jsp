<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Oops! Something went wrong</title>
<style>
body {
	background-color: #f8f9fa;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	color: #333;
}

.error-container {
	width: 500px;
	margin: 80px auto;
	padding: 40px;
	background: white;
	box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
	border-radius: 10px;
	text-align: center;
}

h1 {
	color: #dc3545;
	font-size: 3em;
}

h3 {
	margin: 20px 0 10px;
	color: #555;
}

p {
	font-size: 1.1em;
	color: #666;
}

a {
	display: inline-block;
	margin-top: 20px;
	padding: 10px 20px;
	background-color: #007bff;
	color: white;
	text-decoration: none;
	border-radius: 6px;
}

a:hover {
	background-color: #0056b3;
}

.stacktrace {
	margin-top: 30px;
	background: #f1f1f1;
	padding: 15px;
	border-radius: 6px;
	font-family: monospace;
	font-size: 0.9em;
	text-align: left;
	color: #bb2124;
}
</style>
</head>
<body>
	<div class="error-container">
		<h1>Error</h1>
		<h3>Something went wrong...</h3>
		<p>We’re sorry, but the page you requested could not be loaded at
			this time.</p>
		<a href="index.jsp">Return to Home</a>

		<c:if test="${not empty exception}">
			<div class="stacktrace">
				<strong>Details:</strong> <br> ${exception}
			</div>
		</c:if>
	</div>
</body>
</html>