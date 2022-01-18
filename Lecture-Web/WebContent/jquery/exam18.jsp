<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="js/jquery-3.6.0.min.js">
	
</script>
<script>
	$(document).ready(function() {
		$('#btn01').click(function() {

			/* 불편하니까 jquery로
			
			// <h1>세번째 문장 </h1>
			let h1Tag = document.createElement('h1')
			let text = document.createTextNode('세번째 문장')
			h1Tag.appendChild(text)
			//console.log(h1Tag)
			
			//document.getElementsByTagName("div")[0]
			 document.querySelector('div').appendChild(h1Tag) //div여러개있더라도 맨처음거 하나만뽑아서 위처럼 안써도 ..
			 */

			$('div').append('<h1>세번째 문장 </h1>')

		})
		
		$('#btn02').click(function(){
			//자식태그만드는거
		//$('ol').append('<li>노랑</li>') <-맨 마지막 자식으로
		  $('ol').prepend('<li>노랑</li>') //위랑 반대 ,,노랑 맨위로
				
		})
	})
	
	//여러개 있어도 된다 
	$(document).ready(function(){
	   $('#btn03').click(function(){
	    /* 여러번쓰기 싫어 
	     $('body').prepend('<h4>추가된 문장</h4>')	 
	     $('body').prepend('<h3>추가된 문장2</h3>')	 //이게 위에보다 앞으로 감
	     $('body').prepend('<h6>추가된 문장3</h6>')	 //3-2-1순으로..위에부터 실행되니까  */
	     
	     $('body').prepend('<h4>추가된 문장</h4>','<h3>추가된 문장2</h3>','<h6>추가된 문장3</h6>')
	     //위랑 똑같이 출력되려면 순서 바꿔야..
		   
	   })	
	})
	
</script>

</head>
<body>
	<div>
		<h1>첫번째 문장</h1>
		<h1>두번째 문장</h1>

	</div>
	<h2>색상표</h2>
	<ol>
	<!-- 순서를 가지고 있는 리스트  -->
	   <li>빨강</li>
	   <li>파랑</li>
	   <li>초록</li>
	</ol>
	<button id="btn01">문장추가</button>
	<button id="btn02">색상추가</button>
	<button id="btn03">본문추가</button>
</body>
</html>