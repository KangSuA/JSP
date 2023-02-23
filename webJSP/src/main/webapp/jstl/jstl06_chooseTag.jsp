<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/inc/style.css" type="text/css"/>
</head>
<body>
<div class="container">
	<h1>choose태그 : 다중 if문</h1>
	<c:choose>
		<c:when test="${param.name=='hong'}">
			당신의 이름은 ${param.name }입니다.
		</c:when>
		<c:when test="${param.age>20 }">
			당신의 나이는 20세이상 입니다.
		</c:when>
		<c:otherwise>
			당신의 이름은 hong도 아니고 20세 이상도 아닙니다.
		</c:otherwise>
	</c:choose>
</div>
</body>
</html>