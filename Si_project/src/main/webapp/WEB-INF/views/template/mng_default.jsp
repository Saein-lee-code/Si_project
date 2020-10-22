<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
    	<div class="navContainer">
        <nav>
          <span style="font-size:30px;cursor:pointer" id="menu_bar" onclick="openNav()">&#9776;</span>
          <span class="greeting">
          	<c:if test="${( loginUser != null )}">
          		<c:choose>
          			<c:when test="${( loginUser.std_nm != null ) && (loginUser.prof_nm == null)}">
          				<a href="/user/mypage"><span class="greeting_user">${ loginUser.std_nm }</span></a>님,
          			</c:when>
          			<c:when test="${( loginUser.prof_nm != null ) && (loginUser.std_nm == null)}">
          				<a href="/user/mypage"><span class="greeting_user">${ loginUser.prof_nm }</span></a> 교수님,
          			</c:when>
          		</c:choose>
          	</c:if>
          	어서오세요!
          </span>
          <div class="menu_left">
            <div id="left_side_nav" class="sidenav">
              <a href="/mng/mng_home"><img class="logo" src="/res/img/logo.png" alt="logo"/></a>
              <a href="javascript:void(0)" class="closebtn" onclick="closeNav()" style="font-weight: bold;">&times;</a>
              <a href="/mng/notice">공지사항</a>
              <a href="/mng/timetable">시간표</a>
              <a href="/user/mypage">마이페이지</a>              
              <c:choose>
            	<c:when test="${ loginUser.std_nm != null }">
            		<a href="/mng/seat">열람실예약</a>	
            	</c:when>	
              </c:choose>     
              
              <a href="/mng/board">자유게시판</a>
              <a href="/mng/market_board">장터</a>
              <a href="/mng/scholarship">장학금신청</a>
              <a href="/user/logout" class="mg-top-100">로그아웃</a>
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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>                
    	<script src="/res/js/mng_js/mng_home.js"></script>
	</div>
</body>
</html>