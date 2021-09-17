<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 추가하기</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">

		<h1>즐겨 찾기 추가하기</h1>
		<div class="form-group"> 
			<label for="name"><span>제목</span></label><br>
			<input type="text" class="form-control col-10" id="name" name="name"><br>
		</div>
		
		<div class="form-group"> 	
			<label for="url"><span>주소</span><br></label>
			<div class="form-inline">
				<input type="text" class="form-control col-10" id="url" name="url">
				<button type="button" id="urlCheckBtn" class="btn btn-info ml-3">중복확인</button><br>
			</div>
			
			<small id="isDuplicationText" class="text-danger d-none">중복 된 url 입니다.</small>
			<small id="availableUrlText" class="text-success">저장 가능한 url 입니다.</small>
			
		</div>	
			
			<button type="button" id="addBtn" class="btn btn-success col-12">추가</button><br> <!-- ajax사용할때 submit 사용하지 말기,,! -->
		
	</div>
	<script>
		$(document).ready(function() {
			
			// quiz02 ) url 중복 확인
			$('#urlCheckBtn').on('click', function () {
				// alert("중복확인 버튼 클릭");
				let url = $('#url').val().trim();
				if (url == ''){
					alert("검사할 url을 입력해주세요.");
					return;
				}
				
				$.ajax({
					 type: 'post'
					, url: '/lesson06/quiz01/4'
					, data: {'url': url}
					, success: function(data) {
						// 중복이라면 => {"isDubplication":true}
						if (data.isDuplication == true) {
							// 중복
							$('#isDuplicationText').removeClass('d-none'); 
							$('#availableUrlText').addClass('d-none');
						} else {
							// 사용가능
							$('#availableUrlText').removeClass('d-none');
							$('#isDuplicationText').addClass('d-none'); 
						}	
					}
					, error: function(e) {
						alert("error" + e);
					}
					
				});
				
			});
			
			
			
			
			// quiz01 )
			
			$('#addBtn').on('click', function(e) {
				//  e.preventDefalut(); (button태그는 기본동작이 없기 떄문에 없어도 됨!)
				
				// validation 
				let name = $('#name').val().trim();
				if (name == ''){
					alert("제목을 입력하세요.");
					return;
				}
				let url = $('#url').val().trim();
				if (url == ''){
					alert("주소를 입력하세요.");
					return;
				}
				if (url.startsWith('http') == false && url.startsWith('https') == false) {
					alert("주소 형식이 잘못되었습니다.");
					return;
				}
				
				// ajax 통신
				$.ajax({
					type: 'post'
					, url: '/lesson06/quiz01/2'
					, data: {"name":name, "url":url}
					// , dataType: 'json' // response body	
					, success: function(data) {
						// AJAX 통신 후 response body로 String 또는 JSON이 리턴되어야 한다.
						// json으로 받은 경우는 alert(date.result); 
						// alert(data);
						if(data.result == 'success') {
							location.href="/lesson06/quiz01/3";
						} else {
							alert("실패했습니다.") // 로직상 실패
						}
					}
					, error: function(e) {
						alert("에러" + e);
					}
				
				
				});
				
				
				
			});
			
			
				
		});
			
			
		
	
	</script>
</body>
</html>