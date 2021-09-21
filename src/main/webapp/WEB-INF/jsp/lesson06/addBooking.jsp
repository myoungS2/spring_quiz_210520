<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약하기</title>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

        <link rel="stylesheet" type="text/css" href="/CSS/booking_style.css">
</head>
<body>
	 <div id="wrap" class="container">

            <header class="d-flex justify-content-center align-items-center">
                <div class="logo display-4">통나무 팬션</div>
            </header>

            <nav>
                <ul class="nav nav-fill">
                    <li class="nav-item"><a href="#" class="nav-link text-white font-weight-bold">팬션소개</a></li>
                    <li class="nav-item"><a href="#" class="nav-link text-white font-weight-bold">객실보기</a></li>
                    <li class="nav-item"><a href="/lesson06/quiz02/4" class="nav-link text-white font-weight-bold">예약하기</a></li>
                    <li class="nav-item"><a href="/lesson06/quiz02/2" class="nav-link text-white font-weight-bold">예약목록</a></li>
                </ul>
            </nav>
            
            <div class="text-center">
            	<h1>예약 목록 보기</h1>
            </div>
            <section class="booking">
            	<div class="form-group">
	            	<label for="name">이름</label>
	            	<input type="text" class="form-control col-5" id="name" name="name">
	            	<label for="date">예약날짜</label> <%-- datePicker 적용하기! --%>
	            	<input type="text" class="form-control col-5" id="date" name="date">
	            	<label for="day">숙박일수</label>
	            	<input type="text" class="form-control col-5" id="day" name="day">
	            	<label for="headcount">숙박인원</label>
	            	<input type="text" class="form-control col-5" id="headcount" name="headcount">
	            	<label for="phoneNumber">전화번호</label>
	            	<input type="text" class="form-control col-5" id="phoneNumber" name="phoneNumber">
            	</div>
            	<button type="button" id="addBtn" class="btn btn-warning col-5">예약하기</button>
            </section>
            
            <footer>
                <div class="address text-secondary m-3">
                    제주특별자치도 제주시 애월읍<br>
                    사업자등록번호: 111-22-255222/ 농어촌민박사업자지정/ 대표: 김동욱 <br>
                    Copyright 2005 tongnamu All right reserved
                </div>
            </footer>
      </div>
      
      <script>
      	$(document).ready(function(){
      		$('#addBtn').on('click', function(){
      			// alert("예약하기 버튼 클릭");
      			
      			// validation check
      			let name = $('#name').val().trim();
      			if (name == ''){
      				alert("이름을 입력하세요.");
      				return;
      			}
      			let date = $('#date').val().trim();
      			if (date == ''){
      				alert("날짜를 선택하세요.");
      				return;
      			}
      			let day = $('#day').val().trim();
      			if (day == ''){
      				alert("숙박일수를 입력하세요.");
      				return;
      			}
      			let headcount = $('#headcount').val().trim();
      			if (headcount == ''){
      				alert("숙박인원수를 입력하세요.");
      				return;
      			}
      			let phoneNumber = $('#phoneNumber').val().trim();
      			if (phoneNumber == ''){
      				alert("전화번호를 입력하세요.");
      				return;
      			}
      			
      			// ajax로 add
      			$.ajax({
      				type: 'post'
      				, url: '/lesson06/quiz02/5'
      				, data: {"name":name, "date":date, "day":day,
      					"headcount":headcount, "phoneNumber":phoneNumber}
      				, success: function(data) {
      					if(data.result == 'success'){
      						alert("예약완료되었습니다.");
      					} else {
      						alert("예약에 실패했습니다.")
      					}
      				}
      				, error: function(e){
      					alert("에러" + e);
      				}
      			}); // ajax close
      			
      		}); // addBtn.on close
      		
      		$('input[name=date]').datepicker({
                minDate: 0 // 오늘이후
                , dateFormat: 'yy-mm-dd'
            }); // datePicker close
      		
      	}); // document close
      </script>
</body>

</html>