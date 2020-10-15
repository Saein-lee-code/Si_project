signUpStd.addEventListener("click", function(){
	signUp_prof.style.display = 'none'  
	signUp_std.style.display = 'block'
  
})

signUpProf.addEventListener("click", function(){
	signUp_std.style.display = 'none'
	signUp_prof.style.display = 'block'
})

var idChkResult = document.getElementById('idChkResult')
var idChkResult2 = document.getElementById('idChkResult2')

// 학생
// 주소찾기
//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
  function sample4_execDaumPostcode() {
      new daum.Postcode({
          oncomplete: function(data) {
              // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

              // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
              // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
              var roadAddr = data.roadAddress; // 도로명 주소 변수
              var extraRoadAddr = ''; // 참고 항목 변수

              // 법정동명이 있을 경우 추가한다. (법정리는 제외)
              // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
              if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                  extraRoadAddr += data.bname;
              }
              // 건물명이 있고, 공동주택일 경우 추가한다.
              if(data.buildingName !== '' && data.apartment === 'Y'){
                 extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
              }
              // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
              if(extraRoadAddr !== ''){
                  extraRoadAddr = ' (' + extraRoadAddr + ')';
              }

              // 우편번호와 주소 정보를 해당 필드에 넣는다.
              sample4_postcode.value = data.zonecode;
              sample4_roadAddress.value = roadAddr;


              var guideTextBox = document.getElementById("guide");
              // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
              if(data.autoRoadAddress) {
                  var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                  guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                  guideTextBox.style.display = 'block';

              }  else {
                  guideTextBox.innerHTML = '';
                  guideTextBox.style.display = 'none';
              }
          }
      }).open();
  }

// 전공 선택
var check_ = document.getElementById('check_')
var categorySelect = document.getElementById('categorySelect')
var category = document.getElementById('category')
var subcategory = {
  사범대학 : ["교육학과", "유아교육과", "국어교육과", "영어교육과", "일어교육과", "가정교육과", "수학교육과", "과학교육과", "미술교육과", "체육교육과"],
  경영대학 : ["경제금융학과", "국제무역물류학과", "경영학부", "관광학부", "경영정보학과"],
  공과대학 : ["기계공학부", "전기공학과", "전자공학과", "나노신소재공학과", "컴퓨터공학부", "스마트기계융합공학과", "정보통신공학과", "건축학부", "토목공학과", "환경에너지공학과", "소방방재공학과", "조선해양시스템공학과", "산업디자인학과"]
}

function makeSubmenu(value){  
  if(value.length == 0){
    categorySelect.innerHTML = "<option></option>"
  }else{
    categorySelect.style.display = "inline";
    var majorOptions = ""
    for(categoryId in subcategory[value]){
      majorOptions += "<option>" + subcategory[value][categoryId] + "</option>"
    }
    categorySelect.innerHTML = majorOptions
  }
}

major_btn.addEventListener("click", function(){
  if(category.options[category.selectedIndex].value.length != 0){
      check_.style.display = "block"
      check_.style.animation = "start 1s ease-out 1 both";  
	  std_major.value = category.selectedIndex;
	  std_course.value = parseInt(categorySelect.selectedIndex) + 1;
  }else {
    alert("전공을 선택해주세요")
  }	
});


major_btn_2.addEventListener("click", function(){
	if(category_p.options[category_p.selectedIndex].value.length != 0){
  		check_p.style.display = "block"
  		check_p.style.animation = "start 1s ease-out 1 both";  
	    prof_major.value = category_p.selectedIndex;
	    prof_course.value = parseInt(categorySelect_p.selectedIndex) + 1;
  	}else {
	    alert("전공을 선택해주세요")
  	}	
})
 

function resetSelection(){
  signUpForm1.reset();
	signUpForm2.reset();
}

// 전화번호
function chk(){	
	std_phone.value = std_tel1.options[std_tel1.selectedIndex].value + std_tel2.value + std_tel3.value;
	std_addr.value = sample4_roadAddress.value +" " + sample4_detailAddress.value;
	return true;
}

