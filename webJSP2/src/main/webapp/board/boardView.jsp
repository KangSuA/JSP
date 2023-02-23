<%@page import="com.multicampus.home.board.BoardDTO"%>
<%@page import="com.multicampus.home.board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int no = Integer.parseInt(request.getParameter("no"));

	BoardDAO dao = new BoardDAO();
	BoardDTO dto = dao.boardSelect(no);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글내용보기</title>
<link rel="stylesheet" href="/webJSP/inc/style.css" type="text/css"/>
<style>
	#boardView{overflow:auto;}
	#boardView>li{
		float:left; border-top:1px solid gray; padding:10px 0; width:20%
	}
	#boardView>li:nth-child(2n){width:80%;}
</style>
<script>
	//삭제여부 확인하는 함수
	function boardDelCheck(){
		//확인->true리턴, 취소->false
		if(confirm("글을 삭제하시겠습니까?")){
			location.href="<%=request.getContextPath()%>/board/boardDel.jsp?no=<%=no%>"; //javascript로 페이지 이동
		}
	}
</script>
</head>
<body>
<div class="container">
	<h1>글내용 보기</h1>
	<ul id="boardView">
		<li>글번호</li>
		<li><%=dto.getNo()%></li>
		<li>작성자</li>
		<li><%=dto.getUsername()%></li>
		<li>조회수</li>
		<li><%=dto.getHit()%></li>
		<li>등록일</li>
		<li><%=dto.getWritedate() %></li>
		<li>제목</li>
		<li><%=dto.getSubject()%></li>
		<li>글내용</li>
		<li><%=dto.getContent()%></li>
	</ul>
	<div>
		<!-- 본인이 쓴 글일 경우 수정/삭제 메뉴가 보이도록 설정 -->
		<% if(dto.getUserid().equals(session.getAttribute("logId"))){ %>
		<a href="<%=request.getContextPath()%>/board/boardEdit.jsp?no=<%=dto.getNo()%>">수정</a>
		<a href="javascript:boardDelCheck()">삭제</a>
		<%} %>
	</div>
</div>
</body>
</html>