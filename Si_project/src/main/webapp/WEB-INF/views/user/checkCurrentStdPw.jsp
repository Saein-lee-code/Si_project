<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/res/css/user/checkCurrentPw.css" />    
<div class="checkCurrentPwContainer">
	<form id="checkCurrentStdPw" action="/user/checkCurrentStdPw" method="post">
		<h1>비밀번호 변경</h1>
		<div class="msg">${ data.msg }</div>
		<label for="current_pw"></label>
		<input type="hidden" value="${ loginUser.std_id }" name="std_id">
		<input type="hidden" value="${ loginUser.std_email }" name="std_email">
		<input type="hidden"  value="${ loginUser.std_nm }" name="std_nm">
		<input type="password" name="std_pw" placeholder="현재 비밀번호">
		<input id="checkPw" type="submit" value="확인">
	</form>
</div>