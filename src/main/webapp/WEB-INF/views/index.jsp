<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
		<base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Index</title>
	</head>

	<body>
        <h3>Spring Security 3.2.4 Tutorial</h3>
        <h3>${message}</h3>

        <c:if test="${message!=null}">
            <c:if test="${pageContext.request.userPrincipal.name != null}">
                <h2>${pageContext.request.userPrincipal.name} | <c:url value="login?logout" var="logoutUrl" /><a href="${logoutUrl}">Logout</a></h2>
            </c:if>
        </c:if>

        <div><a href="/sshwa">../</a></div>
        <div><a href="index">index</a> resource for <b>user</b></div>
		<div><a href="protected">protected</a> resource for <b>admin</b></div>
		<div><a href="confidential">confidential</a> resource for <b>superadmin</b></div>
	</body>
</html>
