<%@page import="kr.co.mlec.util.JDBCClose"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="kr.co.mlec.util.ConnectionFactory"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
	

	Connection conn = new ConnectionFactory().getConnection();
	StringBuilder sql = new StringBuilder();
	sql.append("select id, name, password, email_id, tel1, to_char(reg_date,'yyyy-mm-dd') as reg_date ");
	sql.append(" from t_member ");
	sql.append(" order by id desc ");
	PreparedStatement pstmt = conn.prepareStatement(sql.toString());
   /*SELECT의 결과를 저장하는 객체  = ResultSet 객체에 결과값을 담기             */
	ResultSet rs = pstmt.executeQuery();
%>
	
	

	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 리스트</title>

<style>
hr, table {
	width: 80%
}
</style>

<script>
	function goWriteMForm() {
		location.href = "mWriteForm.jsp"
	}
</script>




</head>
<body>
	<div align="center">
		<hr>
		<h2>회원 목록</h2>
		<hr>
		<br>
		<table border="1">
			<tr>
				<th width="7%">id</th>
				<th width="7%">이름</th>
				<th width="7%">password</th>
				<th width="7%">이메일</th>
				<th width="7%">번호</th>
				<th width="7%">가입일</th>
			</tr>



			<%
				//반복..
				while (rs.next()) {
					String id = rs.getString("id");
					String name = rs.getString("name");
					String password = rs.getString("password");
					String email_id = rs.getString("email_id");
					String email_domain = rs.getString("email_domain");
					String tel1 = rs.getString("tel1");
					String tel2 = rs.getString("tel2");
					String tel3 = rs.getString("tel3");
					String post = rs.getString("post");
					String basic_addr = rs.getString("basic_addr");
					String type = rs.getString("type");
					String regDate = rs.getString("regDate");
			%>
			<tr>
				<td><%=id%></td>
				<td><%=name%></td>
				<td><%=password%></td>
				<td><%=email_id%></td>
				<td><%=tel1%></td>
				<td><%=regDate%></td>
			</tr>
			<%
				}
			%>



		</table>
		<br>
		<button onclick="goWriteMForm()">새 회원 등록</button>

	</div>


</body>
</html>

<%
	JDBCClose.close(pstmt, conn);
%>


