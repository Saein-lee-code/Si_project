<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/res/css/user/login.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
<div id="loginContainer">
	<h1 class="hidden">학생 정보 관리시스템 - 로그인</h1>
       <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img class="d-block w-100" src="/res/img/login_bg.jpg" alt="First slide">
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="/res/img/login_bg2.jpg" alt="Second slide">
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="/res/img/login_bg3.jpg" alt="Third slide">
          </div>
        </div>
        <a class="carousel-control-prev" style="left: 250px;" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" style="right: 150px;" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
     	</div>
     	
     <div id="login_wrapper">      
       <a href="/user/login"><img class="logo" src="/res/img/logo.png" alt="logo"/></a>        
       <div id="login_box">
         <form id="loginForm" action="/" method="post">
           <div id="login_box_container">
             <div class="msg">${ data.msg }</div>
      		 <div id="login_input">
		          <label for="user_id">username</label>
		          	<input type="text" class="login_style" id="user_id" name="user_id" placeholder="Enter Username" required autofocus/><br />
		          <label for="user_pw">password</label>
		         	 <input type="password" class="login_style" id="user_pw" name="user_pw" placeholder="Enter Password" required/>
		          <label id="remember">
		            <input  type="checkbox" value="remember-me" id="remember_me" name="remember"> Remember me
		        </label>
      		  </div>

        <div id="select_user">
          <label for="user_std">student
          	<input type="radio" id="user_std" class="chk_type" name="user_type" value="학생" checked="checked"/>
          </label>
          <label for="user_prof">professor
          	<input type="radio" id="user_prof" class="chk_type" name="user_type" value="교수" />
          </label>
        </div>

        <div id="btn_container">
          <div id="login_btn">
            <button type="submit" id="loginBtn">Login</button>
          </div>
          
          <div id="find_id">
            <a onclick="openFindId()"><input type="button" value="아이디 찾기" /></a>
          </div>
          

          <div id="find_pw">
            <a onclick="openFindPw()"><input type="button" value="비밀번호 찾기" /></a>
            </div>

            <div id="signUp_btn">
              <a href="/user/signup"><input type="button" value="회원가입" /></a>
            </div>
          </div>
        </div>
      </form>
    </div>
    <div id="footer">
      <div class="footer_menu"><a href="/user/policy">Policies</a></div>
      <div class="footer_menu"><a href='/user/privacy'>Privacy</a></div>
    </div>
  </div>
</div>
<!-- js -->
<script src="/res/js/user_js/login.js"></script>
<!-- remember me -->
<script src="https://code.jquery.com/jquery-1.9.1.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script>
/* remember me */
 $(function() {
 	if (localStorage.chkbx != '') {
 		$('#remember_me').attr('checked', 'checked');
 		$('#user_id').val(localStorage.username);
 		$('#user_pw').val(localStorage.password);
 	} else {
         $('#remember_me').removeAttr('checked');
 		$('#user_id').val('');
 		$('#user_pw').val('');
 	}
 	$('#remember_me').click(function() {
 		if ($('#remember_me').is(':checked')) {
 			// save username and password
 			localStorage.username = $('#user_id').val();
 			localStorage.password = $('#user_pw').val();
 			localStorage.chkbx = $('#remember_me').val();
 		} else {
 			localStorage.username = '';
 			localStorage.password = '';
 			localStorage.chkbx = '';
 		}
 	});
 });
</script>