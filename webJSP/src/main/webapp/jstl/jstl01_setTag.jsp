<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/inc/style.css" type="text/css"/>
</head>
<body>
<div class="container">
	<h1>jstl(Jsp Standard Tag Library)</h1>
	<%
		int num = 200;
	%>
	<h2>변수 선언</h2>
	<!--   변수        상수    el표현식 -->
	<c:set var="data" value="${300}"></c:set>
	<c:set var="name">세종대왕</c:set>
	<c:set var="tel" value="${'010-1234-5678'}"></c:set>
	<c:set var="today" value="<%=new Date() %>" ></c:set>
	<c:set var="num2" value="<%=num %>"></c:set>
	<hr/>
	<h2>변수 사용하기 (EL표현식 : Expression Language)</h2>
	<div>
		jsp에서 선언한 변수의 값은 사용할 수 없다.
		jsp에서 사용한 내장객체에 저장된 겂은 사용이 가능하다. : request, session, application
	</div>
	data = ${data}<br/>
	name = ${name}<br/>
	tel = ${tel}<br/>
	today = ${today}<br/>
	num2 = ${num2}<br/>
	num = ${num}<br/>
	
	<h2>변수 삭제하기</h2>
	<c:remove var="num2" scope="page"/>
	
	num2 = ${num2}<br/>
</div>
</body>
</html>