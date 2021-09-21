<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>통나무 팬션</title>
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

            <section class="banner">
                 <img id="bannerImage" src="/images/banner1.jpg" alt="banner" width="1110" height="500">
            </section>
            
            <section class="reserve d-flex">
                <section class="real-time-reserved col-4 d-flex justify-content-center align-items-center">
                    <div class="display-4 text-white">
                        실시간 <br> 예약하기
                    </div>
                </section>
                <section class="confirm col-4">
                    <div class="text-white m-3">
                        <span class="confirm-text mr-3">예약 확인</span>

                        <label for="member">
                        <span>회원</span>
                        </label> 
                        <input type="radio" name="member" id="member" value="member" checked>
                                                                        
                        <label for="nonMember" class="ml-3">
                        <span>비회원</span>
                        </label>
                        <input type="radio" name="member" id="nonMember" value="nonMember">
                        
                    </div>

                    <div id="memberInputbox" class="text-white">
                        <div class="d-flex justify-content-end mr-3 mt-2">
                            <span>아이디:</span>
                            <input type="text" id="id" class="input-form form-control">
                        </div>    

                        <div class="d-flex justify-content-end mr-3 mt-2">
                            <span>비밀번호:</span>
                            <input type="password" class="input-form form-control">
                        </div>    
                        <div class="d-flex justify-content-end mr-3 mt-2">
                            <button type="button" id="password" class="submit-btn btn btn-success">조회하기</button>
                        </div>
                    </div>

                    <div id="nonMemberInputBox" class="text-white d-none">
                        <div class="d-flex justify-content-end mr-3 mt-2">
                            <span>이름</span>
                            <input type="text" id="name" class="input-form form-control">
                        </div>
                        <div class="d-flex justify-content-end mr-3 mt-2">
                            <span>전화번호</span>
                            <input type="text" id="phoneNumber" class="input-form form-control">
                        </div>
                        <div class="d-flex justify-content-end mr-3 mt-2">
                            <span>날짜</span>
                            <input type="text" id="reserveDateText" class="input-form form-control">
                        </div>
                        <div class="d-flex justify-content-end mr-3 mt-2">
                            <button type="button" class="submit-btn btn btn-success">조회하기</button>
                        </div>
                    </div>

                </section>

                <section class="inquiry col-4 d-flex justify-content-center align-items-center">
                   <div class="text-white">
                        <h4 class="font-weight-bold">예약문의:</h4>
                        <h1>010-<br>0000-1111</h1>
                   </div>
                </section>
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
                // 2-1. 회원/ 비회원 선택시 input form 내용이 바뀌도록 설정
                $('input[name=member]').on('change', function() {
                    // alert("멤버 태그 선택");
                    // alert($(this).val()); 어떤 value가 선택되었는지 확인
                    let radioValue = $(this).val();
                    if (radioValue == 'member') {
                         // 회원이 선택된 경우 -> 비회원 상자를 감춘다.
                        $('#memberInputbox').removeClass("d-none");
                        $('#nonMemberInputBox').addClass("d-none");
                    } else {
                        // 비회원이 선택된 경우 -> 회원 상자를 감춘다. 
                        $('#nonMemberInputBox').removeClass("d-none");
                        $('#memberInputbox').addClass("d-none");
                    }
                });

                // 2-2. 날짜 영역 datePicker로 선택하기
                $('#reserveDateText').datepicker({
                    minDate: 0 // 오늘이후
                    , dateFormat: 'yy년 mm월 dd일'
                });

                // 3. 조회하기 버튼 클릭 (유효성 검사)
                $('.submit-btn').on('click' , function() {
                    // alert("조회하기 버튼 클릭"); 회원쪽 비회원쪽 버튼에 같은 클래스를 주었으므로, 같은 이벤트!
                    // 같은 클래스중에 어떤 라디오 버튼을 눌렀는지 확인
                    let memberRadioVal = $('input:radio[name=member]:checked').val(); // input중 type이 radio인 것 중에서 checked 된 것! (디테일하게!)
                    // alert(memberRadioVal);
                    if (memberRadioVal == 'member') {
                        // 회원
                        if ($('#id').val().trim() == '') {
                            alert("아이디를 입력하세요.");
                            return;
                        } 
                        if($('#password').val() == '') {
                            alert("비밀번호를 입력하세요.");
                            return;
                        }

                    } else {
                        // 비회원
                        if ($('#name').val().trim() == '' ) {
                            alert("이름을 입력하세요.");
                            return;
                        }

                        if ($('#phoneNumber').val().trim() == '') {
                            alert("전화번호를 입력하세요.");
                            return;
                        }
                        if ($('#reserveDateText').val() == '') {
                            alert("날짜를 선택하세요.");
                            return;
                        }

                        let phoneNumber = $('#phoneNumber').val().trim();
                        // 방법 1
                        // 010-1111-1111 -> slice, substring 사용 0~3 까지 잘라서 
                        // let frontNumber = phoneNumber.slice(0, 3);
                        // // alert(frontNumber);
                        // if (frontNumber != '010') {
                        //     alert("010으로 시작하는 번호만 입력 가능합니다.");
                        //     return;
                        // }

                        // 방법 2
                        // 010-1111-1111 -> startWith
                        if (phoneNumber.startsWith('010') === false) {
                            alert("010으로 시작하는 번호만 입력 가능합니다.");
                            return;
                        }
                    }

                });

                // 4. 이미지 3초 간격으로 변경하기 -> setInterval
                // 배열에 이미지 저장
                let bannerArr = ['/images/banner1.jpg', '/images/banner2.jpg', '/images/banner3.jpg', '/images/banner4.jpg'];
                // 인덱스
                let currentIndex = 0;
                // 함수를 일시적으로 만들어서 통으로 넘길 때 -> 익명함수 (이름x) 
            
                setInterval(function() {
                    // 3초마다 동작하는지 확인!
                    console.log("3초마다 한번씩 찍히는 로그:::" + currentIndex);
                    $('#bannerImage').attr('src', bannerArr[currentIndex]);
                    currentIndex++; // 0 1 2 3 -> 4가 되면..?

                    // currentIndex가 4가 되는 순간 다시 0으로 셋팅 (배열의 개수를 넘었을 때)
                    if (currentIndex >= bannerArr.length) {
                        currentIndex = 0;
                    }

                }, 3000); // 밀리세컨즈 3000 = 3초
                
                /*
                div 바깥쪽에 있는 다른 것들을 숨기는 속성을 이용해서 
                그림을 쭉 이어붙이고, 쭈루룩 넘어가는 것처럼? setInterval로 바꿔주기 할 수 있음!
                */
                
                
                
                
                
                
            });
        </script>
</body>
</html>