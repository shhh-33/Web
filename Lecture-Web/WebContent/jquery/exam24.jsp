<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<style>
img {
	width: 200px;
	height: 200px;
	float: left;
 }
 
 button{
  height: 200px;
  float: left;
 }
 
 #next{
 float: right;
 }
</style>

<script src="http://code.jquery.com/jquery-3.6.0.min.js">
</script>
<script>
	$(document).ready(function() {

		$('#next').click(function(){
			$('img').last().prependTo('#gallery')
		})
		
		$('#prev').click(function(){
			$('img').first().appendTo('#gallery')
		})
		
		setInterval(function(){
			$('#next').trigger('click') //이벤트 없어도 강제 발생
			
		},2000)
			
	})
</script>
</head>
<body>

     <button id ="prev">prev</button>
     <span id =gallery>
     <img src="/Lecture-Web/html/images/dog1.jpg">
	<img src="/Lecture-Web/html/images/dog3.jpg">
	<img src="/Lecture-Web/html/images/cat.jpg">
	<img src="/Lecture-Web/html/images/cat2.png">
	<br>
     </span>
	
	<button id="next">next</button>

</body>
</html>