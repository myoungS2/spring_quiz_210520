<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="/CSS/store_style.css" type="text/css">

 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div id="wrap" class="container">
		<header class="bg-info d-flex align-items-center">
			<div class="logo text-center ml-2">
			배탈의 민족
			</div>
		</header>
		<section class="border border-info p-3">
			<c:forEach var="review" items="${review}">
				<c:if test="${review.review} eq null">
					<h1>작성 된 리뷰가 없습니다.</h1>
				</c:if>
				<div class="border border-info m-1 p-3">
					<display>${storeName}-리뷰</display>
					<b>${review.userName}</b><span>${review.point}</span><!-- 별점(img) 적용하기 -->
					<small class="text-secondary">${review.createdAt}</small><br> <!-- 날짜 fmt 적용하기 -->
					<span>${review.review}</span>
					<span>${review.menu}</span>
				</div>
			</c:forEach>
		</section>
		<footer>
			<div class="ml-2">
				<span>(주)우와한형제</span><br>
				<small class="text-secondary">고객센터 : 1500-1500</small>
			</div>	
		</footer>
	</div>
</body>
</html>