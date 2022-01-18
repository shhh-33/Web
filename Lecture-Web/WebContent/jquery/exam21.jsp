<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.c1 {
	font-style: italic
}

.c2 {
	color: green
}

.blue {
	color: blue
}

.red {
	color: red
}
/* red가 맨마지막에 실행 */

</style>
<script src="http://code.jquery.com/jquery-3.6.0.min.js">
	
</script>
<script>
	$(document).ready(function() {
		$('button').click(function() {

			$('body h1').addClass('red')
			$('body *').addClass('blue')
			$('h1').removeClass('red')
			
		})
	})
</script>
</head>
<body>
	<!--h1의 클래스 명이 c1,c2다 ,,,위에 style -->
	<h1 class="c1 c2">문장1</h1>
	<h1>문장2</h1>
	<p>단락</p>
	<div>구역</div>

	<button>클릭</button>

</body>
</html>