<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키생성</title>
<script>
	//쿠키를 생성하는 자바스크립트 내장객체
	document.cookie = "food=pizza; path=/; expires=2029-10-10;";
	document.cookie = "notice=test;";

</script>
</head>
<body>
<h1>쿠키 생성하기</h1>
<!-- 사용자 컴퓨터 데이터를 기록할 수 있음 -->
<%
	//자바스크립트에서 생성가능
	//JSP에서 생성가능
	//                        "변수",   "데이터"
	Cookie cookie= new Cookie("userid","admin1234");
	cookie.setMaxAge(60*10); // 생명주기 설정(초단위)
	
	//접속자 컴퓨터의 쿠키영역에 기록
	response.addCookie(cookie);
%>
<a href="cookieView.jsp">쿠키 확인하기</a>
</body>
</html>