<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String addr = "서울시 강남구 언주로";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 상단에 include -->
<%@ include file="header.jspf" %>
<div>
	<h1>jspf파일을 include하기</h1>
	<p>
		jspf파일은 include시 코드가 메인코드에 삽입되어 하나의 파일로 실행된다.
		<br/> 데이터가 호환이 된다.
		<br/> 이름 = <%=username %>
	</p>
</div>
<%@ include file="footer.jspf" %>
</body>
</html>