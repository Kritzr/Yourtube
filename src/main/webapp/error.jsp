<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8d7da;
            color: #721c24;
            text-align: center;
            padding: 50px;
        }
    </style>
</head>
<body>
    <h1>Oops! Something went wrong.</h1>
    <p>${requestScope['javax.servlet.error.message']}</p>
    <a href="home.jsp">Go Back to Home</a>
</body>
</html>
