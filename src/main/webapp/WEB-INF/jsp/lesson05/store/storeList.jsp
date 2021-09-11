<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우리동네가게</title>
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
			<!-- 반복문으로 가게정보 가져오기 -->
			<c:forEach var="store" items="${StoreList}">
				<!-- click-> 가게별 리뷰(desc, 별점) -->
				<a href="/lesson05/quiz06/2?storeId=${store.id}&storeName=${store.name}">
					<div class="border border-info m-1 p-3">
						<b>${store.name}</b><br> <!-- 가게이름 -->
						<small>${store.phoneNumber}</small><br> <!-- 전화번호 -->
						<small>${store.address}</small> <!-- 주소 -->
					</div>
				</a>	
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