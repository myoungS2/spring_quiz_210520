<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL fmt 라이브러리</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<%-- 1. JSTL Formatter 숫자, 비율 --%>
	<div class="container">
		<h1>1. 후보자 득표율</h1>
		<table class="table text-center">
			<thead>
				<tr>
					<th>기호</th>
					<th>득표수</th>
					<th>득표율</th>
				</tr>
			</thead>
			<c:forEach var="candidate" items="${candidates}" varStatus="status">
			<tbody>
				<tr>
					<td>${status.count}</td>
					<fmt:formatNumber var="votes" value="${cadidate}" type="number"/>
					<td>${votes}</td>
					<c:set var="totalVote" value="1000000" />
					<fmt:formatNumber var="turnout" value="${votes / totalVote}"  type="percent" />
					<td>${turnout}</td>
				</tr>
			</tbody>
			</c:forEach>
		</table>
	<%-- 2. JSTL Formatter 통화, 날짜 --%>	
		<h1>2. 카드명세서</h1>
		<table class="table text-center">
			<thead>
				<tr>
					<th>사용처</th>
					<th>가격</th>
					<th>사용날짜</th>
					<th>할부</th>
				</tr>
			</thead>
			<c:forEach var="cardbill" items="${cardbills}">
			<tbody>
				<tr>
					<td>${cardbill.store}</td>
					<fmt:formatNumber var="pay" value="${cardbill.pay}" type="number" />
					<td>${pay}</td>
					<fmt:formatDate var="datePattern" value="${cardbill.date}" pattern="yyyy년 mm월 dd일" />
					<td>${datePattern}</td>
					<td>${cardbill.installment}</td>
				</tr>
			</tbody>
			</c:forEach>
		</table>
	</div>
</body>
</html>