<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키정보확인하기</title>
</head>
<body>
<h1>쿠키 정보 확인하기</h1>
<ol>
<%
	//서버에서 접속자 컴퓨터에 기록되어있는 쿠키를 얻어오기
	Cookie[] cookie = request.getCookies();
	for(int i=0;i<cookie.length; i++) {
		%>
		<li><%=cookie[i].getName()%> : <%=cookie[i].getValue() %></li>
		<%
	}
%>
</ol>
</body>
</html>