//교수
// 주소찾기
//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
  function sample4_execDaumPostcode_prof() {
      new daum.Postcode({
          oncomplete: function(data) {
              // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

              // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
              // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
              var roadAddr = data.roadAddress; // 도로명 주소 변수
              var extraRoadAddr = ''; // 참고 항목 변수

              // 법정동명이 있을 경우 추가한다. (법정리는 제외)
              // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
              if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                  extraRoadAddr += data.bname;
              }
              // 건물명이 있고, 공동주택일 경우 추가한다.
              if(data.buildingName !== '' && data.apartment === 'Y'){
                 extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
              }
              // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
              if(extraRoadAddr !== ''){
                  extraRoadAddr = ' (' + extraRoadAddr + ')';
              }

              // 우편번호와 주소 정보를 해당 필드에 넣는다.
              sample4_postcode_p.value = data.zonecode;
              sample4_roadAddress_p.value = roadAddr;


              var guideTextBox = document.getElementById("guide2");
              // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
              if(data.autoRoadAddress) {
                  var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                  guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                  guideTextBox.style.display = 'block';

              }  else {
                  guideTextBox.innerHTML = '';
                  guideTextBox.style.display = 'none';
              }
          }
      }).open();
  }


// 전공 선택
var check_p = document.getElementById('check_p')
var categorySelect_p = document.getElementById('categorySelect_p')
var category_p = document.getElementById('category_p')

function makeSubmenu_prof(value){

  if(value.length == 0){
    categorySelect_p.innerHTML = "<option></option>"
  }else{
    categorySelect_p.style.display = "inline";
    var majorOptions = ""
    for(categoryId in subcategory[value]){
      majorOptions += "<option>" + subcategory[value][categoryId] + "</option>"
    }
    categorySelect_p.innerHTML = majorOptions
  }
}

function displaySelected(){
  if(category_p.options[category.selectedIndex].value.length != 0){
      check_p.style.display = "block"
      check_p.style.animation = "start 1s ease-out 1 both";
      var category_ = category.value;
      var categorySelect_ = categorySelect.value
  }else {
    alert("전공을 선택해주세요")
  }
}

function stdResetSelection(){
  // category.selectedIndex = 0;
  // categorySelect.style.display = "none";
  // console.log("--resetSelection--")
  signUpForm1.reset();
}
function profResetSelection(){
  // category.selectedIndex = 0;
  // categorySelect.style.display = "none";
  // console.log("--resetSelection--")
  signUpForm2.reset();
}

// 초기화
// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == signUp_prof || event.target == signUp_std) {
        event.target.style.display = "none";
        check_p.style.display = "none";
        sample4_roadAddress_p.value = "";
        sample4_detailAddress_p.value = "";        
        categorySelect_p.style.display="none"
		idChkResult.style.display = "none";
		idChkResult2.style.display = "none";
		
		sample4_roadAddress.value = "";
        sample4_detailAddress.value = "";
        categorySelect.style.display="none";

		resetSelection();
    }
}


// 아이디 중복체크
// 학생
function chkIdStd() {
	const std_id = signUpForm1.std_id.value	
	console.log("std_id: " + std_id)		
	axios.post('/user/ajaxIdChkStd', {
		std_id: std_id
	}).then(function(res) {
		console.log(res)
		if(res.data == '2') { //아이디 없음
			idChkResult.setAttribute("class","idChkResult ido");
			idChkResult.innerText = '사용할 수 있는 아이디입니다.'			
		} else if(res.data == '3') { //아이디 중복됨
			idChkResult.setAttribute("class", "idChkResult idx");
			idChkResult.innerText = '이미 사용중입니다.'
		}
	})
}

// 교수
function chkIdProf() {
	const prof_id = signUpForm2.prof_id.value	
	console.log("prof_id: " + prof_id)		
	axios.post('/user/ajaxIdChkProf', {
		prof_id: prof_id
	}).then(function(res) {
		console.log(res)
		if(res.data == '2') { //아이디 없음
			idChkResult2.setAttribute("class","idChkResult ido");
			idChkResult2.innerText = '사용할 수 있는 아이디입니다.'			
		} else if(res.data == '3') { //아이디 중복됨
			idChkResult2.setAttribute("class", "idChkResult idx");
			idChkResult2.innerText = '이미 사용중입니다.'
		}
	})
}

