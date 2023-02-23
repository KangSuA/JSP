<%@page import="com.multicampus.home.board.BoardDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.multicampus.home.board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link rel="stylesheet" href="/webJSP/inc/style.css" type="text/css"/>
<style>
	.lst>li{
		float:left; height:40px; line-height:40px; width:10%; border-bottom:1px solid gray;
	}
	.lst>li:nth-child(5n+2){
		width:60%;
		white-space:nowrap; /*줄안바꿈*/ 
		overflow:hidden; /*넘치는 데이터 숨기기*/
		text-overflow:ellipsis; /*말줄임표시*/
	}
	.lst>li:nth-child(5n){
		text-align:center;
	}
</style>
</head>
<body>
<div class="container">
	<h1>게시판 목록</h1>
	<div><a href="<%=request.getContextPath()%>/board/boardWrite.jsp">글쓰기</a></div>
	<ul class="lst">
		<li>번호</li>
		<li>제목</li>
		<li>작성자</li>
		<li>등록일</li>
		<li>조회수</li>
<!-- 				 -->
<%
	BoardDAO dao = new BoardDAO();
	List<BoardDTO> list = dao.boardAllRecord();
	for(int i=0; i<list.size(); i++){
		BoardDTO dto = list.get(i);
%>
		<li><%=dto.getNo()%></li>
		<li><a href="<%=request.getContextPath()%>/board/boardView.jsp?no=<%=dto.getNo()%>"><%=dto.getSubject()%></a></li>
		<li><%=dto.getUserid()%></li>
		<li><%=dto.getWritedate()%></li>
		<li><%=dto.getHit()%></li>
	<%} %>
		
	</ul>
	<ul class="lst">
		<li>번호</li>
		<li>제목</li>
		<li>작성자</li>
		<li>등록일</li>
		<li>조회수</li>
<!-- 77777777777777777777777777777777777				 -->
	<c:forEach var="dto" items="<%=dao.boardAllRecord() %>">
		<li>${dto.no}</li>
		<li><a href="<%=request.getContextPath()%>/board/boardView.jsp?no=${dto.no}">${dto.subject }</a></li>
		<li>${dto.userid }</li>
		<li>${dto.writedate}</li>
		<li>${dto.hit }</li>
	</c:forEach>
<!-- 7777777777777777777777777777777777777 -->
	</ul>
</div>
</body>
</html>