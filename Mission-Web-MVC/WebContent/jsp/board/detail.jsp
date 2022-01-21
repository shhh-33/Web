<%@page import="kr.co.mlec.board.vo.BoardVO"%>
<%@page import="kr.co.mlec.board.dao.BoardDAO"%>
<%@page import="kr.co.mlec.util.JDBCClose"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="kr.co.mlec.util.ConnectionFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 상세페이지</title>


<link rel = "stylesheet" href="/Mission-Web/css/layout.css">
<link rel = "stylesheet" href="/Mission-Web/css/board.css">

<script>

function doAction(type){
	//alert('!!') board.no 써도 ㅇ
	
	switch(type){
	case 'U' : 
		location.href ="updateForm.jsp?no=${param.no}"
		 break;
	case 'D' :	 
		 break;
	case 'L' :
		location.href ="list.jsp"
		break;	
	}
	
	
}

</script>

</head>
</head>
<body>
   <header>
      <jsp:include page="/jsp/include/topMenu.jsp" />
   </header>
   <section>
    <div align="center">
		<hr>
		<h2>게시판 상세</h2>
		<hr>
		<br>
		<table border="1">
			<tr>
				<th width="25%">번호</th>
				<td>${ board.no }</td>
			</tr>
			<tr>
				<th width ="25%">작성자</th>
				<td>${ board.writer }</td>
			</tr>
			<tr>
				<th width ="25%">내용</th>
				<td>${ board.content }</td>
			</tr>
			<tr>
				<th width ="25%">조회수</th>
				<td>${ board.viewCnt }</td>
			</tr>
			<tr>
				<th width ="25%">등록일</th>
				<td>${ board.regDate }</td>
			</tr>
			<tr>
				<th width ="25%">첨부파일</th>
				<td>
				 <c:forEach items="${ fileList }" var="file">
				   <a href = "${ pageContext.request.contextPath }/upload/${ file.fileSaveName}">
				    ${ file.fileOriName }
				   
				   </a>
				     (${file.fileSize } bytes)<br>
				      
				 </c:forEach>
				
				</td>
			</tr>



 		</table>
 		<br>
 		<button onclick ="doAction('U')">수정</button>
 		<button onclick ="doAction('D')">삭제</button>
 		<button onclick ="doAction('L')">목록</button>
	</div>

   </section>    
   <footer>
      <%@ include file="/jsp/include/footer.jsp" %>
   </footer>   
</body>
</html>






