<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Core 라이브러리 (1)</title>
</head>
<body>
	<h1>1. JSTL core 변수</h1>
	<c:set var="number1">36</c:set>
	<c:set var="number2">3</c:set>
	
	첫번째 숫자 : ${number1} <br>
	두번째 숫자 : ${number2} <br>
	
	<h1>2. JSTL core 연산</h1>
	더하기 : ${number1 + number2} <br>
	빼기 : ${number1 - number2} <br>
	곱하기 : ${number1 * number2} <br>
	나누기 : ${number1 / number2} <br> 
	
	<h1>3. JSTL core out</h1>
	<c:out value="<title>core out</title>" escapeXml="true" /><br>
	
	<h1>4. JSTL core if</h1>
	
	<c:if test="${(number1 + number2) / 2 >= 10}">
		<h1>${(number1 + number2) / 2}</h1>
	</c:if>
	
	<c:if test="${(number1 + number2) / 2 < 10}">
		<h3>${(number1 + number2) / 2}</h3>
	</c:if>
	
	<h1>5. JSTL core if</h1>
	<c:set var="multi" value="${number1 * number2}" />
	<c:if test="${multi > 100}">
		<c:out value="<script>alert('너무 큰 수입니다.');</script>" escapeXml="false" />
	</c:if>
	
</body>
</html>