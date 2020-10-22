<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="homeContainer">
	<div class="videoContainer">
		<video autoplay muted loop id="myVideo">
			<source src="/res/img/home_video.mp4" type="video/mp4">
		</video>
		<div class="content">
		  <h1>SI University</h1>
		  <p>SI의 미래， 인류의 미래 Towards Global Eminence</p>
		  <p>21세기 글로벌 시티즌을 양성하는 SI대학교</p>
		  <button id="myBtn" onclick="myFunction()">Pause</button>
		</div>
	</div>
	<div id="quick_menu">
		<a href="/mng/scholarship"><img src="/res/img/banner1.jpg" alt="배너광고1"></a>	
	</div>
</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(window).scroll(function(){
	var scrollTop = $(document).scrollTop();
	if (scrollTop < 180) {
	 scrollTop = 0;
	}
	$("#quick_menu").stop();
	$("#quick_menu").animate( { "top" : scrollTop + 560 });
	});
</script>