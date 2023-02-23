<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	//세션을 지운다.
	session.invalidate();
	response.sendRedirect("/webJSP/index.jsp");
%>