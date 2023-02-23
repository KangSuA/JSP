<%@page import="com.multicampus.home.board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	int no = Integer.parseInt(request.getParameter("no"));

	BoardDAO dao = new BoardDAO();
	int result = dao.boardDelete(no);
	
	if(result>0){ //글이 삭제되면 글목록
		response.sendRedirect(request.getContextPath()+"/board/boardList.jsp");
	}else{ //글 삭제 실패하면 글내용보기
		response.sendRedirect(request.getContextPath()+"board/boardView.jsp?no="+no);
	}
%>