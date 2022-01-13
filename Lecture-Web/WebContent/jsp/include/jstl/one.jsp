<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<hr>
 id : ${id }<br>
 <h3>날라온 파라미터 정보</h3>
 name : ${param.name }<br>
 age : ${param.age }<br>
<h2> 인클루드된 내용</h2>
<h2> 인클루드된 내용</h2>
<h2> 인클루드된 내용</h2>
<h2> 인클루드된 내용</h2>
<hr>
<c:set var = "phone" value="010-222-2222" scope ="request" />



<%-- 공통부분 쓸 때 이렇게 다 날리고 적음 

.jsp가 서블릿코드로 변환되면서 포함이 된다
--%>