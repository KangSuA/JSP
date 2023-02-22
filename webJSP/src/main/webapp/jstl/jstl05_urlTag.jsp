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
	<h1>url태그 : form, a, location등에서 사용하는 주소를 처리하는 태그</h1>
	<c:url var="home" value="/index.jsp"/>
	<c:url var="boardList" value="/board/boardList2.jsp">
		<c:param name="no" value="12"/>
		<c:param name="searchKey" value="subject"/>
		<c:param name="searchWord" value="검색"/>
	</c:url>
	<div>
		<a href="${home}" >홈</a>
		<a href="${boardList}">게시판리스트</a>
	</div>
</div>
</body>
</html>