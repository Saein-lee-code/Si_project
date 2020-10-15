<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>학생정보관리시스템</title>
    <link rel="icon" href="/res/img/logo_title.jpg" type="image/jpg" />
    <link rel="stylesheet" href="/res/css/common.css" />
    <link rel="stylesheet" href="/res/css/user/signUp.css" />
    <!-- font -->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
  </head>
  <body>
    <div id="signUpContainer">
      <a href="/user/login"><img class="logo" src="/res/img/logo.png" alt="logo"/></a>
        <h1 class="hidden">회원 가입</h1>
        <div id="selectImg">
          <div class="type_">
            <button id="signUpStd"><img src="/res/img/student.png" alt="student" /><span class="type_text_style">학생</span></button>
          </div>

          <div class="type_">
            <button id="signUpProf"><img src="/res/img/professor.png"  alt="professor"/><span class="type_text_style">교수</span></button>
          </div>
        </div>

        <!-- 학생 회원가입 -->
        <div id="signUp_std" class="modal">
          <form action="/user/signup" id="signUpForm1" class="modal-content animate" method="post" onsubmit="return chk()">
            <div class="imgcontainer">
              <h2 class="hidden">회원가입 - 학생</h2>
              <div class="noWrap">
                <label class="signUp_label" for="std_no">학생 번호</label>
                <input type="text" name="std_no" value=""><br />
              </div>

              <div class="idWrap">
                <div id="idChkResult" class="msg"></div>                
              
                <label class="signUp_label" for="std_id">아이디</label>
                <input type="text" name="std_id" value="">
                <button id="id_btn" type="button" onclick="chkIdStd()">중복 체크</button>
              </div>

              <div class="pwWrap">
                <label class="signUp_label" for="std_pw">비밀번호</label>
                <input type="password" name="std_pw"><br>

                <label class="signUp_label" for="re_std_pw">비밀번호확인</label>
                <input type="password" name="re_std_pw"><br>
              </div>

              <div class="nmWrap">
                <label class="signUp_label" class="signUp_label" for="std_nm">이름</label>
                <input type="text" name="std_nm" value=""><br>
              </div>

              <!-- 전공 -->
              <div class="major_wrap">
                <label class="signUp_label" for="std_mj">전공</label>
                <select name="std_mj" id="category" onchange="makeSubmenu(this.value)">
                  <option value="" disabled selected>-- 대학 --</option>
                  <option>사범대학</option>
                  <option>경영대학</option>
                  <option>공과대학</option>
                </select>
                <select name="std_cs" id="categorySelect" style="display:none">
                  <option value="" disabled selected>-- 전공 --</option>
                  <option></option>
                </select>
                <button type="button" id="major_btn">확인</button>
                  <input type="hidden" id="std_major" value=""/>
                  <input type="hidden" id="std_course" value=""/>
                  <div class="check" id="check_"></div>
              </div>

              <br>

              <div class="birthWrap">
                <label class="signUp_label" for="std_birth">생년월일</label>
                <input type="date" name="std_birth" id="std_birth"><br>
              </div>


              <label class="signUp_label" for="std_email">Email</label>
              <input type="email" name="std_email" placeholder="someone@example.com"><br>



              <!-- 전화번호 -->
              <div class="telWrap">
                <label class="signUp_label" for="std_phone">전화번호</label>
                <select id="std_tel1" name="std_tel1">
                  <option value="010">010</option>
                  <option value="011">011</option>
                </select> - <input id="std_tel2" type="tel" size="4"> - <input id="std_tel3" type="tel" size="4">
                <input type="hidden" id="std_phone" name="std_phone">
              </div>

              <!-- 주소 -->
              <div class="addrWrap">
                <label for="std_addr">주소</label>
                <input type="text" name="std_zip" id="sample4_postcode" size="6" placeholder="우편번호" readonly>
                <input type="button" class="addrBtn" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
                <input type="text" name="std_addr1" id="sample4_roadAddress" placeholder="도로명주소" readonly>
                <span id="guide" style="color:#999;display:none"></span><br />
                <input type="text" name="std_addr2" id="sample4_detailAddress" placeholder="상세주소">
                <input type="hidden" name="std_addr" id="std_addr">
              </div>

              <input class="sbm_btn" type="submit" value="등록">
            </div>
          </form>
        </div>

        <!-- 교수 회원가입 -->
        <div id="signUp_prof" class="modal">
          <form action="/sign_up.js" id="signUpForm2" class="modal-content animate" method="post">
            <div class="imgcontainer">
              <h2 class="hidden">회원가입 - 교수</h2>
              <div class="noWrap">
                <label class="signUp_label" for="prof_no">교수 번호</label>
                <input type="text" name="prof_no" value=""><br />
              </div>

              <div class="idWrap">
                <div id="idChkResult2" class="msg"></div>
                <label class="signUp_label" for="prof_id">아이디</label>
                <input type="text" name="prof_id" value="">
                <button id="pfid_btn" type="button" onclick="chkIdProf()">중복 체크</button>
              </div>

              <div class="pwWrap">
                <label class="signUp_label" for="prof_pw">비밀번호</label>
                <input type="password" name="prof_pw"><br>

                <label class="signUp_label" for="re_prof_pw">비밀번호확인</label>
                <input type="password" name="re_prof_pw"><br>
              </div>

              <div class="nmWrap">
                <label class="signUp_label" class="signUp_label" for="prof_name">이름</label>
                <input type="text" name="prof_name" value=""><br>
              </div>

              <!-- 전공 -->
              <div class="major_wrap">
                <label class="signUp_label" for="prof_major">전공</label>
                <select name="prof_major" id="category_p" onchange="makeSubmenu_prof(this.value)">
                  <option value="" disabled selected>-- 대학 --</option>
                  <option>사범대학</option>
                  <option>경영대학</option>
                  <option>공과대학</option>
                </select>
                <select name="porf_course" id="categorySelect_p" style="display:none">
                  <option value="" disabled selected>-- 전공 --</option>
                  <option></option>
                </select>
                <button type="button" id="major_btn_2">확인</button>
                   <input type="hidden" id="prof_major" value=""/>
                   <input type="hidden" id="prof_course" value=""/>
                   <div class="check" id="check_p"></div>
              </div>

              <br>

              <div class="birthWrap">
                <label class="signUp_label" for="pf_birth">생년월일</label>
                <input type="date" name="pf_birth"><br>
              </div>


              <label class="signUp_label" for="pf_email">Email</label>
              <input type="email" name="pf_email" placeholder="someone@example.com"><br>



              <!-- 전화번호 pf_tel_1 + pf_tel_2 + pf_tel_3 -->
              <div class="telWrap">
                <label class="signUp_label" for="pf_tel_1">전화번호</label>
                <select name="pf_tel">
                  <option value="010">010</option>
                  <option value="011">011</option>
                </select> - <input type="tel" name="pf_tel_2" size="4"> - <input type="tel" name="pf_tel_3" size="4">
              </div>

              <!-- 주소 -->
              <div class="addrWrap">
                <label for="">주소</label>
                <input type="text" name="pf_zip" id="sample4_postcode_p" size="6" placeholder="우편번호" readonly>
                <input type="button" class="addrBtn" onclick="sample4_execDaumPostcode_prof()" value="우편번호 찾기"><br>
                <input type="text" name="pf_addr1" id="sample4_roadAddress_p" placeholder="도로명주소" readonly>
                <span id="guide2" style="color:#999;display:none"></span><br />
                <input type="text" name="pf_addr2" id="sample4_detailAddress_p" placeholder="상세주소">
              </div>

              <input class="sbm_btn" type="submit" value="등록">
            </div>
          </form>
        </div>

    </div><!-- signupContainer -->

    <!-- script -->
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <script src="/res/js/user_js/signUp.js"></script>
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  </body>
</html>
