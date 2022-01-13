<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="common.jsp"%>
<%--common 내용 집어넣고 싶음 --%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	msg :<%=msg%> <br>
	<h2>인클루드 전</h2>

	<!-- one 내용 집어넣고 싶음 -->
	<%@ include file="one.jsp"%>

	<h2>인클루드 후</h2>

</body>
</html>