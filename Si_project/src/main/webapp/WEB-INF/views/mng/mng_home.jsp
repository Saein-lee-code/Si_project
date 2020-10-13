<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>학생정보관리시스템</title>
    <link rel="icon" href="/res/img/logo_title.jpg" type="image/jpg" />
    <link rel="stylesheet" href="/res/css/common.css" />
    <link rel="stylesheet" href="/res/css/mng/mng_home.css" />
    <!-- img icon -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- search -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!--font-->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">

  </head>
  <body>
    <div class="mainContainer">
      <div class="bg"><img src="/res/img/home_bg.jpg" alt=""></div>
      <div class="navContainer">
        <nav>
          <span style="font-size:30px;cursor:pointer" id="menu_bar" onclick="openNav()">&#9776;</span>
          <span class="greeting">김수인님, 어서오세요!</span>
          <div class="menu_left">
            <div id="left_side_nav" class="sidenav">
              <a href="../mng/mng_home.html"><img class="logo" src="/res/img/logo.png" alt="logo"/></a>
              <a href="javascript:void(0)" class="closebtn" onclick="closeNav()" style="font-weight: bold;">&times;</a>
              <a href="../menu/notice.html">공지사항</a>
              <a href="../menu/timetable.html">시간표</a>
              <a href="../menu/mypage.html">마이페이지</a>
              <a href="../menu/seat.html">열람실예약</a>
              <a href="../menu/board.html">자유게시판</a>
              <a href="#">장터</a>
              <a href="#">장학금신청</a>
              <a href="/res/user/login.html" class="mg-top-100">로그아웃</a>
            </div>
          </div>
        </div>
        <!--검색-->
        <div id="searchContainer">
          <form action="">
            <input type="text" placeholder="Search" name="search">
            <button type="submit"><i class="fa fa-search"></i></button>
          </form>
        </div>
      </nav>

      <div class="gridContainer">
        <div class="grid-item">
          <div class="title">공지 사항</div>
          <ul>
            <li><div class="boardTitleWrap"><span class="material-icons list-icon">arrow_right</span><span class="board_title">공지사항1공지사항1공지사항1공지사항1공지사항1공지사항1공지사항1</span></div><span class="board_date">2020.09.12</span></li>
          </ul>
        </div>
        <div class="grid-item"><div class="title">행사 일정</div>
          <ul>
            <li><div class="boardTitleWrap"><span class="material-icons list-icon">arrow_right</span><span class="board_title">공지사항1공지사항1공지사항1공지사항1공지사항1공지사항1공지사항1</span></div><span class="board_date">2020.09.12</span></li>
            <li><div class="boardTitleWrap"><span class="material-icons list-icon">arrow_right</span><span class="board_title">공지사항1공지사항1공지사항1공지사항1공지사항1공지사항1공지사항1</span></div><span class="board_date">2020.10.12</span></li>

          </ul>
        </div>
        <div class="grid-item"><div class="title">SI 뉴스</div>
          <ul>
            <li><span class="material-icons list-icon">arrow_right</span>공지사항1공지사항1공지사항1공지사항1</li>
            <li><span class="material-icons list-icon">arrow_right</span>공지사항2공지사항2공지사항2공지사항2공지사항2공지사항2공지사항2공지사항2</li>
            <li><span class="material-icons list-icon">arrow_right</span>공지사항3공지사항3공지사항3공지사항3</li>
            <li><span class="material-icons list-icon">arrow_right</span>공지사항4공지사항4공지사항4공지사항4</li>
          </ul>
        </div>
        <div class="grid-item"><div class="title">함께 합시다</div>
          <ul>
            <li><span class="material-icons list-icon">arrow_right</span>공지사항1공지사항1공지사항1공지사항1</li>
            <li><span class="material-icons list-icon">arrow_right</span>공지사항2공지사항2공지사항2공지사항2공지사항2</li>
            <li><span class="material-icons list-icon">arrow_right</span>공지사항3공지사항3공지사항3공지사항3</li>
            <li><span class="material-icons list-icon">arrow_right</span>공지사항4공지사항4공지사항4공지사항4</li>
          </ul>
        </div>
        <div class="grid-item"><div class="title">학과 소개</div>
          <ul>
            <li><div class="boardTitleWrap"><span class="material-icons list-icon">arrow_right</span><span class="board_title">공지사항1공지사항1공지사항1공지사항1공지사항1공지사항1공지사항1</span></div><span class="board_date">2020.09.12</span></li>
            <li><div class="boardTitleWrap"><span class="material-icons list-icon">arrow_right</span><span class="board_title">공지사항1공지사항1공지사항1공지사항1공지사항1공지사항1공지사항1</span></div><span class="board_date">2020.09.12</span></li>
            <li><div class="boardTitleWrap"><span class="material-icons list-icon">arrow_right</span><span class="board_title">공지사항1공지사항1공지사항1공지사항1공지사항1공지사항1공지사항1</span></div><span class="board_date">2020.09.12</span></li>
            <li><div class="boardTitleWrap"><span class="material-icons list-icon">arrow_right</span><span class="board_title">공지사항1공지사항1공지사항1공지사항1공지사항1공지사항1공지사항1</span></div><span class="board_date">2020.09.12</span></li>
            <li><div class="boardTitleWrap"><span class="material-icons list-icon">arrow_right</span><span class="board_title">공지사항1공지사항1공지사항1공지사항1공지사항1공지사항1공지사항1</span></div><span class="board_date">2020.09.12</span></li>
          </ul>
        </div>
        <div class="grid-item"><div class="title">동창회</div></div>
      </div>

      <div class="footer">
        <div class="footer_logo">
          <a href="/res/user/login.html"><img class="logo footer_logo" src="/res/img/logo.png" alt="logo"/></a>
        </div>
          <div class="footer_info">
            <span id="uni_style">SI UNIVERSITY</span>
            <span>대구광역시 중구 성내1동 중앙대로 366 9층, 10층</span>
            </span>2020. All rights reserved.</span>
          </div>
        </div>
      </div>

    </div>

    <!-- js -->
    <script src="/res/js/mng_js/mng_home.js"></script>
  </body>
</html>
