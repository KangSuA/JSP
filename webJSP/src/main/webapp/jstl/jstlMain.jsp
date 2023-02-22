<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="<%=request.getContextPath()%>/inc/style.css" type="text/css"/>
</head>
<body>
<div class="container">
	<h1>JSTL : Jsp Standard Tag Library</h1>
	<pre>
		환경설정
		1. https://tomcat.apache.org/taglibs/standard/ 에서 라이브러리 다운로드하기
		   jakarta-taglibs-standard-1.1.2 zip파일 다운로드
		2. 압축을 푼 후
		   jstl.jar, standard.jar을 이클립스의 /WEB-INF/lib에 복사
		3. 태그 라이브러리를 사용하는 페이지에서 지시부 표시하여야한다.
		   &lt; %@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	</pre>
	<ol>
		<li><a href="jstl01_setTag.jsp">set tag : 변수선언 및 변수삭제</a></li>
		<li><a href="jstl02_ifTag.jsp?name=이순신&age=35&firstname=lee">if tag : 조건문</a></li>
		<li><a href="jstl03_forTag.jsp">for tag : 반복문</a></li>
		<li><a href="jstl04_forTokensTag.jsp">forTokens Tag </a></li>
		<li><a href="jstl05_urlTag.jsp">url Tag </a></li>
		<li><a href="jstl06_chooseTag.jsp?name=hone&age=24">choose Tag : 다중if문, switch </a></li>
		<li>
			<pre>
				1. html의 meta태그를 이용하여 페이지가 자동으로 이동하기
				
				2. javascript를 이용하여 자동페이지 이동하기
				   localhost.href="url"
				   
				3. jsp의 response객체를 이용하여 자동으로 페이지 이동하기
				   response.sendRedirect("url");
				
				4. jstl에서 자동이동하기
			</pre>
			<a href="jstl07_redirect.jsp">redirect Tag</a>
		</li>
	</ol>
</div>
</body>
</html>