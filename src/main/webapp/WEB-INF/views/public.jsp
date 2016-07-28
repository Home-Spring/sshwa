<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
		<base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Public</title>
	</head>

	<body>
        <h3>${title}</h3>
        <h3>${message}</h3>

        <c:if test="${title!=null && message!=null}">
            <c:if test="${pageContext.request.userPrincipal.name != null}">
                <h2>${pageContext.request.userPrincipal.name} | <c:url value="login?logout" var="logoutUrl" /><a href="${logoutUrl}">Log Out</a></h2>
            </c:if>
        </c:if>

        <div><a href="/sshwa">../</a></div>
        <div><a href="public">public</a> resource for <b>user</b></div>
		<div><a href="protected">protected</a> resource for <b>admin</b></div>
		<div><a href="confidential">confidential</a> resource for <b>superadmin</b></div>
	</body>
</html>
