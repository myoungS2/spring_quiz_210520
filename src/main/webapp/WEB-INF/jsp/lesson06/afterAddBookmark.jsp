<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨 찾기 목록</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<h1>즐겨 찾기 목록</h1>
		<table class="table text-center">
			<thead>
				<tr>
					<th>No.</th>
					<th>이름</th>
					<th>주소</th>
					<th></th>
				</tr>
			</thead>
			<!-- 반복문 -->
			<tbody>
				<c:forEach var="bookmark" items="${bookmarkList}">
					<tr>
						<td>${bookmark.id}</td>
						<td>${bookmark.name}</td>
						<td>${bookmark.url}</td>
						<%-- (1) value에 원하는 값을 담아 놓는다. --%>
						<%-- <td><button type="button" name="delBtn" class="removeBtn btn btn-danger" value="${bookmark.id}">삭제</button></td> id가 반복문안에 여러개 생기게 됨 --%>
						<%-- (2) data를 이용해서 태그에 값을 임시 저장하기. --%>
						<td><button type="button" name="delBtn" class="removeBtn btn btn-danger" data-bookmark-id="${bookmark.id}">삭제</button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	
	<script>
		$(document).ready(function() {
			// (1) value에 원하는 값을 담아 놓는다.
			// td밑에 -> 버튼-> 이름이 delBtn인
			
			/* $('td').on('click', 'button[name=delBtn]', function(e){
				// alert("삭제 버튼 클릭");
				// alert($('.removeBtn').val()); // 여러버튼 중 가장 처음의 버튼의 값을 가져오게 됨(class가 같으니까)
				// alert($(this).val()); // 내가 클릭한 바로 '그' 버튼 -> this로 가져옴
				alert(e.target.value); // e.target 내가 클릭한 바로 그 버튼의 value를 가져옴
			}); */
	
			
			// (2) data를 이용해서 태그에 값을 임시 저장하기. 
			// 태그 : 태그 안에 data-bookmark-id  => data- 그 뒤부터는 우리가 이름을 정한다.(대문자 사용x-> 카멜케이스x)
			$('.removeBtn').on('click', function(){
				// alert("삭제 버튼 클릭");	
				let bookmarkId = $(this).data('bookmark-id');
				// alert(bookmarkId);
				
				$.ajax({
					type:'post'
					, url: '/lesson06/quiz01/5' // view가 아닌 response body로 데이터를 내려주는 url이어야함!
					, data: {'bookmark_id':bookmarkId}
					, success: function(data) {
						// json: 성공 : {"result":"success"} 실패 : {"result":"fail"}
						if (data.result == 'success') {
							// alert("성공");
							// 새로고침
							location.reload();
						} else {
							alert("삭제에 실패했습니다.")
						}
					}
					, error: function(e) {
						alert("error:" + e);
					}
					
				})
				
				
				
			});
		});
	</script>
	
	
</body>
</html>