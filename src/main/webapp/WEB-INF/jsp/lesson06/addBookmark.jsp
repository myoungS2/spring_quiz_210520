<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 추가하기</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<h1>즐겨 찾기 추가하기</h1>
			<span>제목</span><br>
			<input type="text" class="form-control" name="name"><br>
			<span>주소</span><br>
			<input type="text" class="form-control" name="url"><br>
			<input type="button" id="addBtn" class="btn btn-success" value="추가"><br> <!-- ajax사용할때 submit 사용하지 말기,,! -->
	</div>
	
	<script>

		$(document).ready(function() {
			$('#addBtn').on('click', function(e) {
				//  e.preventDefalut(); 
				
				// validation 
				let name = $('input[name=name]').val().trim();
				if (name == ''){
					alert("제목을 입력하세요.");
					return false;
				}
				let url = $('input[name=url]').val();
				if (url == ''){
					alert("주소를 입력하세요.");
					return false;
				}
				if (url.statsWith("http" || "https") == false) {
					alert("http 혹은 https로 시작하는 주소를 입력하세요.");
					return false;
				}
				
				// ajax 통신
				$.ajax({
					type: 'POST'
					, url: '/lesson06/quiz01/2'
					, data: {"name":name, "url":url}
					, success: function(data) {
						location.href="/lesson06/quiz01/3";
					}
					, error: function(e){
						alert("에러" + e);
					}
				});
				
				
				
			});
			
			
			
			
		});
		
	
	</script>
</body>
</html>