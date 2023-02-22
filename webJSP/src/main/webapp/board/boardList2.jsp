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
	번호 : <%=request.getParameter("no") %><br/> <!--  ${param.no}-->
	검색키 : <%=request.getParameter("searchKey") %><br/>
	검색어 : <%=request.getParameter("searchWord") %><br/>
	<hr/>
	번호 : ${param.no}<br/>
	검색키 : ${param.searchKey }<br/>
	검색어 : ${param.searchWord }<br/>
</div>
</body>
</html>