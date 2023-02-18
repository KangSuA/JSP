<!-- 지시부 : 페이지에 대한 환경설정 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar,java.text.SimpleDateFormat" %>
<%@ page  trimDirectiveWhitespaces="true" %>
<!-- 선언부 -->
<%!
	//메소드 또는 변수를 선언하는 영역
	public String gugudan(int dan){
		String result = "<ul>";
		for(int i=1; i<=10; i++) {
			result+="<li>"+dan+" * "+i+" = "+(dan*i)+"</li>";
		}
		result += "</ul>";
		return result;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	for(int i=1; i<=10; i++) {
		out.print(i+"<br/>");
	}
%>
<script>
	document.write("자바스크립트에서 출력 "+ new Date());
</script>
</head>
<body>
<H1>JSP홈페이지</H1>
<div>
	<a href="jsp02_response/login.html">로그인</a> 
</div>
<% //스크립트릿
	int a = 125;
	int b = 200;
	int c = a+b;
	out.println("c="+c);
%>
<h2>구구단</h2>
<%
	out.println(gugudan(6));
	out.println(gugudan(8));
	
	//오늘은 ____________입니다.
	Calendar today = Calendar.getInstance();
	SimpleDateFormat fmt = new SimpleDateFormat("YYYY-MM-dd");
	String dateStr = fmt.format(today.getTime());
	out.print("<h2>오늘은 "+dateStr+"입니다.</h2>");
%>
<h2>스크립트릿 값을 클라이언트에게 보내는 방법</h2>
<!-- 
a=100
b=200
c=300
변수,수식,상수
 -->
 a = <%=a %><br/>
 b = <%=b %><br/>
 c = <%=a+b %><br/>
</body>
</html>