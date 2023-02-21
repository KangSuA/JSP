package com.multicampus.home.board;

import java.util.ArrayList;
import java.util.List;

import com.multicampus.home.DBConnection;

public class BoardDAO extends DBConnection {
	//글등록
	public int boardInsert(BoardDTO dto) {
		int result=0;
		try {
			//1.DB연결
			getConnection();
			
			//2.쿼리문->pstmt
			sql = "insert into board(no, subject, content, userid, ip) values(board_sq.nextval,?,?,?,?)";
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, dto.getSubject());
			pstmt.setString(2, dto.getContent());
			pstmt.setString(3, dto.getUserid());
			pstmt.setString(4, dto.getIp());
			
			//3.실행
			result = pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbclose();
		}
		return result;
	}
	//글목록선택
	public List<BoardDTO> boardAllRecord() {
		List<BoardDTO> list = new ArrayList<BoardDTO>();
		try {
			//1.DB연결
			getConnection();
			
			//2.
			sql = "select no, subject, userid, to_char(writedate,'MM-DD HH:MI'), hit from board order by no desc";
			pstmt = con.prepareStatement(sql);
			
			//3.
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				BoardDTO dto = new BoardDTO();
				
				dto.setNo(rs.getInt(1));
				dto.setSubject(rs.getString(2));
				dto.setUserid(rs.getString(3));
				dto.setWritedate(rs.getString(4));
				dto.setHit(rs.getInt(5));
				
				list.add(dto);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbclose();
		}
		return list;
	}
	//글선택
	public BoardDTO boardSelect(int no) {
		BoardDTO dto = new BoardDTO();
		try {
			//조회수 증가
			hitCount(no);
			
			//해당글을 선택하여 DTO에 담고 리턴한다.
			getConnection();
			
			sql = "select b.no, r.username, b.hit, b.writedate, b.subject, b.content, b.userid "
					+ "from board b join register r on b.userid=r.userid and no=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, no);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dto.setNo(rs.getInt(1));
				dto.setUsername(rs.getString(2));
				dto.setHit(rs.getInt(3));
				dto.setWritedate(rs.getString(4));
				dto.setSubject(rs.getString(5));
				dto.setContent(rs.getString(6));
				dto.setUserid(rs.getString(7));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbclose();
		}
		return dto;
	}
	//글수정폼 - 해당레코드의 no, subject, content를 선택하는 메소드
	public BoardDTO boardEditSelect(int no) {
		BoardDTO dto = new BoardDTO();
		try {
			getConnection();
			
			sql="select no,subject,content from board where no=?";
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, no);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dto.setNo(rs.getInt(1));
				dto.setSubject(rs.getString(2));
				dto.setContent(rs.getString(3));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbclose();
		}
		return dto;
	}
	//글수정(DB업데이트)
	public int boardUpdate(BoardDTO dto) {
		int result=0;
		try {
			getConnection();
			
			sql="update board set subject=?, content=? where no=?";
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, dto.getSubject());
			pstmt.setString(2, dto.getContent());
			pstmt.setInt(3, dto.getNo());
			
			result = pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbclose();
		}
		return result;
	}
	
	//글삭제
	public int boardDelete(int no) {
		int result=0;
		try {
			getConnection();
			
			sql = "delete from board where no=?";
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, no);
			
			result = pstmt.executeUpdate();
			
		}catch(Exception e) {
			
		}finally {
			dbclose();
		}
		return result;
	}
	
	//조회수증가
	public void hitCount(int no) {
		try {
			getConnection();
			
			sql="update board set hit = hit + 1 where no=?";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, no);
			
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbclose();
		}
	}
}
