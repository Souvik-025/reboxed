<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Successful</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	background: #f0f2f5;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

.success-container {
	width: 450px;
	margin: 80px auto;
	padding: 30px;
	background: #ffffff;
	box-shadow: 0 0 12px rgba(0, 0, 0, 0.1);
	border-radius: 10px;
	text-align: center;
}

.success-container h2 {
	color: #28a745;
	margin-bottom: 15px;
}

.success-container p {
	font-size: 1.1em;
	margin-bottom: 25px;
}

.success-container a {
	text-decoration: none;
	background-color: #007bff;
	color: white;
	padding: 10px 20px;
	border-radius: 6px;
	display: inline-block;
}

.success-container a:hover {
	background-color: #0056b3;
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-success">
		<div class="container-fluid">
			<a class="navbar-brand" href="index.jsp">Reboxed</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse justify-content-end"
				id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active"
						href="index.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="products.jsp">Products</a></li>
					<c:if test="${empty sessionScope.accounts}">
						<li class="nav-item"><a class="nav-link" href="register">Register</a></li>
						<li class="nav-item"><a class="nav-link" href="login">Login</a></li>
					</c:if>
					<li class="nav-item"><a class="nav-link" href="contact">Contact</a></li>
					<c:if test="${not empty sessionScope.accounts}">
						<li class="nav-item"><a class="nav-link" href="contact">Accounts</a></li>
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/logout">Logout</a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</nav>
	<div class="success-container">
		<h2>Registration Successful!</h2>
		<p>Thank you for signing up. You can now log in with your new
			account.</p>
		<a href="login">Go to Login</a>
	</div>
	
	<footer class="text-center py-4 bg-light text-muted"> &copy;
		2025 Reboxed. All rights reserved. </footer>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
	
</body>
</html>