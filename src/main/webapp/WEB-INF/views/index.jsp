<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ page session="false"%>
<html>
    <head>
        <title>Index</title>
    </head>
    <body>
        <h3>Spring Security 3.2.4 Tutorial</h3>

        <spring:url value="/login/" var="loginUrl" />
        <a href="${loginUrl}" title="Login">Login</a>
        <br />

        <spring:url value="/admin/" var="adminUrl" />
        <a href="${adminUrl}" title="Admin">Admin</a>

        <br />
        <br />

        <sec:authorize access="isAuthenticated()">
            <a href="<c:url value="/logout"/>">Logout</a>
        </sec:authorize>

    </body>
</html>
