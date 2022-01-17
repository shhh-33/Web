<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
#div01 {
	background-color: yellow;
	height: 150px;
}
</style>
<title>Insert title here</title>
<script src="js/jquery-3.6.0.min.js">
	
</script>
<script>
	$(document).ready(function() {

		/*
		$('#div01').mouseenter(function(){
		
			$(this).css('background-color','pink')
			
		})
		
		$('#div01').mouseleave(function(){
		
			$(this).css('background-color','yellow')
			
		})
		 */

		//위에 두개 합침
		$('#div01').hover(function() {
			$(this).css('background-color', 'green')

		}, function() {

			$(this).css('background-color', 'pink')
		})

		//아이디 : #
		$('#div01').click(function(event) {
			
			console.log(event.pageX,event.pageY)//위치찍힘
			
		})
		
		
		
		$('button').click(function() {

			// $('h1:first').hide(1000) //1초에 걸쳐서 사라짐
			$('h1:first').hide('fast')

		})

		$('body > h1').dblclick(function() {

			$(this).hide(3000)
		}) //1,2,4번째 

	})
</script>
</head>
<body>
	<div id="div01">
		나는 div영역입니다 <br> 마우스를 접근시켜봐
	</div>


	<h1>첫번째 문장</h1>
	<h1>두번째 문장</h1>
	<div>
		<h1>세번째 문장</h1>
	</div>
	<h1>네번째 문장</h1>
	<button>클릭</button>
</body>
</html>