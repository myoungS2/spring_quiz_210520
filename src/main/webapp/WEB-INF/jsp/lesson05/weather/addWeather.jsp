<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날씨입력</title>
 <link rel="stylesheet" href="/CSS/weather_style.css" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	  <div id="wrap">
            <div class="d-flex">
                <nav>
					<div class="logo1 d-flex mt-4">
						<img class="mr-2" src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Emblem_of_the_Government_of_the_Republic_of_Korea.svg/800px-Emblem_of_the_Government_of_the_Republic_of_Korea.svg.png" 
						alt="로고(컬러)">
						<span class="text-white logo-text">기상청</span>
					</div>
					<div>
						<ul class="nav flex-column mt-4">
							 <li class="nav-item font-weight-bold"><a href="/lesson05/quiz05/1" class="nav-link">날씨</a></li>
							 <li class="nav-item font-weight-bold"><a href="/lesson05/quiz05/2" class="nav-link">날씨입력</a></li> <%-- 날씨입력 jsp로 넘겨주기..! --%>
							 <li class="nav-item font-weight-bold"><a href="#" class="nav-link">테마날씨</a></li>
							 <li class="nav-item font-weight-bold"><a href="#" class="nav-link">관측기후</a></li>
						</ul>
					</div>
				</nav>
                <section class="mt-3 ml-5">
                    <h3>날씨 입력</h3>
					<form method="post" action="/lesson05/quiz05/3">
	                    <div class="d-flex justify-content-between mt-5">
	                        <div class="d-flex align-items-center">
	                            <div class="input-label">날짜</div> 
	                            <!-- datepicker 사용해주기..! -->
	                            <input type="text" class="form-control" id="date" name="date"> <!-- model의 필드명과 일치하는지 확인할 것 -->
	                        </div>
	                        <div class="d-flex align-items-center">
	                            <div class="input-label">날씨</div> 
	                            <select class="form-control" name="weather">
	                                <option>맑음</option>
	                                <option>구름조금</option>
	                                <option>흐림</option>
	                                <option>비</option>
	                            </select>
	                        </div>
	
	                        <div class="d-flex align-items-center">
	                            <div class="input-label">미세먼지</div> 
	                            <select class="form-control" name="microDust">
	                                <option>좋음</option>
	                                <option>보통</option>
	                                <option>나쁨</option>
	                                <option>최악</option>
	                            </select>
	                        </div>
	                    </div>
	
	                    <div class="d-flex justify-content-between mt-5">
	                        <div class="d-flex align-items-center">
	                            <div class="input-label">기온</div> 
	                            <div class="input-group">
	                                <input type="text" class="form-control" name="temperatures">
	                                <div class="input-group-append">
	                                    <span class="input-group-text">℃</span>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="d-flex align-items-center">
	                            <div class="input-label">강수량</div> 
	                            <div class="input-group">
	                                <input type="text" class="form-control" name="precipitation">
	                                    <div class="input-group-append">
	                                        <span class="input-group-text">mm</span>
	                                </div>
	                            </div>
	                        </div>
	                        
	                        <div class="d-flex align-items-center">
	                            <div class="input-label">풍속</div> 
	                            <div class="input-group">
	                                <input type="text" class="form-control" name="windSpeed">
	                                    <div class="input-group-append">
	                                        <span class="input-group-text">km/h</span>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="text-right mt-4 mb-5">
	                        <input type="submit" class="btn btn-success" value="저장">
	                    </div>
                    </form>
                </section>
            </div>
           <footer class="d-flex">
				<div class="logo2">
					<img src="https://www.weather.go.kr/w/resources/image/foot_logo.png" alt="로고(흑백)" width="200px">
				</div>
				<div class="copyright">
					<small>(07062) 서울시 동작구 여의대방로16길 61<br> 
					Copyright@2020 KMA. All Rights RESERVED.		
					</small>
				</div>
			</footer>
        </div>
</body>
</html>