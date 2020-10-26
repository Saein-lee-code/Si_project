<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!-- Focus font -->
<link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@700&display=swap" rel="stylesheet">

<!-- Slide CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@splidejs/splide@latest/dist/css/splide.min.css">

<div class="homeNavContainer">
	<nav>
		<a href="#page-1"><span id="first-content" class="material-icons">stop_circle</span></a>
		<a href="#page-2"><span id="second-content" class="material-icons">stop_circle</span></a>
		<a href="#page-3"><span id="third-content" class="material-icons">stop_circle</span></a>
	</nav>
</div>

<div class="homeContainer scrollContet" id="page-1">
	<div class="videoContainer" >
		<video autoplay muted loop id="myVideo">
			<source src="/res/img/home_video.mp4" type="video/mp4">
		</video>
		<div class="content">
		  <h1>SI UNIVERSITY</h1>
		  <p>SI의 미래， 인류의 미래 Towards Global Eminence</p>
		  <p>21세기 글로벌 시티즌을 양성하는 <span style="letter-spacing: 3px; margin-left: 8px; font-size: 1rem; font-weight: bold;">SI UNIVERSITY</span></p>
		  <button id="myBtn" onclick="myFunction()">Pause</button>
		</div>
	</div>
	
	<div class="secondContainer scrollContent" id="page-2">
		<div class="focus-start"><div class="focus-middle"></div></div>
			<h2>focus</h2>
			<div class="secondContent">
				<div class="content-img"><img src="/res/img/toronto.jpg" alt="토론토">
					<h3>Study In Tronto</h3>
					<span>SI University와 교류 하고있는 토론토 대학교에서<br><span class="next-line">공부를 할 수 있는 기회를 가져보세요. 토론토의 여러 대학교에서</span></span>
				</div>
				<div class="content-img"><img src="/res/img/study.jpg" alt="연구">
					<h3 style="font-size: 1.7rem;">김지아 교수 연구팀, '코로나 연구' 성과</h3>
					<span>한의학과 김지아 교수 연구팀이 '코로나-19 바이러스'</span><span class="next-line">에 대해 새로운 연구 성과를 이번 컨퍼런스에서 발표하게 되었습니다.</span>
				</div>				
				<div class="content-img" style="margin-right:0;"><img src="/res/img/volunteer.jpg" alt="봉사">
					<h3 style="font-size: 1.7rem;">필리핀 해외 봉사 모집</h3>
					<span>해외봉사단파견은 한국국제협력단(Korea Interna</span><span class="next-line">tional Cooperation Agency)의 개발도상국에 대한 무상원조사업의 일환으로 추진되는 대표적인 국민참여형 협력사업입니다.</span>
				</div>							
			</div>		
			
			<h2>Links</h2>
			<div class="secondContent2">
				<ul>
					<li style="padding:0; width: 0;"></li>
					<li><a href="https://www.kosaf.go.kr/ko/main.do" target="_blank">한국장학재단</a></li>
					<li><a href="https://www.youthcenter.go.kr/main.do" target="_blank">온라인청년센터</a></li>
					<li><a href="https://www.all-con.co.kr/page/uni_activity_view.php?cl_srl=449083" target="_blank">국제 NGO 대학생 서포터즈</a></li>
					<li><a href="https://www.wevity.com/" target="_blank">공모전 대외활동</a></li>
				</ul>
			</div>
	</div>
	
	<div class="thirdContainer scrollContent" id="page-3">
		<div class="focus-start"><div class="focus-middle"></div></div>	
		<h2>News</h2>
		<div class="coronaNews">
			코로나 19 확산 예방을 위한 학생회관 3, 4층 출입 통제
			<div class="coronaNews_date">기간: 2020. 3. 3(화) ~ 3.27(금)</div>
			<div style="margin-top: 40px; font-size: 1rem;">▶ 문의: 학생복지처 (000-0000-0000)</div>
		</div>
		<div class="splide">
			<div class="splide__track">
				<ul class="splide__list">
					<li class="splide__slide slide_img"><img src="/res/img/slide1.jpg" alt="슬라이드1 이미지"></li>
					<li class="splide__slide slide_img"><img src="/res/img/slide2.jpg" alt="슬라이드2 이미지"></li>
					<li class="splide__slide slide_img"><img src="/res/img/slide3.jpg" alt="슬라이드3 이미지"></li>
					<li class="splide__slide slide_img"><img src="/res/img/slide4.jpg" alt="슬라이드4 이미지"></li>
					<li class="splide__slide slide_img"><img src="/res/img/slide5.jpg" alt="슬라이드5 이미지"></li>
					<li class="splide__slide slide_img"><img src="/res/img/slide6.jpg" alt="슬라이드6 이미지"></li>
				</ul>
			</div>
		</div>
	</div>
	
	<div id="quick_menu">
		<a href="/mng/scholarship"><img src="/res/img/banner1.jpg" alt="배너광고1"></a>	
	</div>
	
</div>

<script src="https://cdn.jsdelivr.net/npm/@splidejs/splide@latest/dist/js/splide.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(window).scroll(function(){
	var scrollTop = $(document).scrollTop();
	if (scrollTop < 180) {
		scrollTop = 0;
	}else if(scrollTop > 1800){
		scrollTop = 1800;
	}
	
	$("#quick_menu").stop();
	$("#quick_menu").animate( { "top" : scrollTop + 560 });
	
	var topScroll = window.pageYOffset || document.documentElement.scrollTop;

	if(topScroll < 800 || topScroll == 0){
		$("#first-content").css('color', '#948b7b')
		$("#second-content").css('color', 'white')
		$("#third-content").css('color', 'white')
	}else if(topScroll > 700 && topScroll < 1653){
		$("#first-content").css('color', 'white')
		$("#second-content").css('color', '#948b7b')
		$("#third-content").css('color', 'white')
	}else if(topScroll > 1653){
		$("#first-content").css('color', 'white')
		$("#second-content").css('color', 'white')
		$("#third-content").css('color', '#948b7b')
	}		
	});
</script>

<!-- slide -->
<script>
	new Splide( '.splide', {
		type   : 'loop',
		padding: {
			right: '5rem',
			left : '5rem',
		},
	} ).mount();
</script>