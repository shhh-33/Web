<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



<link rel="stylesheet" href="/Mission-Web/css/layout.css">
<link rel="stylesheet" href="/Mission-Web/css/board.css">
<Style>
hr, table {
	width: 40%
}
</Style>

<script src="${ pageContext.request.contextPath }/resources/js/myjs.js">
	
</script>


<script>
	function checkForm() {
		let f = document.loginForm;
		if (isNull(f.id, '아이디를 입력하세요'))
			return false
		if (isNull(f.password, '패스워드를 입력하세요'))
			return false
		return true

	}
</script>


</head>
<body>
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp" />
	</header>
	<section>

		<div align="center">
			<hr>
			<h2>로그인</h2>
			<form name="loginForm" method="post" action="${pageContext.request.contextPath}/loginProcess.do"
				  onsubmit="return checkForm()">
				<table>
					<tr>
						<th>ID</th>
						<td><input type="text" name="id"></td>
					</tr>
					<tr>
						<th>Password</th>
						<td><input type="password" name="password"></td>
					</tr>
				</table>
				<br>
				<button type="submit">로그인</button>


			</form>
		</div>

	</section>
	<footer>
		<%@ include file="/jsp/include/footer.jsp"%>
	</footer>
</body>
</html>