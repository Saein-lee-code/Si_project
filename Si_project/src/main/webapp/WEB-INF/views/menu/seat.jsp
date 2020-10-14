<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" dir="ltr">
  <head>
    <link rel="stylesheet" href="/res/css/mng/mng_home.css" />
    <link rel="stylesheet" href="/res/css/menu/seat.css" />
    <!-- img icon -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--font-->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <!-- search -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  </head>
  <body>  
        <!-- 좌석예약 -->
        <div class="chooseContainer">
          <h1 class="hidden">열람실예약</h1>
          <div class="btnContainer">
            <a id="btn1" class="btn btn1">제 1 열람실</a>
            <a id="btn2" class="btn">제 2 열람실</a>
          </div>
        </div>
        <!-- 좌석예약 - 팝업 -->
        <div id="seatModal1" class="modal">
          <!-- Modal content -->
          <div class="modal-content">
            <h2>제 1 열람실</h2>
            <div class="seatContainer">
              <div id="seat1">
              </div>
              <span>선택한 좌석: B5</span>
              <input type="button" class="float-right btnBtn" value="예약하기">
              <pre>
                * 좌석 선택시, 현재 시간으로부터 2시간까지 예약이 됩니다.
                * 한 계정당 한 자리만 예약 가능합니다.
                * 예약 없이 자리사용이 불가능 합니다.
                * 시스템 에러시 연락 주세요 (tel: 000-000-0000)
              </pre>
            </div>
          </div>
        </div>

        <div id="seatModal2" class="modal">
          <!-- Modal content -->
          <div class="modal-content">
            <h2>제 2 열람실</h2>
            <div id="seat2"></div>
            <span>선택한 좌석: </span>
            <input type="button" value="예약하기">
          </div>
        </div>
             
      <!-- js -->
      <script src="/res/js/menu_js/notice.js"></script>
      <script src="/res/js/menu_js/seat.js"></script>
  </body>
</html>
