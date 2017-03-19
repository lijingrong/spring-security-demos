<?xml version="1.0" encoding="UTF-8" ?>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html lang="en">
<head>
    <title>Hello Security</title>
</head>

<body>
<div class="container">
    <h1>This is secured!</h1>
    <p>
        Hello <b>${pageContext.request.remoteUser}</b>
    </p>
    <form class="form-inline" action="logout" method="post">
        <input type="submit" value="Log out"/>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form>
</div>
</body>
</html>