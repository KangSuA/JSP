<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#container{
		height:500px; margin:0 auto; border:1px solid red; width:800px;
	}
</style>
</head>
<body>
<!-- 페이지 상단에 include (jsp파일) -->
<!-- 엑션태그 -->
<jsp:include page="top.jsp"/>

<!-- 현재페이지의 컨탠츠 -->
<!-- jsp파일을 include를 하면 다른 파일에서 선언된 변수의 값이 호환되지 않는다. -->
<div id="container">
	<h1>Content</h1>
	<h1>.jsp파일을 include하기</h1>
	<div>이름 : <%//=name %> </div>
	<div>아이디 : <%//=id %> </div>
</div>
<!-- 페이지 하단에 include (jsp파일) -->
<jsp:include page="bottom.jsp"/>
</body>
</html>