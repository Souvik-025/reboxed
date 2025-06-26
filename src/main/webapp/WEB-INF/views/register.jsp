<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register | Reboxed</title>
    <!-- Bootstrap CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f4f6f8;
        }
        .card {
            border-radius: 12px;
            box-shadow: 0 0 12px rgba(0,0,0,0.08);
        }
        .form-control:focus {
            box-shadow: none;
            border-color: #28a745;
        }
        .error {
            color: #d8000c;
            font-size: 0.9em;
        }
        .login-redirect {
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-success">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Reboxed</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="products.jsp">Products</a></li>
                <li class="nav-item"><a class="nav-link" href="login">Login</a></li>
                <li class="nav-item"><a class="nav-link" href="contact">Contact</a></li>
            </ul>
        </div>
    </div>
</nav>

    <div class="container my-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card p-4">
                    <h3 class="text-center mb-4">Create Your Reboxed Account</h3>
                    <form:form method="post" action="register" modelAttribute="accounts">
                        <div class="mb-3">
                            <label for="aName" class="form-label">User Name</label>
                            <form:input path="aName" id="aName" cssClass="form-control" />
                            <form:errors path="aName" cssClass="error" />
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">Email</label>
                            <form:input path="email" id="email" cssClass="form-control" type="email" />
                            <form:errors path="email" cssClass="error" />
                        </div>
                        <div class="mb-3">
                            <label for="phoneNumber" class="form-label">Phone Number</label>
                            <form:input path="phoneNumber" id="phoneNumber" cssClass="form-control" />
                            <form:errors path="phoneNumber" cssClass="error" />
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">Password</label>
                            <form:password path="password" id="password" cssClass="form-control" />
                            <form:errors path="password" cssClass="error" />
                        </div>
                        <button type="submit" class="btn btn-success w-100">Register</button>
                    </form:form>

                    <div class="login-redirect mt-3">
                        Already have an account? <a href="login" class="text-success fw-bold">Login here</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>