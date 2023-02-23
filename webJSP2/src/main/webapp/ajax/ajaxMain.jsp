<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/inc/style.css" type="text/css"/>
<style>
	#view{
		border: 1px solid gray;
		height: 300px;
		
	}
</style>
<script>
	function loadDocument(){
		//비동기식으로 서버에 접속하여 ajaxTextData.txt의 파일 내용을 가져오기
		//1. 웹서버에 데이터를 요청하는 객체
		var xHttp = new XMLHttpRequest();
		
		//2. ready이벤트가 발생하면 자동호출되는 메소드 - 서버에 접속하여 정보를 가져온다.
		xHttp.onreadystatechange = function(){
			/*
				this.readyState : XMLHttpRequest의 처리 상태
								  0:초기화 실패, 1:서버연결, 2:요청이 접수, 3:처리요청, 4:요청완료
				this.status : 요청 상태번호 변환
							  200:정상처리, 403:금지, 404:찾을수없음
				this.statusText : 정상처리(OK), 데이터받기 실패(NOT Found)를 반환한다.
				this.responseText : 전송받은 정보
			*/
			console.log('readyState->',this.readyState);
			console.log('status',this.status);
			//console.log('statusText', this.statusText);
			if(this.readyState==4 && this.status==200) {
				document.getElementById("view").innerHTML = this.responseText;
			}else{
				document.getElementById("view").innerHTML = "요청한 자료가 없습니다.";
			}
		}
		
		//3. 서버에 대이터 요청하고
		//		   전송방식, 가져올 데이터 파일명  , 비동기식
		xHttp.open("GET","ajaxTextData.txt", true);

		//4. 서버에 요청서를 보낸다. -> ready이벤트가 발생함
		xHttp.send();
	}
	function loadDocument2(){
		var xHttp2 = new XMLHttpRequest();
		xHttp2.onreadystatechange = function() {
			if(this.readyState==4 && this.status==200) {
				document.getElementById("view").innerHTML = this.responseText;
				console.log(this.responseText);
			}
		}
		xHttp2.open("GET","ajaxJsp.jsp?firstname=홍&lastname=gildong",true);
		xHttp2.send();
	}
</script>
</head>
<body>
<div class="container">
	<h1>자바스크립트를 이용한 ajax구현하기</h1>
	<input type="button" value="ajax(javascript/text)" onclick="loadDocument()"/>
	<input type="button" value="ajax(javascript/jsp)" onclick="loadDocument2()"/>
	<div id="view">
	
	</div>
</div>
</body>
</html>