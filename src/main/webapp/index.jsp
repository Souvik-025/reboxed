<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reboxed | Refurbished Goods</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
.hero {
	background: url('images/refurbished-banner.jpg') no-repeat center center;
	background-size: cover;
	color: white;
	text-align: center;
	padding: 100px 20px;
}

.hero h1 {
	font-size: 3rem;
}

.feature-icon {
	font-size: 40px;
	color: #28a745;
	margin-bottom: 15px;
}
</style>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-success">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Reboxed</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse justify-content-end"
				id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active"
						href="home.jsp">Home</a></li>
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

	<section class="hero">
		<div class="container">
			<h1>Shop Smart. Shop Sustainable.</h1>
			<p class="lead">Certified refurbished goods at incredible prices.
				Reduce waste, save money.</p>
			<a href="sellproduct" class="btn btn-light btn-lg mt-3">Sell
				Products</a> <a href="products.jsp" class="btn btn-light btn-lg mt-3">Buy
				Products</a>
		</div>
	</section>

	<section class="container py-5">
		<div class="row text-center">
			<div class="col-md-4 mb-4">
				<div class="feature-icon">✔️</div>
				<h4>Quality Assured</h4>
				<p>Every item is inspected and tested by professionals for peak
					performance.</p>
			</div>
			<div class="col-md-4 mb-4">
				<div class="feature-icon">💰</div>
				<h4>Cost Effective</h4>
				<p>Top-quality tech at unbeatable prices—why pay more?</p>
			</div>
			<div class="col-md-4 mb-4">
				<div class="feature-icon">🌱</div>
				<h4>Eco-Friendly</h4>
				<p>Join the green movement—choosing refurbished helps the
					planet.</p>
			</div>
		</div>
	</section>

	<footer class="text-center py-4 bg-light text-muted"> &copy;
		2025 Reboxed. All rights reserved. </footer>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>