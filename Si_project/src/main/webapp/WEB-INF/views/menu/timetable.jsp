<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/res/css/common.css" />
<link rel="stylesheet" href="/res/css/menu/menu_timetable.css" />
<div class="timetableContainer">
	<h1>시간표</h1>
	<table>
		<thead>
			<tr>
				<th style="width:100px;"></th>
				<th class="tb_th">mon</th>
				<th class="tb_th">tue</th>
				<th class="tb_th">wed</th>
				<th class="tb_th">thu</th>
				<th class="tb_th">fri</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th>1교시</th>
				<td class="top-col"></td>
				<td class="top-col"></td>
				<td class="top-col english" rowspan="2">영문학개론<br><span class="place">302관 308호</span></td>
				<td class="top-col"></td>
				<td class="top-col english" rowspan="2">영문학개론<br><span class="place">302관 308호</span></td>
			</tr>
			<tr>
				<th>2교시</th>
				<td></td>
				<td rowspan="2" class="modern">현대세계와 윤리문제<br><span class="place">302관 406호</span></td>				
				<td rowspan="2" class="modern">현대세계와 윤리문제<br><span class="place">302관 406호</span></td>			
			</tr>
			<tr>
				<th>3교시</th>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<th>4교시</th>
				<td></td>
				<td></td>
				<td></td>
				<td rowspan="2" class="programming">기초 프로그래밍 I<br><span class="place">205관 104호</span></td>
				<td></td>
			</tr>
			<tr>
				<th>5교시</th>
				<td rowspan="3" class="math">대학수학 I<br><span class="place">101관 308호</span></td>
				<td class="read">읽기와 쓰기<br><span class="place">101관 202호</span></td>
				<td rowspan="2" class="programming">기초 프로그래밍 I<br><span class="place">205관 104호</span></td>				
				<td class="read">읽기와 쓰기<br><span class="place">101관 202호</span></td>
			</tr>			
			<tr>
				<th>6교시</th>				
				<td rowspan="2" class="global">글로벌 의사소통 A<br><span class="place">302관 501호</span></td>				
				<td rowspan="2" class="global">글로벌 의사소통 A<br><span class="place">302관 501호</span></td>
				<td></td>
			</tr>
			<tr>
				<th>7교시</th>			
				<td></td>
				<td></td>
			</tr>
			<tr>
				<th>8교시</th>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<th>9교시</th>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<th>10교시</th>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>	
		</tbody>
	</table>
	<div class="info">
		<div><span class="info_accent">1 교시</span><span class="time">9:00 - 10:00</span></div>
		<div><span class="info_accent">2 교시</span><span class="time">10:00 - 11:00</span></div>
		<div><span class="info_accent">3 교시</span><span class="time">11:00 - 12:00</span></div>
		<div><span class="info_accent">4 교시</span><span class="time">12:00 - 1:00</span></div>
		<div><span class="info_accent">5 교시</span><span class="time">1:00 - 2:00</span></div>
		<div><span class="info_accent">6 교시</span><span class="time">2:00 - 3:00</span></div>
		<div><span class="info_accent">7 교시</span><span class="time">3:00 - 4:00</span></div>
		<div><span class="info_accent">8 교시</span><span class="time">4:00 - 5:00</span></div>
		<div><span class="info_accent">9 교시</span><span class="time">5:00 - 6:00</span></div>
		<div><span class="info_accent" style="margin-right:2px;">10 교시</span><span class="time">6:00 - 7:00</span></div>		
	</div>
</div>
<!-- js -->
<script src="/res/js/mng_js/mng_home.js"></script>
