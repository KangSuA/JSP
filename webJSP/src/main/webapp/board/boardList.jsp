<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link rel="stylesheet" href="/webJSP/inc/style.css" type="text/css"/>
<style>
	#lst>li{
		float:left; height:40px; line-height:40px; width:10%; border-bottom:1px solid gray;
	}
	#lst>li:nth-child(5n+2){
		width:60%;
	}
</style>
</head>
<body>
<div class="container">
	<h1>게시판 목록</h1>
	<div><a href="<%=request.getContextPath()%>/board/boardWrite.jsp">글쓰기</a></div>
	<ul id="lst">
		<li>번호</li>
		<li>제목</li>
		<li>작성자</li>
		<li>등록일</li>
		<li>조회수</li>
		
		<li>100</li>
		<li>글등록 잘될까.</li>
		<li>goguma</li>
		<li>02-20-17:30</li>
		<li>3</li>
		
		<li>99</li>
		<li>오늘 놀러가자</li>
		<li>goguma</li>
		<li>02-19 04:20</li>
		<li>1</li>
	</ul>
</div>
</body>
</html>