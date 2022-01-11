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

	System.out.println("title : " + title);
	System.out.println("writer : " + writer);
	System.out.println("content : " + content);

	//데이터베이스 tbl_board 테이블에 새글등록
	Connection conn = new ConnectionFactory().getConnection();
	StringBuilder sql = new StringBuilder();
	sql.append("insert into tbl_board(no, title, writer, content) ");
	sql.append(" values(seq_tbl_board_no.nextval, ?, ?, ?) ");
	PreparedStatement pstmt = conn.prepareStatement(sql.toString());
	pstmt.setString(1, title);
	pstmt.setString(2, writer);
	pstmt.setString(3, content);
	pstmt.executeUpdate();
%>

<script>
	alert('새글 등록 완료')
	location.href = 'list.jsp'
</script>




