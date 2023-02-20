<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 에러(예외) 발생 시 실행될 파일 -->
<%@ page errorPage="errorPage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="get" action="errorPageTest.jsp">
	수1 : <input type="text" name="su1"/><br/>
	수2 : <input type="text" name="su2"/><br/>
	<input type="submit" value="결과보기"/>
</form>
<hr/>
<h1>계산결과</h1>
<ul>
<%
	String su1Str = request.getParameter("su1");
	String su2Str = request.getParameter("su2");
	
	if(su1Str!=null && su2Str!=null && !su1Str.equals("") && !su2Str.equals("")){
		int a = Integer.parseInt(su1Str);
		int b = Integer.parseInt(su2Str);
		%>
			<li><%=a %> + <%=b %> = <%=a+b %></li>
			<li><%=a %> - <%=b %> = <%=a-b %></li>
			<li><%=a %> * <%=b %> = <%=a*b %></li>
			<li><%=a %> / <%=b %> = <%=a/b %></li>
		<%
	}else{
		out.println("계산이 불가능한 값입니다.");
	}
%>
</ul>
</body>
</html>