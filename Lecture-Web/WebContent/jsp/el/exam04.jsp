<%@page import="kr.co.mlec.board.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

   BoardVO b = new BoardVO();
   b.setNo(10);
   b.setTitle("제목입니다");
   
   //pageContext영역에 객체 등록
   //이름 : board 값 : 생성된 BoardVO객체
   pageContext.setAttribute("board", b);// b가 가리키고 있는 boardvo객체를 board란 이름으로 넣어줌
   
  

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

   no : <%= b.getNo() %><br>
   no : <%= ((BoardVO)pageContext.getAttribute("board")).getNo() %><br>
   title : <%= b.getTitle() %><br>
   <hr>
   el no : ${ board.no }<br>
   el title : ${board.title }<br>
   el title : ${ board['title']}
  <%--el aaa : ${ board.aaa }<br>  : 오류 . 이 getter --%>

</body>
</html>