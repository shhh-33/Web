<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.6.0.min.js">
</script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js" integrity="sha256-T0Vest3yCU7pafRw9r+settMBX6JkKN06dqBnpQ8d30=" crossorigin="anonymous"></script>
	

<script>
	$(document).ready(function() {
		//alert('d')
		//$('a').hide()
		//$('a[target]').hide() //다음 사라짐
		//$('a[href="http://www.naver.com"]').hide() //네이버 사라짐

		//$('input[type=text]').hide()
		//$('input:text').hide() //이런건 input태그만 가능함 text인거 숨김
		//$('input:button').hide()  //버튼 1
 		//$('button').hide() // 버튼2 
		//$(':text').hide() // type이 text 숨겨라
		//$(':button').hide() // 
		
		//버튼클릭->함수호출
		$(':button').click(function(){
			//$('hr').hide() //선사라짐
			$(this).hide("drop" , { direction: "down" }, "slow") //버튼 사라짐
		}) 

	})
</script>

</head>
<body>
	<h2>a Tag전</h2>
	<a href="http://www.naver.com">네이버</a>
	<a href="http://www.daum.net" target="_blank">다음</a>
	<h2>a Tag후</h2>
	<hr>
	<input type="text">
	<input type="button" value="버튼 1">
	<button>버튼2</button>
	<hr>

</body>
</html>