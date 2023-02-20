<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션에 값 지정하기</title>
</head>
<body>
<h1>SessionId : <%=session.getId() %></h1>
<h1>세션에 값 설정하기</h1>
<%
	session.setAttribute("username","홍길동");
	session.setAttribute("firstName", "hong");
	session.setAttribute("tel", "010-1234-5678");
%>
<h2><a href="sessionView.jsp">세션값 확인하기</a></h2>
</body>
</html>