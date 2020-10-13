
btn1.addEventListener("click", function(){
    seatModal1.style.display = "block";
})
btn2.addEventListener("click", function(){
    seatModal2.style.display = "block";
})

window.onclick = function(event){
  if(event.target ==  seatModal1 || event.target == seatModal2){
    seatModal1.style.display = "none";
    seatModal2.style.display = "none";
  }
}

/* 좌석 만들기 */
let test = [];
   let selectedSeats = new Array();
   let selectedSeatsMap = [];
   const seatWrapper = document.querySelector(".seat1");
   let clicked = "";
   let div = "";

   for (let i = 0; i < 7; i++) {
       div = document.createElement("div");
       seatWrapper.append(div);
       for (let j = 0; j < 7; j++) {
           const input = document.createElement('input');
           input.type = "button";
           input.name = "seats"
           input.classList = "seat";
           //3중포문을 사용하지 않기위해
           mapping(input, i, j);
           div.append(input);
           input.addEventListener('click', function(e) {
               console.log(e.target.value);
               //중복방지 함수
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
                   input.classList.add("clicked");
                   clicked = document.querySelectorAll(".clicked");
                   clicked.forEach((data) => {
                       selectedSeats.push(data.value);
                   })
               }
               console.log(selectedSeats);
           })
       }
   }

   function mapping(input, i, j) {
       if (i === 0) {
           input.value = "A" + j;
       } else if (i === 1) {
           input.value = "B" + j;
       } else if (i === 2) {
           input.value = "C" + j;
       } else if (i === 3) {
           input.value = "D" + j;
       } else if (i === 4) {
           input.value = "E" + j;
       } else if (i === 5) {
           input.value = "F" + j;
       } else if (i === 6) {
           input.value = "G" + j;
       }
   }
