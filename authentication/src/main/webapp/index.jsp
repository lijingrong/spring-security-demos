<?xml version="1.0" encoding="UTF-8" ?>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>Hello Security</title>
</head>
<body>
<h1>This is secured!</h1>
<p>
    Hello <b>${pageContext.request.remoteUser}</b>
</body>
</html>