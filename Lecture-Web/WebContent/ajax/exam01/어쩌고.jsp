
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
   #searchResult {
      width: 70%;
      height: 600px;
      border: 1px solid red;
   }

</style>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
   $(document).ready(function() {
      $('#searchBtn').click(function() {
         
         $.ajax({
            url : 'http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json',
            type : 'get',
            data : {
               key : 'beb979870799ed50b841760137631c24',
               targetDt : '20220117',
               itemPerPage : '5' 
            },
            success: function() {
               alert('성공')
            }, error: function() {
               alert('실패')
            }
            
         
         })
      })   
   
})
</script>
</head>
<body>
   <h2>일별 박스오피스 조회서비스</h2>
   검색일 : <input type="date" id="searchDate">
   <button id="searchBtn">조회</button>
   <h3>검색결과</h3>
   <div id="searchResult"></div>
</body>
</html>