<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="/res/css/user/chgPw.css" />
<div class="changePwContainer">
	<div class="formWrapper">
		<form id="chgPwForm2" name="chgPwForm2" action="/user/changeProfPw" method="post">
		<h1>비밀번호 변경</h1>
			<div>
				<input type="hidden" name="prof_id" value="${ data.prof_id }">				
				<label for="prof_pw"><input type="password" name="prof_pw" placeholder="변경 비밀번호"></label>
				<label for="re_prof_pw"><input type="password" name="re_prof_pw" placeholder="변경 비밀번호 확인"></label>
				<input type="submit" value="변경">
			</div>
		</form>		
	</div>
</div>

