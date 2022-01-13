<%@page import="kr.co.mlec.board.vo.BoardVO"%>
<%@page import="kr.co.mlec.board.dao.BoardDAO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="kr.co.mlec.util.ConnectionFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- 작업순서
     1.writeForm.jsp에서 넘겨준 제목(title), 글쓴이(writer), 내용(content) 추출
     2.tbl_board 테이블에 추출된 정보로 새 게시글 삽입(insert)
     
    -새로 창 뜰 필요가 없어서 html 지움
--%>

<%
	//요청객체 데이터 인코딩 -- 포스트 방식
	request.setCharacterEncoding("utf-8");
	// 요청객체에서 입력한 데이터 추출
	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	String content = request.getParameter("content");

	
	BoardVO board = new BoardVO();// 위의 string객체들 넣어줌
	//데이터 집어넣을땐 setter 가져올땐 getter
	board.setTitle(title);
	board.setWriter(writer);
	board.setContent(content);
	
	//데이터베이스 tbl_board 테이블에 새글등록
	BoardDAO dao = new BoardDAO();
	dao.insertBoard(board);//  set으로 가져온거 board 매개변수로 넣어서 dao의 insertBoard호출
	
	
	
%>

<script>
	alert('새글 등록 완료')
	location.href = 'list.jsp'
</script>




