<%@page import="kr.co.mlec.util.JDBCClose"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="kr.co.mlec.util.ConnectionFactory"%>
<%
	/* tbl board에서 전체게시글(번호,제목,작성자,등록일) 조회 */

	Connection conn = new ConnectionFactory().getConnection();
	StringBuilder sql = new StringBuilder();
	sql.append("select no, title, writer, to_char(reg_date,'yyyy-mm-dd') as reg_date ");
	sql.append(" from tbl_board ");
	sql.append(" order by no desc ");
	PreparedStatement pstmt = conn.prepareStatement(sql.toString());
   /*SELECT의 결과를 저장하는 객체  = ResultSet 객체에 결과값을 담기             */
	ResultSet rs = pstmt.executeQuery();
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
hr, table {
	width: 80%
}
</style>


<script>
	function goWriteForm() {
		location.href="writeForm.jsp"
	}
</script>


</head>
<body>
	<div align="center">
		<hr>
		<h2>게시판 목록</h2>
		<hr>
		<br>
		<table border="1">
			<tr>
				<th width="7%">번호</th>
				<th>제목</th>
				<th width="16%">글쓴이</th>
				<th width="20%">등록일</th>

			</tr>

			<%
				//반복..
				while (rs.next()) {
					int no = rs.getInt("no");
					String title = rs.getString("title");
					String writer = rs.getString("writer");
					String regDate = rs.getString("reg_date");
			%>
			<tr>
				<td><%=no%></td>
				<%-- 변수여야함--%>
				<td><%=title%></td>
				<td><%=writer%></td>
				<td><%=regDate%></td>
			</tr>
			<%
				}
			%>

		</table>
		<br>
		<button onclick="goWriteForm()">새글등록</button>
	</div>

</body>
</html>

<%
	JDBCClose.close(pstmt, conn);
%>

