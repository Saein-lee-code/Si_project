<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" href="/res/css/user/login.css" />
	<div id="loginContainer">
      <h1 class="hidden">학생 정보 관리시스템 - 로그인</h1>
      <img id="login_bg" src="/res/img/login_bg.jpg" alt="학교사진" />

      <div id="login_wrapper">
        <a href="#"><img class="logo" src="/res/img/logo.png" alt="logo"/></a>
        <div id="login_box">
          <form id="loginForm" action="/res/js/login.js" method="post">
            <div id="login_box_container">
              <div id="login_input">
                <label for="user_id">username</label>
                <input type="text" class="login_style" id="user_id" name="user_id" placeholder="Enter Username" required autofocus/><br />
                <label for="user_pw">password</label>
                <input type="password" class="login_style" id="user_pw" name="user_pw" placeholder="Enter Password" required/>
                <label id="remember">
                  <input  type="checkbox" checked="checked" name="remember"> Remember me
              </label>
              </div>

              <div id="select_user">
                <label for="stud">student</label>
                <input type="radio" class="chk_type" name="user_type" value="학생" />
                <label for="stud">professor</label>
                <input type="radio" class="chk_type" name="user_type" value="교수" />
              </div>

              <div id="btn_container">
                <div id="login_btn">
                  <button type="button" id="loginBtn">Login</button>
                </div>

                <div id="find_pw">
                  <a href="findPw.html"><input type="button" value="비밀번호 찾기" /></a>
                </div>

                <div id="signUp_btn">
                  <a href="signUp.html"><input type="button" value="회원가입" /></a>
                </div>
              </div>
            </div>
          </form>
        </div>
        <div id="footer">
          <div class="footer_menu"><a>Policies</a></div>
          <div class="footer_menu"><a>Privacy</a></div>
          <div class="footer_menu"><a>Help</a></div>
        </div>
      </div>
    </div>
    <!-- js -->
    <script src="/res/js/user_js/login.js"></script>
