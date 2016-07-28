<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ page session="false"%>

<html>
    <head>
        <title>Index</title>
    </head>

    <body>
        <h3>Spring Security 3.2.4 Tutorial</h3>
        <sec:authorize access="isAuthenticated()">
            <h3>This is public page - Only for 'User' Role!</h3>
        </sec:authorize>

        <sec:authorize access="isAnonymous()">
            <h2><spring:url value="/login/" var="loginUrl" /> <a href="${loginUrl}" title="Login">Login</a></h2>
        </sec:authorize>
        <sec:authorize access="isAuthenticated()">
            <h2>${pageContext.request.userPrincipal.name} | <a href="<c:url value="/logout"/>">Logout</a></h2>
        </sec:authorize>

        <div><spring:url value="/protected/" var="protectedUrl" /> <a href="${protectedUrl}" title="protected">protected</a> resource for <b>admin</b></div>
    </body>
</html>
