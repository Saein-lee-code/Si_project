<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생정보관리시스템</title>
<link rel="icon" href="/res/img/logo_title.jpg" type="image/jpg" />
<link rel="stylesheet" href="/res/css/common.css" />
<link rel="stylesheet" href="/res/css/mng/mng_home.css" />
</head>
<body>
    <div class="mainContainer">
    	<div class="navContainer">
        <nav>
          <span style="font-size:30px;cursor:pointer" id="menu_bar" onclick="openNav()">&#9776;</span>
          <span class="greeting">김수인님, 어서오세요!</span>
          <div class="menu_left">
            <div id="left_side_nav" class="sidenav">
              <a href="/mng/mng_home"><img class="logo" src="/res/img/logo.png" alt="logo"/></a>
              <a href="javascript:void(0)" class="closebtn" onclick="closeNav()" style="font-weight: bold;">&times;</a>
              <a href="/mng/notice">공지사항</a>
              <a href="/mng/timetable">시간표</a>
              <a href="/mng/mypage">마이페이지</a>
              <a href="/mng/seat">열람실예약</a>
              <a href="/mng/board">자유게시판</a>
              <a href="/mng/market_board">장터</a>
              <a href="/mng/scholarship">장학금신청</a>
              <a href="/user/login" class="mg-top-100">로그아웃</a>
            </div>
          </div>         
     	</nav>		
		</div>
		
		<!-- view jsp -->
		<jsp:include page="/WEB-INF/views/${view}.jsp"></jsp:include>
		
		<!-- footer -->
        <div class="footer">
          <div class="footer_logo">
            <a href="/mng/mng_home"><img class="logo footer_logo" src="/res/img/logo.png" alt="logo"/></a>
          </div>
            <div class="footer_info">
              <span id="uni_style">SI UNIVERSITY</span>
              <span>대구광역시 중구 성내1동 중앙대로 366 9층, 10층</span>
              <span>2020. All rights reserved.</span>
            </div>
         </div>
        <!-- js -->
    	<script src="/res/js/mng_js/mng_home.js"></script>
	</div>
</body>
</html>