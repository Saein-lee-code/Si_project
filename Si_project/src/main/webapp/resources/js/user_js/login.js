let chk_type = document.getElementsByClassName('chk_type')
let user_type = document.getElementsByName('user_type')
let userType = null

loginBtn.addEventListener("click", function(){
  if(user_id.value.length == 0){
    alert('아이디를 입력하세요')
	return
  }else if(user_pw.value.length == 0){
    alert('비밀번호를 입력하세요')
	return
  }else if(!chk_type[0].checked && !chk_type[1].checked){
    alert('선택하지 않은 칸이 있습니다')
	return
  }else{
    for(var i=0; i < user_type.length; i++){
      if(user_type[i].checked == true){
        userType = user_type[i].value;
      }
    } // for

	if(userType == '학생'){
		user_id.setAttribute('name', 'std_id');
		user_pw.setAttribute('name', 'std_pw');    	
	}else if(userType == '교수'){
		user_id.setAttribute('name', 'prof_id');
		user_pw.setAttribute('name', 'prof_pw');		
	}
  }// else
})

