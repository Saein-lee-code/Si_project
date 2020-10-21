<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/res/css/common.css" />
<link rel="stylesheet" href="/res/css/user/findPw.css" />

<div class="findPwContainer">
	<div class="switch-field">
		<input type="radio" id="radio_std" name="switch_one" value="학생" onclick="toggleSwitch()" checked/>
		<label for="radio_std">학생</label>
		<input type="radio" id="radio_prof" name="switch_one" value="교수" onclick="toggleSwitch()"/>
		<label for="radio_prof">교수</label>
	</div>
	<div class="formWrapper">
		<form id="findPwForm1" action="/user/checkStdPw" method="post">
		    <h1>비밀번호 찾기</h1>
		    <p>비밀번호는 이름, 가입한 아이디, 이메일을 통해 찾으실 수 있습니다.</p>
		    <div class="msg">${ data.msg }</div>		    
		    <label for="std_nm"></label>
		    <input type="text" name="std_nm" placeholder="이름">
		
		    <label for="std_id"></label>
		    <input type="text" name="std_id" placeholder="아이디">
		
		    <label for="std_email"></label>
		    <input type="email" name="std_email" placeholder="이메일">
		    <input type="submit" value="확인">
		</form>
		
		<form id="findPwForm2" action="/user/checkProfPw" method="post" style="display:none;">
		    <h1>비밀번호 찾기</h1>
		    <p>비밀번호는 이름, 가입한 아이디, 이메일을 통해 찾으실 수 있습니다.</p>
		    <label for="prof_nm"></label>
		    <input type="text" name="prof_nm" placeholder="이름">
		
		    <label for="prof_id"></label>
		    <input type="text" name="prof_id" placeholder="아이디">
		
		    <label for="prof_email"></label>
		    <input type="email" name="prof_email" placeholder="이메일">
		    <input type="submit" value="확인">
		</form>
	</div>
  	
</div>
<!-- script -->
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script src="/res/js/user_js/findPw.js"></script>