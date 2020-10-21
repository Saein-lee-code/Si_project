function toggleSwitch(){
	if(radio_std.checked){
		findIdForm1.style.display = "block";
		findIdForm2.style.display = "none";		
	}else if(radio_prof.checked){
		findIdForm1.style.display = "none";
		findIdForm2.style.display = "block";		
	}
	showResult1.innerHTML = ""
	showResult2.innerHTML = ""
	findIdForm1.reset();
	findIdForm2.reset();
}
var findIdBtn = document.getElementsByClassName('findIdBtn');
var switch_field = document.getElementsByClassName('switch-field');

function findIdStd(){
	const std_nm = findIdForm1.std_nm.value
	const std_email = findIdForm1.std_email.value
	if(std_nm.length == 0){
		alert("이름을 입력해 주세요.")
	}else if(std_email.length == 0){
		alert("이메일을 입력해 주세요.")
	}else{
		axios.post('/user/ajaxFindIdStd', {
			std_nm: std_nm,
			std_email: std_email
		}).then(function(res){		
		if(res.data.length != 0){
			showResult1.innerText = "회원님의 아이디는 '" + res.data + "' 입니다."
			findIdForm1.std_nm.style.display = "none"
			findIdForm1.std_email.style.display = "none"
			switch_field[0].style.display = "none"
			findIdBtn[0].value = "닫기"
			findIdBtn[0].addEventListener("click", function(){
				window.close();
			})
		}else{
			showResult1.innerText = "입력하신 정보를 다시 확인해주세요."
		}
	})
	}	
}

function findIdProf(){
	const prof_nm = findIdForm2.prof_nm.value
	const prof_email = findIdForm2.prof_email.value
	if(prof_nm.length == 0){
		alert("이름을 입력해 주세요.")
	}else if(prof_email.length == 0){
		alert("이메일을 입력해 주세요.")
	}else{
		axios.post('/user/ajaxFindIdProf', {
			prof_nm: prof_nm,
			prof_email: prof_email
		}).then(function(res){		
		if(res.data.length != 0){
			showResult2.innerText = "회원님의 아이디는 '" + res.data + "' 입니다."
			findIdForm2.prof_nm.style.display = "none"
			findIdForm2.prof_email.style.display = "none"
			switch_field[0].style.display = "none"
			findIdBtn[1].value = "닫기"
			findIdBtn[1].addEventListener("click", function(){
				window.close();
			})
		}else{
			showResult2.innerText = "입력하신 정보를 다시 확인해주세요."
		}
	})
	}	
}