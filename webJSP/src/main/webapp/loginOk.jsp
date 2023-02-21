<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	//JDBC드라이브 로딩후 DB연결객체 반환하는 메소드
	public Connection getConn(){
		Connection con = null;
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
			String username = "scott";
			String password = "tiger";
 			con = DriverManager.getConnection(url, username, password);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return con;
	}
%>
<% 
	//로그인의 아이디와 비밍번호를 request
	String userid=request.getParameter("userid");
	String userpwd=request.getParameter("userpwd");
	
	//DB조회
	
	//1. 드라이브로딩
	//2. DB연결
	Connection conn = getConn();
	
	//3. SQL -> Statement 생성
	String sql = "select username, userid from register where userid=? and userpwd=?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, userid);
	pstmt.setString(2, userpwd);
	
	//4. 실행
	ResultSet rs = pstmt.executeQuery();
	
	//조회결과에 따른 처리
	//rs.next();
	//int result = rs.getInt(1);
	
	
	/*
	if(result>0){//로그인 성공
		//홈페이지로 이동하기
		//javascript -> location.href = "";
		//meta refresh=""			/webJSP/index.jsp
		response.sendRedirect(request.getContextPath()+"/index.jsp");//홈페이지로 이동
		
	}else{//로그인 실패
		//로그인 페이지로 이동
		response.sendRedirect(request.getContextPath()+"/jsp02_response/login.html");
	}*/
	
	if(rs.next()){
		//로그인 성공
		//세션에 로그인정보 기록하기
		session.setAttribute("logId", rs.getString(2));
		session.setAttribute("logName", rs.getString(1));
		session.setAttribute("logStatus","Y");
		
		//5. 종료
		rs.close();
		pstmt.close();
		conn.close();
		
		%>
		<script>
			alert("로그인 성공하였습니다. 홈페이지로 이동합니다.");
			location.href="<%=request.getContextPath() %>/index.jsp";
		</script>
		<%
	}else{
		//로그인 실패
		%>
		<script>
			alert("로그인 실패하였습니다.");
			history.back(); //history.go(-1) --이전페이지로 이동
		</script>
		
		<%
	}
	
%>
