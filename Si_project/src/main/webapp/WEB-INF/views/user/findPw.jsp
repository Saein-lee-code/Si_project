<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <link rel="stylesheet" href="/res/css/common.css" />
    <link rel="stylesheet" href="/res/css/user/findPw.css" />
  </head>
  <body>
    <div class="findPwContainer">
      <form action="">
        <h1>비밀번호 찾기</h1>
        <p>비밀번호는 이름, 가입한 아이디, 이메일을 통해 찾으실 수 있습니다.</p>
        <label for="name"></label>
        <input type="text" name="name" placeholder="이름">

        <label for="id"></label>
        <input type="text" name="id" placeholder="아이디">

        <label for="email"></label>
        <input type="email" name="email" placeholder="이메일">
        <input type="submit" value="확인">
      </form>
    </div>

  </body>
</html>
