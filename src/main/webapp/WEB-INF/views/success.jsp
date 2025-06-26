<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Successful</title>
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
    <div class="success-container">
        <h2>Registration Successful!</h2>
        <p>Thank you for signing up. You can now log in with your new account.</p>
        <a href="login">Go to Login</a>
    </div>
</body>
</html>