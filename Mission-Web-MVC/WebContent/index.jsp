<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%--  <a href="<%=request.getContextPath() %>/board/list.do">게시판</a> --%>
  <!--공유영역에 있는 애 아니라 써  -->
 <a href ="${pageContext.request.contextPath }/board/list.do">게시판</a>
 <a href ="${pageContext.request.contextPath }/board/writeForm.do">새글등록</a>
</body>
</html>