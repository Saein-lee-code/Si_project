<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<link rel="stylesheet" href="/res/css/common.css" />
<link rel="stylesheet" href="/res/css/user/findId.css" />

<div class="findIdContainer">
	<div class="switch-field">
		<input type="radio" id="radio_std" name="switch_one" value="학생" onclick="toggleSwitch()" checked/>
		<label for="radio_std">학생</label>
		<input type="radio" id="radio_prof" name="switch_one" value="교수" onclick="toggleSwitch()"/>
		<label for="radio_prof">교수</label>
	</div>
	<div class="formWrapper">
	  	<form id="findIdForm1" action="/" method="post" >
		    <h1>아이디 찾기</h1>
		    <p>아이디는 가입시 입력하신 이메일을 통해 찾으실 수 있습니다.</p>    
		    <p class="showResult" id="showResult1"></p>    
		    <label for="std_nm"></label>
		    <input type="text" id="std_nm" name="std_nm" placeholder="이름">
		    
		    <label for="std_email"></label>
		    <input type="email" id="std_email" name="std_email" placeholder="이메일">
		    
		    <input class="findIdBtn" type="button" value="확인" onclick="findIdStd()">
	  	</form>
	  	
	  	<form id="findIdForm2" action="/" method="post" style="display:none;">
		    <h1>아이디 찾기</h1>
		    <p>아이디는 가입시 입력하신 이메일을 통해 찾으실 수 있습니다.</p>    
		    <p class="showResult" id="showResult2"></p>    
		    <label for="prof_nm"></label>
		    <input type="text" id="prof_nm" name="prof_nm" placeholder="이름">
		    
		    <label for="prof_email"></label>
		    <input type="email" id="prof_email" name="prof_email" placeholder="이메일">
		    
		    <input class="findIdBtn" type="button" value="확인" onclick="findIdProf()">
	  	</form>
  </div>
</div>
<!-- script -->
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script src="/res/js/user_js/findId.js"></script>

