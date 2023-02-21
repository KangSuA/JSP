<%@page import="com.multicampus.home.board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!-- 액션태그를 이용한 객체를 dot
	BoardDTO dto = new BoardDTO();
	
	id속성 : 객체명
	class속성 : 객체를 생성할 클래스
	scope속성 : 객체의 생명주기 (application, session, page, request)
 -->
<jsp:useBean id="dto" class="com.multicampus.home.board.BoardDTO" scope="page"></jsp:useBean>
<!-- 앞페이지에서 보낸 데이터를 request후 dto에 셋팅하는 기능을 수행한다. -->
<jsp:setProperty property="*" name="dto"/>
<%
	//dto.setNo(Integer.parseInt(request.getParameter("no")));
	BoardDAO dao = new BoardDAO();
	int result = dao.boardUpdate(dto);
	
	if(result>0){ //수정된 경우 : 글내용보기로 이동
		response.sendRedirect(request.getContextPath()+"/board/boardView.jsp?no="+dto.getNo());
	}else { //수정안된 경우 : 수정페이지로 이동
		%>
		<script>
			alert("게시글 수정을 실패하였습니다.");
			history.go(-1);
		</script>
		<%
	}
%>