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
	<c:set var="x" value="${100}" ></c:set>
	<c:set var="y" value="${50}"></c:set>
	
	<h1>조건문 사용하기</h1>
	<!-- <, >,  -->
	<c:if test="${x>y}">
		${x} + ${y} = ${x+y}<br/>
	</c:if>
	<c:if test="${true}">
		모조건 실행됨<br/>
	</c:if>
	
	<%
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String firstname = request.getParameter("firstname");
	%>
	<h1>jstl에서 request하기</h1>
	이름 : ${param.name }<br/>
	나이 : ${param.age+10 }<br/>
	성 : ${param.firstname }<br/>
	
</div>
</body>
</html>