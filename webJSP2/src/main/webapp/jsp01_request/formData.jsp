<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>폼을 이용하여 서버로 정보 보내기</h1>
<form method="get" action="formDataOk.jsp"> 
	이름 : <input type="text" name="username"/><br/>
	비밀번호 : <input type="password" name="userpwd"/><br/>
	수신여부 : <input type="radio" name="reception" value="yes"/> 수신함
			<input type="radio" name="reception" value="no"/> 수신안함<br/>
	<hr/>
	관심분야 : <input type="checkbox" value="축구" name="interest"/> 축구
			<input type="checkbox" value="농구" name="interest"/> 농구
			<input type="checkbox" value="야구" name="interest"/> 야구
			<input type="checkbox" value="탁구" name="interest"/> 탁구<br/>
	지역 : <select multiple name="local">
			<script>
				var localName = ['서울시','경기도','인천광역시','강원도','충청남도','대전광역시','충청북도'];
				for(var i=0; i<localName.length; i++){
					document.write("<option value='"+localName[i]+"'>"+localName[i]+"</option>");
				}
			</script>
		  </select><br/>
	
	<input type="submit" value="전송"/>
	<button>전송</button>
	<input type="image" src="../img/profile-pic.png" style="width:100px; height:40px;" />
</form>
</body>
</html>