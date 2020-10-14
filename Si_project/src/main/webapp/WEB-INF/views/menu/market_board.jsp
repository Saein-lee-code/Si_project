<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="icon" href="/res/img/logo_title.jpg" type="image/jpg" />
    <link rel="stylesheet" href="/res/css/common.css" />
    <link rel="stylesheet" href="/res/css/mng/mng_home.css" />
    <link rel="stylesheet" href="/res/css/menu/notice.css" />
    <!-- img icon -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--font-->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <!-- search -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  </head>
  <body>     
        <!-- 공지사항 -->
        <div class="noticeContainer">
          <h1>장터</h1>
          <table class="table">
            <tr>
              <th style="width: 10%;">글번호</th>
              <th style="width: 50%;">글제목</th>
              <th style="width: 10%;">작성자</th>
              <th style="width: 20%;">등록일</th>
              <th style="width: 10%;">조회수</th>
            </tr>
          </table>
          <!--검색-->
          <div id="searchContainer">
            <form action="">
              <input type="text" placeholder="Search" name="search">
              <button type="submit"><i class="fa fa-search"></i></button>
            </form>
          </div>
        </div>
       
      <!-- js -->
      <script src="/res/js/menu_js/notice.js"></script>
  </body>
</html>
