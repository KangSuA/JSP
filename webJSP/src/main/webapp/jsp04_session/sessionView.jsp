<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>세션값 확인하기</h1>
	<div>이름 : <%=session.getAttribute("username")%> </div>
	<div>성 : <%=session.getAttribute("firstName") %></div>
	<div>연락처 : <%=session.getAttribute("tel") %></div>
	
	<h2><a href="sessionDel.jsp">세션값 제거하기</a></h2>
</body>
</html>