<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//보낸데이터가 post방식이면 한글이 깨진다.
	request.setCharacterEncoding("UTF-8");
	//이전페이지 폼의 값을 request
	String subject = request.getParameter("subject");
	String content = request.getParameter("content");
	String userid = (String)session.getAttribute("logId");
	String ip = request.getRemoteAddr();
	
	//DB에 insert
	
	//페이지 이동

%>