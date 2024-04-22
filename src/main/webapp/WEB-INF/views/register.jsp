<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Registration Form</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <jsp:include page="includes/styles.jsp"/>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 50%;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            margin: 50px auto 0;
        }
        input[type="text"], input[type="email"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 3px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Registration Form</h1>
    <form:form action="/user" method="post" modelAttribute="registerUserDto">
        <form:label path="name">Name:</form:label>
        <form:input type="text" path="name"/><br>

        <form:label path="surname">Surname:</form:label>
        <form:input type="text" path="surname"/><br>

        <form:label path="email">Email:</form:label>
        <form:input type="email" path="email"/><br>

        <form:label path="password">Password:</form:label>
        <form:input type="password" path="password"/><br>

        <input type="submit" value="Submit">
    </form:form>
</div>

<jsp:include page="includes/scripts.jsp"/>
</body>
</html>
