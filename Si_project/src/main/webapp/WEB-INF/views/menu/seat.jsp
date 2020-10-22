<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="/res/css/menu/seat.css" />

<!-- 좌석예약 -->
<div class="chooseContainer">		
	<h1 class="hidden">열람실예약</h1>
	<div class="btnContainer">				
		<c:choose>
			<c:when test="${ isBooked == 0 }">
				<a id="btn_show" class="btn" style="margin-right: 30px;">조회</a>				
				<a id="btn1" class="btn">예약하기</a>	
			</c:when>			
			<c:when test="${ isBooked == 1 }">
				<a id="btn_show" class="btn" style="margin-right: 30px;">조회</a>
				<a id="btn1" class="btn" style="display:none;">예약하기</a>	
			</c:when>
		</c:choose>		            
	</div>
</div>

<!--  조회 - 팝업 -->
<div id="showSeatModal" class="modal">
	<div class="modal-content">
		<div class="showWrap">
			<div class="showContent">				
				<h2 class="modal-title">좌석 조회</h2>
				<c:choose>
					<c:when test="${ data.seat_info == null }">
						<p style="width:300px; text-align:center; font-size: 1.1rem; margin-top:150px; letter-spacing: 3px;">예약된 정보가 없습니다.</p>
					</c:when>
					<c:when test="${ data.seat_info != null }">
						<div id="showBooking"  style="display:block;">
							<form id="delSeat" action="/mng/delSeat" method="post">
								<table id="seat_table"> 
									<tr>
										<th>예약자</th>
										<td>${ data.std_nm }</td>
									</tr>
									<tr>
										<th>좌석</th>
										<td>${ data.seat_info}</td>
									</tr>
									<tr>
										<th>시작 시간</th>
										<td>${ data.s_dt }</td>
									</tr>
									<tr>
										<th>종료 시간</th>
										<td>${ data.o_dt }</td>
				   					</tr>
				     			</table>
				     			<div>       			
		    						<input id="delBtn" class="popupBtn" type="button" value="삭제">
		    					</div>
				     		</form>
	   					</div>			
					</c:when>
 				</c:choose>
  			</div>	
		</div>			
  	</div>   		
</div>
<!-- 좌석예약 - 팝업 -->
<div id="seatModal1" class="modal">
  <!-- Modal content -->
<div class="modal-content">
  <h2 class="modal-title">예약하기</h2>
  <div class="seatContainer">
    <div id="seat1">
    	<c:forEach items="${list}" var="val">
    		<input type="hidden" class="selected_info" value="${ val.seat_info }">
    	</c:forEach>
    	
    </div>
    
    <form id="booking" action="/mng/insSeat" method="post" onclick="return bookBtnClick()">
    	<input type="hidden" name="std_no" value="${ loginUser.std_no }">
      	<input type="hidden" id="seat_info" name="seat_info" value="">
         <input type="submit" class="float-right btnBtn" id="bookBtn" value="예약하기">
      </form>
      
      <pre>
        * 좌석 선택시, 현재 시간으로부터 2시간까지 예약이 됩니다.
        * 한 계정당 한 자리만 예약 가능합니다.
        * 예약 없이 자리사용이 불가능 합니다.
        * 시스템 에러시 연락 주세요 (tel: 000-000-0000)
      </pre>
    </div>
  </div>
</div>   
            
     <!-- js -->
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
     <script src="/res/js/menu_js/notice.js"></script>
     <script src="/res/js/menu_js/seat.js"></script>

