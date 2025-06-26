<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Message Sent | Reboxed</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .confirmation-box {
            max-width: 600px;
            margin: 100px auto;
            background: #fff;
            padding: 40px;
            text-align: center;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
            border-radius: 10px;
        }
        .confirmation-box h2 {
            color: #28a745;
            margin-bottom: 15px;
        }
        .confirmation-box p {
            font-size: 1.1em;
        }
        .confirmation-box a {
            margin-top: 20px;
            display: inline-block;
            background-color: #007bff;
            color: white;
            padding: 10px 22px;
            text-decoration: none;
            border-radius: 6px;
        }
        .confirmation-box a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="confirmation-box">
    <h2>Message Sent Successfully!</h2>
    <p>Thank you for contacting Reboxed. We’ve received your message and will get back to you shortly.</p>
    <a href="index.jsp">Return to Home</a>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>