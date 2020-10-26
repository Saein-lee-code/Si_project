<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<link rel="stylesheet" href="/res/css/user/mypage.css" />
<!-- 마이페이지-->
<div class="mypageContainer">
  <h1>회원정보수정</h1>
  <form id="updateMypage" action="/" method="post">  
  	<c:choose>
   		<c:when test="${( loginUser.i_std != 0 ) && ( loginUser.i_prof == 0 )}">
  			<input type="hidden" name="std_id" value="${ loginUser.std_id }">
		</c:when>
		<c:when test="${( loginUser.i_std == 0 ) && ( loginUser.i_prof != 0 )}">
  			<input type="hidden" name="prof_id" value="${ loginUser.prof_id }">
 		</c:when>
	</c:choose>   
	       
 	 <table id="mypageTable">
	  	<tr>          		
	  		<th>          		   
		 		<c:choose>
		    		<c:when test="${( loginUser.i_std != 0 ) && ( loginUser.i_prof == 0 )}">
					학생번호
					</c:when>
					<c:when test="${( loginUser.i_std == 0 ) && ( loginUser.i_prof != 0 )}">
			  		교수번호
		  			</c:when>
				</c:choose>          		          			
			</th>
			<td>
				<c:choose>         		
		        	<c:when test="${( loginUser.i_std != 0 ) && ( loginUser.i_prof == 0 )}">
		         		<input type="text" value="${loginUser.std_no}" disabled readonly>
		         	</c:when>
		         	<c:when test="${( loginUser.i_std == 0 ) && ( loginUser.i_prof != 0 )}">
		          		<input type="text" value="${loginUser.prof_no}" disabled readonly>
		          	</c:when>
		        </c:choose>	
			</td>
		</tr>
		<tr>
			<th>이름</th>
			<td>
				<c:choose>         		
			 		<c:when test="${( loginUser.i_std != 0 ) && ( loginUser.i_prof == 0 )}">
						${ loginUser.std_nm }
					</c:when>
					<c:when test="${( loginUser.i_std == 0 ) && ( loginUser.i_prof != 0 )}">
						${ loginUser.prof_nm }
			     	</c:when>
				</c:choose>	          			
		  	</td>
		  	</tr>
		  	<tr>
		  		<th>ID</th>
		  		<td>
		  			<c:choose>         		
			    		<c:when test="${( loginUser.i_std != 0 ) && ( loginUser.i_prof == 0 )}">
							${ loginUser.std_id }
						</c:when>
						<c:when test="${( loginUser.i_std == 0 ) && ( loginUser.i_prof != 0 )}">
							${ loginUser.prof_id }
			     		</c:when>
					</c:choose>
		  		</td>
		  	</tr>		  	
		  	<tr>
		  		<th>전공</th>
		  		<td>
		  			<c:choose>         		
			    		<c:when test="${( loginUser.i_std != 0 ) && ( loginUser.i_prof == 0 )}">
						${ loginUser.major_nm } ${ loginUser.course_nm }
					</c:when>
					<c:when test="${( loginUser.i_std == 0 ) && ( loginUser.i_prof != 0 )}">
						${ loginUser.major_nm } ${ loginUser.course_nm }
		     		</c:when>
				</c:choose>
		  		</td>
		  	</tr>
		  	<tr>
		  		<th>E-mail</th>
		  		<td>
		  			<c:choose>         		
			    		<c:when test="${( loginUser.i_std != 0 ) && ( loginUser.i_prof == 0 )}">
							<input type="email" id="std_email" name="std_email" value="${ loginUser.std_email }" >
							<input type="hidden" id="prof_email"  name="prof_email" value="" >						
						</c:when>
						<c:when test="${( loginUser.i_std == 0 ) && ( loginUser.i_prof != 0 )}">
							<input type="email" id="prof_email" name="prof_email" value="${ loginUser.prof_email }" >							
							<input type="hidden" id="std_email" name="std_email" value="" >
				     	</c:when>
					</c:choose>
		  		</td>
		  	</tr>
		  	<tr>
		  		<th>연락처</th>
		  		<td>
		  			<c:choose>         		
		    		<c:when test="${( loginUser.i_std != 0 ) && ( loginUser.i_prof == 0 )}">
						<input type="tel" name="std_phone" value="${ loginUser.std_phone }">
						<input type="hidden" name="prof_phone" value="">
					</c:when>
					<c:when test="${( loginUser.i_std == 0 ) && ( loginUser.i_prof != 0 )}">
						<input type="tel" name="prof_phone" value="${ loginUser.prof_phone }">
						<input type="hidden" name="std_phone" value="">
		     		</c:when>
					</c:choose>
		  		</td>
		  		</tr>
		  		<tr>
		  		<th>주소</th>
		  		<td>
		  			<c:choose>         		
			    		<c:when test="${( loginUser.i_std != 0 ) && ( loginUser.i_prof == 0 )}">
							<input type="text" id="show_addr"  size="40" value="${ loginUser.std_addr }" disabled readonly>
							<input type="hidden" id="std_addr" name="std_addr" size="40" value="${ loginUser.std_addr }">
							<input type="text" name="std_addr1" size="40" id="sample4_roadAddress" placeholder="도로명주소" readonly>
							<span id="guide" style="color:#999;display:none"></span><br />							
							<input type="text" name="std_addr2" size="40" id="sample4_detailAddress" placeholder="상세주소">
							<input type="hidden" name="prof_addr" value="">										
						</c:when>
						
						<c:when test="${( loginUser.i_std == 0 ) && ( loginUser.i_prof != 0 )}">
							<input type="text" id="show_addr"  size="40" value="${ loginUser.prof_addr }" disabled readonly>
							<input type="hidden" id="prof_addr" name="prof_addr" size="40" value="${ loginUser.prof_addr }">
							<input type="text" name="prof_addr1" size="40" id="sample4_roadAddress_p" placeholder="도로명주소" readonly>
							<span id="guide2" style="color:#999;display:none"></span><br />							
							<input type="text" name="prof_addr2" size="40" id="sample4_detailAddress_p" placeholder="상세주소">
							<input type="hidden" name="std_addr" value="">
							<input type="hidden" name="std_addr1" size="40" id="sample4_roadAddress" placeholder="도로명주소" readonly>
							<input type="hidden" name="std_addr2" size="40" id="sample4_detailAddress" placeholder="상세주소">				
			         	</c:when>
		    		</c:choose>
				</td>
				</tr>
				<tr>
	      		<th rowspan="2"></th>
	      		<td style="border-bottom: 8px double grey; ">
				<c:choose>         		
					<c:when test="${( loginUser.i_std != 0 ) && ( loginUser.i_prof == 0 )}">
						<input type="text" size="4" name="std_zip" id="sample4_postcode" value="${ loginUser.std_zip }" readonly>
                		<input type="button" class="addrBtn" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
					</c:when>
					<c:when test="${( loginUser.i_std == 0 ) && ( loginUser.i_prof != 0 )}">
						<input type="text" size="4" name="prof_zip" id="sample4_postcode_p" value="${ loginUser.prof_zip }" readonly>
						<input type="button" class="addrBtn" onclick="sample4_execDaumPostcode_p()" value="우편번호 찾기"><br>
			     	</c:when>
				</c:choose>
	  		</td>
	  	</tr>  
  	</table>
  	 <div class="btnContainer">
	  	<a href="/user/mypage"><input type="button" value="뒤로"></a>  	
		<input id="subBtn" type="submit" value="저장">
	  </div>	
  </form>    
     
 
</div>        
<!-- script -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="/res/js/user_js/mypage.js"></script>

