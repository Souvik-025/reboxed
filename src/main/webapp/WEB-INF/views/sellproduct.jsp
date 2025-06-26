<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Sell Product | Reboxed</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-success">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp">Reboxed</a>
    <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item"><a class="nav-link active" href="index.jsp">Home</a></li>
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

<div class="container mt-5 mb-5">
  <h2 class="mb-4 text-center">Sell Your Refurbished Product</h2>
  
  <form:form method="post" modelAttribute="product" enctype="multipart/form-data">
    
    <div class="mb-3">
      <label for="pName" class="form-label">Product Name</label>
      <form:input path="pName" cssClass="form-control" required="true"/>
      <form:errors path="pName" cssClass="text-danger small"/>
    </div>
    
    <div class="mb-3">
      <label for="brand" class="form-label">Brand</label>
      <form:input path="brand" cssClass="form-control" required="true"/>
      <form:errors path="brand" cssClass="text-danger small"/>
    </div>
    
    <div class="mb-3">
      <label for="condition" class="form-label">Condition</label>
      <form:select path="condition" cssClass="form-select" required="true">
        <form:option value="" label="Select"/>
        <form:option value="Like New" />
        <form:option value="Good" />
        <form:option value="Fair" />
      </form:select>
    </div>
    
    <div class="mb-3">
      <label for="price" class="form-label">Selling Price (₹)</label>
      <form:input path="price" cssClass="form-control" type="number" required="true"/>
    </div>
    
    <div class="mb-3">
      <label for="description" class="form-label">Product Description</label>
      <form:textarea path="description" cssClass="form-control" rows="4"/>
      <form:errors path="description" cssClass="text-danger small"/>
    </div>
    
    <div class="mb-3">
      <label for="image" class="form-label">Upload Product Image</label>
      <input type="file" name="image" class="form-control" accept="image/*"/>
    </div>
    
    <button type="submit" class="btn btn-success w-100">Submit Listing</button>
  </form:form>
</div>

<footer class="text-center py-4 bg-light text-muted">
  &copy; 2025 Reboxed. All rights reserved.
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>