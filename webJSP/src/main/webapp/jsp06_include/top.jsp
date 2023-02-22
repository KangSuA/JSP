<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name="홍길동";
	String id="gildong";
%>
<style>
	ul,li{margin:0; padding:0; list-style-type:none;}
	
	#top{
		height:100px; background-color:pink; 
 	}	
 	
 	#nav, #menu>li{text-align:center;}
 	#nav{width:800px; margin:0 auto;}
 	#menu>li{
 		float:left; height:40px; line-height:40px; font-size:1.2em; width:25%;
 	}
 	
</style>
<div id="top">
	<div id="nav">
		<h1>멀티캠퍼스</h1>
		<ul id="menu">
			<li>
				<%
					if(session.getAttribute("logStatus")==null || !session.getAttribute("logStatus").equals("Y")){
				%>
					<a href="/webJSP/jsp02_response/login.html">로그인</a>
				<%}else{ %>
					<%=session.getAttribute("logName") %>님 <a href="/webJSP/jsp02_response/logout.jsp">로그아웃</a>
				<%} %>
			</li>
			<li><a href="/webJSP/board/boardList.jsp">게시판</a></li>
			<li><a href="/webJSP/jstl/jstlMain.jsp" >jstl</a></li>
			<li><a href="/webJSP/ajax/ajaxMain.jsp">ajax</a></li>
		</ul>
	</div>
</div>