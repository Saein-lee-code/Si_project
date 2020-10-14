<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>학생정보관리시스템</title>
    <link rel="icon" href="/res/img/logo_title.jpg" type="image/jpg" />
    <link rel="stylesheet" href="/res/css/common.css" />
    <link rel="stylesheet" href="/res/css/menu/menu_timetable.css" />
    <!-- img icon -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--font-->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
  </head>
  <body>
        <div class="timetableContainer">
          <div class="day time">
          	<div class="day_title">Time</div>
          	<div class="hour">8:00</div>
          	<div class="hour">9:00</div>
          	<div class="hour">10:00</div>
          	<div class="hour">11:00</div>
          	<div class="hour">12:00</div>
          	<div class="hour">13:00</div>
          	<div class="hour">14:00</div>
          	<div class="hour">15:00</div>
          	<div class="hour">16:00</div>
            <div class="hour">17:00</div>
            <div class="hour">18:00</div>
          </div>
          <div class="day monday">
          	<div class="day_title">Monday</div>
          	<div class="class red" data-tooltip="English Literature">2ELI1 [C1]</div>
          	<div class="class b15 blue" data-tooltip="Probability and Statistics">2MPS1 [K2]</div>
          	<div class="class b15 grey" data-tooltip="German">2GER1 [C1]</div>
          	<div class="class short blue" data-tooltip="Additional Probability and Statistics">2MPS+ [K2]</div>
          </div>

          <div class="day tuesday">
          	<div class="day_title">Tuesday</div>
          	<div class="class gray" data-tooltip="Economics">2ECO3 [A1]</div>
          	<div class="class b15 orange" data-tooltip="German History">2GHI1 [C0]</div>
          	<div class="class b15 purple" data-tooltip="Ethics">2ETH1 [C2]</div>
          	<div class="class b45 red" data-tooltip="English Language: Writing">2ELA+ [A3]</div>
          	<div class="class red" data-tooltip="English Language">2ELA0 [C0]</div>
          </div>

          <div class="day wednesday">
          	<div class="day_title">Wednesday</div>
          	<div class="class short spacing"></div>
          	<div class="class short yellow" data-tooltip="EU Politics">2EUP1 [C0]</div>
          	<div class="class b15 spacing"></div>
          	<div class="class b15 short navy" data-tooltip="Physics">2PHY1 [F2]</div>
          	<div class="class short spacing"></div>
          	<div class="class b15 turquoise" data-tooltip="Physical Education: Swimming">2SWM3</div>
          </div>

          <div class="day thursday">
          	<div class="day_title">Thursday</div>
          	<div class="class grey" data-tooltip="German">2GER1 [C1]</div>
          	<div class="class b15 blue" data-tooltip="Advanced Integral Calculus">2MIC1 [K2]</div>
          	<div class="class b15 red" data-tooltip="English Literature">2ELI1 [C1]</div>
          	<div class="class short blue" data-tooltip="Additional Basic Integral Calculus">1CAL+ [K2]</div>
          	<div class="class short yellow" data-tooltip="UK Politics">2UKP5 [C2]</div>
          	<div class="class short yellow" data-tooltip="German Politics">2GEP5 [C2]</div>
          	<div class="class green" data-tooltip="Media Studies">2MDS2 [A1]</div>
          </div>

          <div class="day friday">
            <div class="day_title">Friday</div>
          	<div class="class spacing"></div>
          	<div class="class b15 green" data-tooltip="Architechture">2ARC4 [A3]</div>
          	<div class="class b15 navy" data-tooltip="Physics">2PHY1 [F2]</div>
          </div>
        </div>  
     

    <!-- js -->
    <script src="/res/js/mng_js/mng_home.js"></script>
  </body>
</html>
