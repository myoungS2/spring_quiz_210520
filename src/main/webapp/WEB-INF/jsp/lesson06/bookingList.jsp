<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약목록</title>
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
            <section class="bookingList">
            <div class="text-center">
            	<h1>예약 목록 보기</h1>
            </div>
            <table class="table text-center">
				<thead>
					<tr>
						<th>이름</th>
						<th>예약날짜</th>
						<th>숙박일수</th>
						<th>숙박인원</th>
						<th>전화번호</th>
						<th>예약상태</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="booking" items="${bookingList}">
					<tr>
						<td>${booking.name}</td>
						<td><fmt:formatDate value="${booking.date}" pattern="yyyy년 M월 d일" /></td>
						<td>${booking.day}</td>
						<td>${booking.headcount}</td>
						<td>${booking.phoneNumber}</td>
						<td>
							<c:choose>
								<c:when test="${booking.state eq  '대기중'}">
									<span class="text-primary">${booking.state}</span>
								</c:when>
								<c:when test="${booking.state eq  '확정'}">
									<span class="text-success">${booking.state}</span>
								</c:when>
								<c:when test="${booking.state eq  '취소'}">
									<span class="text-danger">${booking.state}</span>
								</c:when>
								<c:otherwise>
									${booking.state}
								</c:otherwise>
							</c:choose>						
						</td>
						<td><button type="button" class="removeBtn btn btn-danger" data-booking-id="${booking.id}">삭제</button></td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
            
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
       	$(document).ready(function() {
       		$('.removeBtn').on('click', function() {
				// alert("삭제 버튼 클릭");	
			
				let bookingId = $(this).data('booking-id');	 
				alert(bookingId); 
				
				// ajax로 delete
				$.ajax({
					type:'post'
					, url: '/lesson06/quiz02/3'
					, success: function(data) {
						if(data.result == 'success'){	
							alert("삭제 성공");
							// 새로고침
							location.reload();
						} else {
							alert("삭제 실패");
						}
					}
					, error: function(e) {
						alert("error:" + e);
					}
				}) // ajax close
			}); // removeBtn.on close
					
			 		
       	}); // document close
       
       </script>
       
       
</body>
</html>