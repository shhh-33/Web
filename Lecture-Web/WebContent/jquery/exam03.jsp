<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.6.0.min.js"></script>
<script>
 $(document).ready(function(){
  alert('dd')	 
  //$('ul li').hide() //ul밑에 li 숨김
  //$('ul li:first').hide() //ul밑에 li의 첫번째것 숨김 ->호랑이
  //$('ul li:last').hide() // 마지막 짜장면 지워짐
  //$('ul li:first-child').hide()  //호랑이 떡볶이 지워짐
    $('ul li:last-child').hide() //코끼리 짜장면
  
 })
 


</script>
</head>
<body>
	<h1>동물종류</h1>
	<ul>
		<li>호랑이</li>
		<li>사자</li>
		<li>코끼리</li>
	</ul>
	<h1>음식종류</h1>
	<ul>
		<li>떡볶이</li>
		<li>라면</li>
		<li>순대</li>
		<li>짜장면</li>
	</ul>


</body>
</html>