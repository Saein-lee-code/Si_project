let chk_type = document.getElementsByClassName('chk_type')

loginBtn.addEventListener("click", function(){
  if(user_id.value.length == 0){
    alert('아이디를 입력하세요')
  }else if(user_pw.value.length == 0){
    alert('비밀번호를 입력하세요')
  }else if(!chk_type[0].checked && !chk_type[1].checked){
    alert('빈 칸이 있습니다')
  }else {
    alert('로그인 성공')
  }
})
