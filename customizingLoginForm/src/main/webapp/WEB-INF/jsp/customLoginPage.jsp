<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>自定义的登录页</title>
</head>
<body>
<h3>这是自定义的登录页面,你可以任意美化^_^</h3>
<div style="width: 300px">
    <form action="login" method="post">
        <fieldset>
            <legend>Please Login</legend>
            <c:if test="${param.containsKey('error')}">
                <div>
                    Invalid username and password.
                </div>
            </c:if>
            <c:if test="${param.containsKey('logout')}">
                <div>
                    You have been logged out.
                </div>
            </c:if>
            <label for="username">Username</label>
            <input type="text" id="username" name="username"/>
            <label for="password">Password</label>
            <input type="password" id="password" name="password"/>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <div>
                <button type="submit" class="btn">Log in</button>
            </div>
        </fieldset>
    </form>
</div>

</body>
</html>
