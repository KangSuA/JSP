<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 예외(에러)가 발생하면 실행할 페이지 -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>홈페이지에서 에러가 발생하였습니다.</h1>
	메시지 : <%=
		exception.getMessage()
	%><br/>
	<img src="/webJSP/img/warning.png"/>
	<a href="/webJSP">클릭하시면 홈페이지로 이동합니다.</a>
</body>
</html>