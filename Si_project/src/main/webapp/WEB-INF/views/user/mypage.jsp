<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html lang="ko" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="icon" href="/res/img/logo_title.jpg" type="image/jpg" />
    <link rel="stylesheet" href="/res/css/common.css" />
    <link rel="stylesheet" href="/res/css/mng/mng_home.css" />
    <link rel="stylesheet" href="/res/css/menu/notice.css" />
    <link rel="stylesheet" href="/res/css/user/mypage.css" />
    <!-- img icon -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--font-->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <!-- search -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  </head>
  <body>
        <!-- 마이페이지-->
        <div class="mypageContainer">
          <h1>회원정보수정</h1>
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
		          			${loginUser.std_no}
		          		</c:when>
		          		<c:when test="${( loginUser.i_std == 0 ) && ( loginUser.i_prof != 0 )}">
			          		${loginUser.prof_no}
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
          		<th>비밀번호</th>
          		<td>
          			<c:choose>         		
		          		<c:when test="${( loginUser.i_std != 0 ) && ( loginUser.i_prof == 0 )}">
		          			<a onclick="openCheckStdPw()"><input type="button" class="chgPwBtn" value="비밀번호 변경"></a>
		          		</c:when>
		          		<c:when test="${( loginUser.i_std == 0 ) && ( loginUser.i_prof != 0 )}">
          					<a onclick="openCheckProfPw()"><input type="button" class="chgPwBtn" value="비밀번호 변경"></a>
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
		          			${ loginUser.std_email }
		          		</c:when>
		          		<c:when test="${( loginUser.i_std == 0 ) && ( loginUser.i_prof != 0 )}">
          					${ loginUser.prof_email }
			          	</c:when>
				    </c:choose>
          		</td>
          	</tr>
          	<tr>
          		<th>연락처</th>
          		<td>
          			<c:choose>         		
		          		<c:when test="${( loginUser.i_std != 0 ) && ( loginUser.i_prof == 0 )}">
		          			${ loginUser.std_phone }
		          		</c:when>
		          		<c:when test="${( loginUser.i_std == 0 ) && ( loginUser.i_prof != 0 )}">
          					${ loginUser.prof_phone }
			          	</c:when>
				    </c:choose>
          		</td>
          	</tr>
          	<tr>
          		<th>주소</th>
          		<td>
          			<c:choose>         		
		          		<c:when test="${( loginUser.i_std != 0 ) && ( loginUser.i_prof == 0 )}">
		          			${ loginUser.std_addr }
		          		</c:when>
		          		<c:when test="${( loginUser.i_std == 0 ) && ( loginUser.i_prof != 0 )}">
          					${ loginUser.prof_addr }
			          	</c:when>
				    </c:choose>
				</td>
          	</tr>
          	<tr>
          		<th rowspan="2"></th>
          		<td style="border-bottom: 8px double grey;">
          			<c:choose>         		
		          		<c:when test="${( loginUser.i_std != 0 ) && ( loginUser.i_prof == 0 )}">
		          			${ loginUser.std_zip }
		          		</c:when>
		          		<c:when test="${( loginUser.i_std == 0 ) && ( loginUser.i_prof != 0 )}">
          					${ loginUser.prof_zip }
			          	</c:when>
				    </c:choose>
          		</td>
          	</tr>
          </table>       
          <div class="btnContainer">
	          <a href="/mypage/update"><input type="button" value="수정"></a>
          </div>
        </div>        
      <!-- js -->
      <script src="/res/js/menu_js/notice.js"></script>
      <script>
      	function openCheckStdPw(){
		      myWindow = window.open("/user/checkCurrentStdPw", "_blank", "resizable=yes,top=300,left=800, width=600, height=600");
      	}
      	function openCheckProfPw(){
		      myWindow = window.open("/user/checkCurrentProfPw", "_blank", "resizable=yes,top=300,left=800, width=600, height=600");
    	}
      </script>
  </body>
</html>
