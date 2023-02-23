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
	<h1>forTokens 태그 : 문자열을 특정문자로 토큰화하기</h1>
	<!-- 문자열 -->
	<c:forTokens var="i" items="빨간색, 노랑색, 파랑색, 초록색, 주황색, 갈색, 보라색, 검정색, 남색" delims=",">
		[${i }]
	</c:forTokens>
</div>
</body>
</html>