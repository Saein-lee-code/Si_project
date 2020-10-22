function toggleSwitch(){
	if(radio_std.checked){
		findPwForm1.style.display = "block";
		findPwForm2.style.display = "none";		
	}else if(radio_prof.checked){
		findPwForm1.style.display = "none";
		findPwForm2.style.display = "block";		
	}	
	findPwForm1.reset();
	findPwForm2.reset();
}

function chkPwFormStd(){
	if(findPwForm1.std_nm.value == ""){
		alert("이름을 입력하세요.")
		return false;
	}else if(findPwForm1.std_id.value == ""){
		alert("아이디를 입력하세요.")
		return false;
	}else if(findPwForm1.std_email.value == ""){
		alert("비밀번호를 입력하세요.")
		return false;
	}
	return true;
}


function chkPwFormProf(){
	if(findPwForm2.prof_nm.value == ""){
		alert("이름을 입력하세요.")
		return false;
	}else if(findPwForm2.prof_id.value == ""){
		alert("아이디를 입력하세요.")
		return false;
	}else if(findPwForm2.prof_email.value == ""){
		alert("비밀번호를 입력하세요.")
		return false;
	}
	return true;
}