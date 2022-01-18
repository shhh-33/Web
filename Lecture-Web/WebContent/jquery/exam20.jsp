<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>

<style>
div {
	border: 1px solid red;
	padding: 10px;
}
</style>


<script src="http://code.jquery.com/jquery-3.6.0.min.js">
	
</script>
<script>
	$(document).ready(function() {
		$('button').click(function() {
			/* 
             자바스크립트			
			let pTags = document.getElementsByTagName("p")
			for ( let i in pTags) {
				pTags[0].parentNode.removeChild(pTags[0])
			} */  
			
			//jquery 함수
			//$('p').remove()
			//$('div').remove() //박 빼고 다사라짐 => div태그 다 삭제
			//$('div').empty() //div내용만 지우고 싶어 =>div 하위태그들만 삭제
			//$('p').remove('.c01') //p태그 중에 클래스 c01인거 지워
			//$('p.c01').remove() 
			$('p').remove('.c01,#id01') 
			
		
		})
	})
</script>

</head>
<body>
	<div>
		<p id="id01">홍길동</p>
		<mark class="c01"> 윤길동</mark>
		<br> 고길동 <br>
		<p class="c01">한길동</p>
		<p>김길동</p>
	</div>

	<p class="c01">박길동</p>

	<button>삭제</button>
</body>
</html>