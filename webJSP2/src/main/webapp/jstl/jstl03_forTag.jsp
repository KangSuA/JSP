<%@page import="java.util.HashMap"%>
<%@page import="com.multicampus.home.board.BoardDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/inc/style.css" type="text/css"/>
</head>
<body>
<div class="container">
	<h1> for Tag</h1>
	<c:set var="dan" value="${8}"></c:set>
	<h1>숫자를 이용하여 반복문 처리하기</h1>
	<!--       변수    시작값     끝값     증감값(생략하면 1씩 증가)-->
	<c:forEach var="i" begin="2" end="9" step="1">
		${dan} * ${i} = ${dan*i}<br/>
	</c:forEach>
	
	<h1>배열을 이용하여 반복문 처리하기</h1>
	<%
		int arr[] = {90,80,70,60,50,40,30};
	%>
	<!--              items -> 배열 또는 컬렉션일경우 -->
	<c:forEach var="n" items="<%=arr %>">
		[${n}],
	</c:forEach>
	
	<h1>List를 이용하여 반복문 처리하기</h1>
	<%
		List<String> nameList = new ArrayList<String>();
		
		nameList.add("홍길동");
		nameList.add("세종대왕");
		nameList.add("이순신");
	%>
	<c:forEach var="name" items="<%=nameList %>">
		[${name}],
	</c:forEach>
	
	<h1>게시판 목록</h1>
	<%
		BoardDAO dao = new BoardDAO();
	%>
	<ul>
	<c:forEach var="dto" items="<%=dao.boardAllRecord() %>">
		<li>${dto.no}, ${dto.subject}, ${dto.userid}, ${dto.writedate}, ${dto.hit}</li>
	</c:forEach>
	</ul>
	
	<h1>Map을 이용하여 반복문 처리하기</h1>
	<%
		HashMap<String, String> hm = new HashMap<String, String>();
	
		hm.put("name", "홍길동");
		hm.put("tel","010-1111-2222");
		hm.put("addr","서울시 강남구 언주로");
	%>
	<c:forEach var="mapData" items="<%=hm %>">
		<div>key : ${mapData.key} , value : ${mapData.value}</div>
	</c:forEach>
	
	<h1>DTO클래스 이용하기</h1>
	<c:set var="board" value="<%=dao.boardSelect(2) %>"></c:set>
	<div>
		번호 : ${board.no }<br/>
		제목 : ${board.subject }<br/>
		날짜 : ${board.writedate }<br/>
	</div>
	<script>
		console.log(<%=hm%>); //{}
		console.log(<%=nameList%>); //[]
		console.log("${board}");
	</script>
</div>
</body>
</html>