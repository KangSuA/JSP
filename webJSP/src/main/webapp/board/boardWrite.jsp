<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//로그인이 안된경우 로그인폼으로 이동
	String logStatus = (String)session.getAttribute("logStatus");
	if(logStatus==null || !logStatus.equals("Y")){
		response.sendRedirect(request.getContextPath()+"/jsp02_response/login.html");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/inc/style.css" type="text/css"/>
<style>
	input[name=subject], textarea{
		width:100%;
	}
	textarea[name=content]{
		height:300px;
	}
</style>
<script>
	//제목, 글내용이 있는지 확인
	function frmCheck(){
		if(document.getElementById("subject").value==""){
			alert("제목을 입력하세요.");
			return false;
		}
		if(document.getElementById("content").value==""){
			alert("글내용을 입력하세요.");
			return false;
		}
		return true;		
	}
</script>
</head>
<body>
	<div class="container">
		<h1>글쓰기 폼</h1>
		<form method="post" action="<%=request.getContextPath() %>/board/boardWriteOk.jsp" 
				onsubmit="return frmCheck()">
		<ul>
			<li>제목</li>
			<li><input type="text" name="subject" id="subject"/></li>
			<li>글내용</li>
			<li>
			<li><textarea name="content" id="content"></textarea></li>
			<li><input type="submit" value="글등록"/>
				<input type="reset" value="다시쓰기"/>
			</li>
		</ul>
		</form>
	</div>
</body>
</html>