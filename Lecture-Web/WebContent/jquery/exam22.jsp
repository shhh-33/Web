<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

body *{
 display: block;
 border: 1px solid red;
 padding: 10px;
 margin: 10px;
}

.blue{
  border-color : blue
}
</style>
<script src="http://code.jquery.com/jquery-3.6.0.min.js">
	
</script>
<script>
	$(document).ready(function() {
       
		//$('span').parent().css('border-color', 'blue') //p태그
		//$('span').parent().addClass('blue') //선조들 다 ........
		//$('span').parents('div').addClass('blue') //선조중 div에만
		//$('span').parentsUntill('div').addClass('blue') //div나오기 전까지
		
		//$('#ancester').children().addClass('blue') //아이디 저거인 후손들 블루 
		//$('#ancester').children('#div02').addClass('blue') //아이디 저거인 후손들 블루 
		//후손 접근하기 힘들어서 바로아래라고 써줘야
		//안먹힘 $('#ancester').children('ul').addClass('blue') 
		$('#ancester').find('ul').addClass('blue') 
		
		
	})
</script>

</head>
<body>

	<div id="ancester">div
		<div id="div01">div
		
		<ul>ul
			<li>li 
			    <span>span</span>
			</li>
		</ul>
	</div>
 </div>
	<div id="div02">div
		<p>p
			 <span>span</span>
		</p>

	</div>

</body>
</html>