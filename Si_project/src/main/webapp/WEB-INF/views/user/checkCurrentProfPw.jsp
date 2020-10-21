<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/res/css/user/checkCurrentPw.css" />    
<div class="checkCurrentPwContainer">
	<form id="checkCurrentProfPw" action="/user/checkCurrentProfPw" method="post">
		<h1>비밀번호 변경</h1>
		<div class="msg">${ data.msg }</div>
		<label for="current_pw"></label>
		<input type="hidden" value="${ loginUser.prof_id }" name="prof_id">
		<input type="hidden" value="${ loginUser.prof_email }" name="prof_email">
		<input type="hidden"  value="${ loginUser.prof_nm }" name="prof_nm">
		<input type="password" name="prof_pw" placeholder="현재 비밀번호">
		<input id="checkPw" type="submit" value="확인">
	</form>
</div>