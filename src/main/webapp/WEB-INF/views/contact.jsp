<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact Us | Reboxed</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .form-container {
            max-width: 650px;
            margin: 60px auto;
            background: #ffffff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 0 15px rgba(0,0,0,0.05);
        }
        .form-container h2 {
            margin-bottom: 25px;
            text-align: center;
        }
        footer {
            text-align: center;
            margin-top: 50px;
            color: #777;
            font-size: 0.95em;
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

<div class="form-container">
    <h2>Get in Touch</h2>
    <form method="post">
        <div class="mb-3">
            <label for="name" class="form-label">Full Name</label>
            <input type="text" class="form-control" id="name" name="name" required>
        </div>
        <div class="mb-3">
            <label for="email" class="form-label">Email Address</label>
            <input type="email" class="form-control" id="email" name="email" required>
        </div>
        <div class="mb-3">
            <label for="subject" class="form-label">Subject</label>
            <input type="text" class="form-control" id="subject" name="subject">
        </div>
        <div class="mb-3">
            <label for="message" class="form-label">Your Message</label>
            <textarea class="form-control" id="message" name="message" rows="5" required></textarea>
        </div>
        <button type="submit" class="btn btn-success w-100">Send Message</button>
    </form>
</div>

<footer class="mt-5">
    &copy; 2025 Reboxed. All rights reserved.
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>