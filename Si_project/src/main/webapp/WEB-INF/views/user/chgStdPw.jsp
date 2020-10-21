<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="/res/css/user/chgPw.css" />
<div class="changePwContainer">
	<div class="formWrapper">
		<form id="chgPwForm1" name="chgPwForm1" action="/user/changeStdPw" method="post">
		<h1>비밀번호 변경</h1>
			<div>
				<input type="hidden" name="std_id" value="${ data.std_id }">				
				<label for="std_pw"><input type="password" name="std_pw" placeholder="변경 비밀번호"></label>
				<label for="re_std_pw"><input type="password" name="re_std_pw" placeholder="변경 비밀번호 확인"></label>
				<input type="submit" value="변경">
			</div>
		</form>		
	</div>
</div>

