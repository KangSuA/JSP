<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//request 내장객체는 클라이언트측의 정보를 서버로 가져오는 기능을 가진다.
	//query 읽어오기
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	String tel = request.getParameter("tel");
	String hobby[] = request.getParameterValues("hobby");
	
	System.out.println("이름="+name);
	System.out.println("나이="+age);
	System.out.println("연락처="+tel);
	
	System.out.println(Arrays.toString(hobby));
	
	//주소표시줄의 쿼리에 있는 속성(=변수)를 얻어오기
	Enumeration names = request.getParameterNames();
	while(names.hasMoreElements()){
		
		%>
			<div><%=names.nextElement() %></div>
		
		<%
	}
%>
이름 : <%=name %><br/>
나이 : <%=age %><br/>
연락처 : <%=tel %><br/>
취미 : <%=Arrays.toString(hobby) %>
</body>
</html>