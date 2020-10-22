
btn1.addEventListener("click", function(){
    seatModal1.style.display = "block";
})
btn_show.addEventListener("click", function(){
	showSeatModal.style.display = "block";
})

window.onclick = function(event){
  if(event.target ==  seatModal1 || event.target == showSeatModal){
	var clicked_input = document.getElementsByClassName("clicked")
    seatModal1.style.display = "none";
	showSeatModal.style.display = "none";	
	location.href = "/mng/seat"
  }
}

/* 좌석 만들기 */
   let selected_seat_list = [];
   let selected_info = document.getElementsByClassName('selected_info')   
   let selected_seat_input = [];
   for(let i=0; i < selected_info.length; i++){				
		selected_seat_input[i] = document.getElementsByClassName(selected_info[i].value)				
	}
	
	
   let test = [];
   let selectedSeats = new Array();
   let selectedSeatsMap = [];

   const seatWrapper = document.querySelector("#seat1");
   let clicked = "";
   let div = "";

   for (let i = 1; i < 8; i++) {
       div = document.createElement("div");
       seatWrapper.append(div);
       for (let j = 1; j < 8; j++) {
           const input = document.createElement('input');
           input.type = "button";
           input.name = "seats"
           input.classList = "seat";
           //3중포문을 사용하지 않기위해
           mapping(input, i, j);	
           div.append(input); // 좌석 뿌리기		
			var selected_seats = document.getElementsByClassName("clicked");				


           input.addEventListener('click', function(e) {	
				selectedSeats = selectedSeats.filter((element, index) => selectedSeats.indexOf(element) != index);				
				
	            //click class가 존재할때(제거해주는 toggle)
	            if (input.classList.contains("clicked")) {
	                input.classList.remove("clicked");
	                clicked = document.querySelectorAll(".clicked");
	                selectedSeats.splice(selectedSeats.indexOf(e.target.value), 1);
	                clicked.forEach((data) => {
	                    selectedSeats.push(data.value);
	                });
	                //click class가 존재하지 않을때 (추가해주는 toggle)
	            } else {
					if(selected_seats.length > 0){	
						for(let i=0; i<selected_seats.length; i++){
							console.log(i + "  " + selected_seats[i])
							selected_seats[i].classList.remove("clicked")
						}
					}								
	                input.classList.add("clicked");
	                clicked = document.querySelectorAll(".clicked");
	                clicked.forEach((data) => {
	                    selectedSeats.push(data.value);
	                })
	            }
           					
         	}) // input addEventListener
       }
		
				 
   }
	
	for(let i=0; i < selected_seat_input.length; i++){
			selected_seat_input[i][0].style.backgroundColor = "brown"
			selected_seat_input[i][0].style.color = "white"
			selected_seat_input[i][0].setAttribute("disabled", true)	
	}		
		
   function mapping(input, i, j) {
       if (i === 1) {
		   input.setAttribute("class", "seat A" + j)			
           input.value = "A" + j;
		  
       } else if (i === 2) {
		   input.setAttribute("class", "seat B" + j)
           input.value = "B" + j;
       } else if (i === 3) {
		   input.setAttribute("class", "seat C" + j)
           input.value = "C" + j;
           input.style.marginTop = "30px";
       } else if (i === 4) {
		   input.setAttribute("class", "seat D" + j)
           input.value = "D" + j;
       } else if (i === 5) {
		   input.setAttribute("class", "seat E" + j)
           input.value = "E" + j;
           input.style.marginTop = "30px";
       } else if (i === 6) {
		   input.setAttribute("class", "seat F" + j)
           input.value = "F" + j;
       } else if (i === 7) {
		   input.setAttribute("class", "seat G" + j)
           input.value = "G" + j;
           input.style.marginTop = "30px";
       }		 
   }

//삭제 버튼


$("#delBtn").click(function(){
	var result = confirm("삭제 하시겠습니까?")
	if(result){
		$("#seat_table").remove();
		$("#delSeat").submit();
	}
});


let seat_info = document.getElementById('seat_info')

// submit button
function bookBtnClick(){
	if(selectedSeats.length != 0){
		 seat_info.value = clicked[clicked.length - 1].value // hidden input value 에 값 넣기.
		 clicked = document.querySelectorAll(".clicked");
	     for(let i=0; i<clicked.length; i++){
	        clicked[i].setAttribute("class", "seat")
	 	 }
	     clicked[clicked.length - 1].setAttribute("class", "clicked seat")     
		
		 var answer = confirm("좌석 '"+ selectedSeats[selectedSeats.length - 1] + "'을(를) 예약 하시겠습니까?")
	     if(answer){
	         alert('예약 되었습니다.')
	   	 }else{
			console.log('예약취소')
			alert('예약이 취소 되었습니다.')
			
			return false;
		 }			
 	}else{
  	 	alert('선택된 좌석이 없습니다')
		return false;
 	}	
}

  