package kr.co.mlec.board.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import kr.co.mlec.board.vo.BoardVO;
import kr.co.mlec.util.ConnectionFactory;
import kr.co.mlec.util.JDBCClose;

/*
 * 게시판 DB(tbl_board) CRUD
 * @author user
 * 
 * 
 */
public class BoardDAO2 {

	/*
	 * 전체 게시글 조회
	 */
	/* tbl_board에서 전체게시글(번호, 제목, 작성자, 등록일) 조회 */
	public List<BoardVO> selectAllBoard() {

		List<BoardVO> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {

			conn = new ConnectionFactory().getConnection();
			StringBuilder sql = new StringBuilder();
			sql.append("select no, title, writer ");
			sql.append("     , to_char(reg_date, 'yyyy-mm-dd') as reg_date ");
			sql.append("  from tbl_board ");
			sql.append(" order by no desc ");
			pstmt = conn.prepareStatement(sql.toString());
			/* SELECT의 결과를 저장하는 객체 = ResultSet 객체에 결과값을 담기 */
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				int no = rs.getInt("no");
				String title = rs.getString("title");
				String writer = rs.getString("writer");
				String regDate = rs.getString("reg_date");
				BoardVO board = new BoardVO(no, title, writer, regDate);
				// System.out.println(board);

				list.add(board);
			}
		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			JDBCClose.close(pstmt, conn);
		}

		return list;

	}

	// 새글등록
	/*
	 * 
	 * 매개변수: boardVO 타입에서 저장 넣는값이 늘어날 수도 있으니까 String 이렇게 하나하나안적음 리턴값 : 없음 저장하는게 끝이니까
	 * 
	 * 
	 */

	// private객체로 선언하면

	public void insertBoard(BoardVO board) {
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			// 데이터베이스 tbl_board 테이블에 새글등록
			conn = new ConnectionFactory().getConnection();

			StringBuilder sql = new StringBuilder();
			sql.append("insert into tbl_board(no, title, writer, content) ");
			sql.append(" values(seq_tbl_board_no.nextval, ?, ?, ?) ");

			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getWriter());
			pstmt.setString(3, board.getContent());
			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			JDBCClose.close(pstmt, conn);
		}

	}

	/*
	 * 게시판 번호에 해당 게시글 조회 // list.jsp에 목록뜬걸 클릭해서 넘어왔으니까 한개의 게시물이 무조건 select되서
	 * rs.next();
	 */
	public BoardVO selectBoardByNo(int boardNo) {

		Connection conn = null;
		PreparedStatement pstmt = null;
		BoardVO board = null; // 리턴하려는 값은 항상 try위에 넣을것

		try {
			conn = new ConnectionFactory().getConnection();
			StringBuilder sql = new StringBuilder();
			sql.append("select no, title, writer, content, view_cnt ");
			sql.append("     , to_char(reg_date, 'yyyy-mm-dd') reg_date ");
			sql.append("  from tbl_board ");
			sql.append(" where no = ? ");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, boardNo);
			ResultSet rs = pstmt.executeQuery();

			if (rs.next()) {
				int no = rs.getInt("no");
				String title = rs.getString("title");
				String writer = rs.getString("writer");
				String content = rs.getString("content");
				int viewCnt = rs.getInt("view_cnt");
				String regDate = rs.getString("reg_date");

				board = new BoardVO(no, title, writer, content, viewCnt, regDate);

			}
		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			JDBCClose.close(pstmt, conn);
		}

		return board;
	}

	/*
	 * 게시물 수정
	 * 
	 * 수정만하니까 리턴값없음 (제목,작성자,내용)
	 * 
	 * 수정하려면 게시판번호도 알아야하는데 모름 그래서 updateForm에서  넘겨줘야함
	 * <input type ="hidden" name="no" value=" ${param.no }" or board.no />
	 */

	public void updateBoard(BoardVO board) {
		
		Connection conn =null;
		PreparedStatement pstmt =null;
		
		
		try {
			
			conn = new ConnectionFactory().getConnection();
			StringBuilder sql = new StringBuilder();
			sql.append("update tbl_board ");
			sql.append("   set title = ?, writer = ?, content = ? ");
			sql.append(" where no = ? ");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getWriter());
			pstmt.setString(3, board.getContent());
			pstmt.setInt(4, board.getNo());
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			JDBCClose.close(pstmt, conn);
		}
		
		
	 
 }

}
