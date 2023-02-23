<%@page import="com.multicampus.home.board.BoardDAO"%>
<%@page import="com.multicampus.home.board.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//보낸데이터가 post방식이면 한글이 깨진다.
	request.setCharacterEncoding("UTF-8");
	//이전페이지 폼의 값을 request
	//String subject = request.getParameter("subject");
	String content = request.getParameter("content");
	String userid = (String)session.getAttribute("logId");
	String ip = request.getRemoteAddr();
	
	//DAO로 보낼 데이터를 DTO에 셋팅하기
	BoardDTO dto = new BoardDTO();
	dto.setSubject(request.getParameter("subject"));
	dto.setContent(content);
	dto.setUserid(userid);
	dto.setIp(ip);
	
	//DB에 insert
	BoardDAO dao = new BoardDAO();
	int result = dao.boardInsert(dto);
	
	//페이지 이동
	if(result>0){//등록->게시판 목록
		response.sendRedirect(request.getContextPath()+"/board/boardList.jsp");
	}else{//글쓰기 -> 이전글
		%>
		<script>
			alert("글등록에 실패하였습니다.");
			history.back(); //history.go(-1);
		</script>
		<%
	}
%>