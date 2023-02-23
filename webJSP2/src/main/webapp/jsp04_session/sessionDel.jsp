<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>세션지우기</h1>
<%
	//세션에 저장된 정보 중 원하는 속성만 제거하기
	//session.removeAttribute("firstName");
	//session.removeValue("tel");
	
	//할당된 세션을 제거하기
	session.invalidate();
	
%>
<h1>sessionId : <%=session.getId() %></h1>
<%
	response.sendRedirect("sessionSave.jsp");
%>
<ul>
	<li>username : <%//=//session.getAttribute("username") %></li>
	<li>firstName : <%//=//session.getAttribute("firstName") %></li>
	<li>tel : <%//=session.getAttribute("tel") %></li>
</ul>
</body>
</html>