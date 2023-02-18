<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//한글을 post방식으로 전송할때는 인코딩을 하여야 한글이 깨지지 않는다.
	request.setCharacterEncoding("UTF-8");
	System.out.println(request.getCharacterEncoding());
	
	
	//form태그로 보낸 데이터를 서버에서 request하기
	String username = request.getParameter("username");
	String userpwd = request.getParameter("userpwd");
	String reception = request.getParameter("reception");
	String interest[] = request.getParameterValues("interest");
	String local[] = request.getParameterValues("local");
	System.out.println("이름="+username);
%>
<div>이름 : <%=username %></div>
<div>비밀번호 : <%=userpwd %></div>
<div>수신여부 : <%=reception %></div>
<div>관심분야 : <%=Arrays.toString(interest) %></div>
<div>지역 : <%=Arrays.toString(local) %></div>

<ul>
	<li>접속자의 컴퓨터 ip : <%=request.getRemoteAddr() %></li>
	<li>contentType : <%=request.getContentType() %></li>
	<li>전송방식 : <%=request.getMethod() %></li>
	<li>프로토콜 : <%=request.getProtocol() %></li>
	<li>URI : <%=request.getRequestURI() %></li> <!-- /webJSP/jsp01_request/formDataOk.jsp -->
	<li>URL : <%=request.getRequestURL() %></li> <!-- http://localhost:9090/webJSP/jsp01_request/formDataOk.jsp -->
	<li>ContextPath : <%=request.getContextPath() %></li>
	<li>서버이름 : <%=request.getServerName() %></li>
	<li>포트번호 : <%=request.getServerPort() %></li>
	<li>절대주소 : <%=request.getServletContext().getRealPath("/") %></li>
	<!-- C:\workspaceWeb\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\webJSP\ -->
	<li>쿼리정보 : <%=request.getQueryString() %></li>
</ul>