<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Listing Successful | Reboxed</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .success-box {
            max-width: 600px;
            margin: 80px auto;
            background-color: #ffffff;
            padding: 40px;
            border-radius: 10px;
            text-align: center;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.05);
        }
        .success-icon {
            font-size: 48px;
            color: #198754;
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
						<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/logout">Logout</a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</nav>

<div class="success-box">
    <div class="success-icon">✅</div>
    <h2 class="mt-3">Your product has been listed!</h2>
    <p class="lead mt-3">Thank you for using Reboxed. Your refurbished product is now live and ready for potential buyers to discover.</p>

    <a href="${pageContext.request.contextPath}/products.jsp" class="btn btn-outline-success mt-4">View Listings</a>
    <a href="sellproduct" class="btn btn-success mt-2">List Another Product</a>
</div>

<footer class="text-center mt-5 text-muted">
    &copy; 2025 Reboxed. All rights reserved.
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>