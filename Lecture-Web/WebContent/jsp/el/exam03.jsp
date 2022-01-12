<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	/*
	 객체 등록 : 공유영역.setAttribute("이름", "값")
	 공유영역 4가지 : pageContext , request, session, application
	          범위      : 작                                                          ~ 큰  -- 차례로 데이터 찾음
	*/
	
	pageContext.setAttribute("msg", "page영역에 객체등록");
	String msg =(String)pageContext.getAttribute("msg"); //객체타입이라 강제형변환
	
	request.setAttribute("msg","request영역에 객체등록");


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 msg : <%= pageContext.getAttribute("msg") %><br>
 msg : <%=msg %><br>
 
 <%--
    EL에서의 공유영역 4가지 : pageScope, requestScope, sessionScope, applicationScope
  --%>
 msg : ${ msg }<br>
 request msg : ${ requestScope.msg }<br>
 session msg : ${ sessionScope.msg }<br>
 
 
</body>
</html>