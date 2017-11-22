<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"/>
		<title>목록보기</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<!-- 브라우저의 호환성 보기 모드를 막고, 해당 브라우저에서 지원하는 가장 최신 버전의 방식으로 HTML 보여주도록 설정.-->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
		<!--viewport : 화면에 보이는 영역을 제어하는 기술. width는 device-width로 설정. initial-scale는 초기비율-->
		<!-- 모바일 웹 페이지 설정 -->
		<link rel="shortcut icon" href="/resources/image/icon.png" />
		<link rel="apple-touch-icon" href="/resources/image/icon.png" />
		<!-- 모바일 웹 페이지 설정 끝 -->

		<!--IE8이하 브라우저에서 HTML5를 인식하기 위해서는 아래의 패스필터를 적용하면 된다. http://code.google.com/--> 
		<!--[if lt IE 9]>
		<script src="/resources/include/js/html5shiv.js"></script>
		<![endif]--> 		
		<script type="text/javascript" src="/resources/include/js/jquery-1.12.4.min.js"></script>
		<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBL8verqitU-QPBkawHEq3ytr8y-ZxeVlY&callback=initMap"async defer></script>
	
	<style type="text/css">

		.introContainer {
			width : 100%;
			height : auto;
			background: rgba(0,0,0,0.3);
			
		}
		
		.intro-menu {
			width : 30%;
			padding : 50px 0px;
			position : fixed;
		} 
		 
		.intro-menu > h2 {
			color :white;
			margin-left : 4em;
			margin-bottom : 1.4em; 
		}
		   
		.intro-ul {
			position :relative;
		}
		.intro-ul > li { 
			/* text-decoration: none; */
			position :relative;
			margin-left : 8em;
			list-style : none;
			line-height: 4em; 
			
		}
		a {
			color :white;
			text-decoration: none;
		}
		.intro-way {
			
			margin-left : 30%;
			width : 70%;
			background: white;
		}
		
		.intro-hr{
			background: white;
			border :1px dotted black; 
			
			width : 100%;
		}
		
		.tc {
			margin-top: 100px;
			margin-left : 30px;
		}
		.tl {
			
			margin-left : 30px;
		}	
		
		.mpic {
			width : 80%;
		}
		.dv-1 {
			position : relative;
			margin-bottom : 15px;
			text-align :center;
		}
		.dv-1 > h3 {
			margin-bottom : 20px;
		}
		.dv-2 {
			position : relative;
			padding : 20px; 
			height: auto;
		}     
		.dv-3{ 
			
			padding : 20px;
			height : auto;
		}
		
		.tc-1 {
			
			width : 93%;
			padding:1em;
			margin-top : 0.7em;   
			word-spacing: 0.5em;
			line-height: 3em;
			text-align : center;
		}  
		.tc-2 {
			width :100%;
			height : 70%;
		} 
		.tc-3 {
			width : 93%;
			padding:1em;
			margin-top : 0.7em;   
			word-spacing: 0.5em;
			line-height: 3em;
			text-align : center;
			 
		}
		.tc-4 {
			width :100%;
			height : 120%;   
		}
		
		table {
			border-collapse: collapse;
		}
		  
		.intro-way2 {
			padding-top : 30px;
			margin-left : 30%;
			width : 70%;	
			height : 1500px; 
			background : white;
			
		}
		#map {
			width : 95%; 
			position :relative;
			height : 96%;
			margin : 0px auto;
			
		}
		.mapway {
			height : 30%;
			width : 80%;
			background: lightgray;
			margin : 0px auto;
			padding-top : 1.2em;
		}
		.locat{
			text-align :center;
			font-size : 2em;
			padding-top : 50px;
			padding-bottom : 30px;
		}
		.trans { 
			margin : 0px auto;
			width : 100%;
			height : 870px; 
			margin-top : 3em;  
			 
		}
		.trans-img {
			height : 100%;
			width :100%;
		}
	</style> 
	
	<script type="text/javascript">
		$(function(){
		});
	
	function initMap() {
		var MyHome = {lat: 37.494789, lng : 126.955619};
	    var map = new google.maps.Map(document.getElementById('map'), { //인스턴스 생성. 첫번째 매개변수에는 지도가 표시된 문서 객체명을 명시
	      center: MyHome, //매개변수에 해당하는 항목으로 객체가 구성된다 lat : 위도, lng : 경도
	      scrollwheel:false, //마우스 휠기능 설정 true or false
	      zoom: 17
	    });
	    
	    var marker = new google.maps.Marker({ //마커 객체 생성
			map: map, //마커가 표시될 맵 객체명 지정
			position : MyHome,
			title : '서울시 동작구 상도1동 500-10 더브라운' //마커에 표시될 내용
		});
	    marker.addListener('click', function() {
	        infowindow.open(map, marker);
	      });
	    
	    var contentString = '<div id="content">'+
	      '<div id="siteNotice">'+
	      '</div>'+
	      '<h1 id="firstHeading" class="firstHeading">주하네 집</h1>'+
	      '<div id="bodyContent">'+
	      '<p>주하와 사라가 함께 사는 집. 여러 노숙자들이 와서 지내는 곳. (대표 노숙자 : <a class = "atag" href = "https://www.facebook.com/profile.php?id=100003337623596">우연정</a>)</p>'+
	      '</div>'+
	      '</div>';
	      
	    var infowindow = new google.maps.InfoWindow({
	        content: contentString
	      });
	  }

	
	</script>
</head>
<body>
<div class="introContainer">
	<div class="intro-menu">
		<h2>about</h2>
		<ul class= "intro-ul">
			<li><a href="#intro-way">소개</a></li>
			<li><a href="#">이용방법</a></li>
			<li><a href="#intro-way2">오시는길</a></li>
		</ul>
	</div>
	
	<div class="intro-way" id="intro-way">
	<table >
		<colgroup>
			<col width="50%">
			<col width="50%">
		</colgroup>
		<tr>
			<td colspan="2" class="dv-1">
				<h3>저희 Sutist는 맞춤정장만을 목적으로 둔 오픈마켓 브랜드입니다.</h3>
				<img class="mpic" src="/resources/image/intro3.jpg" alt="없음"/> 
			</td>
		</tr>
		<tr>
			<td><p class="tc-1">Suitist는 다소 접근하기 어렵게 느껴지는 맞춤정장을 소비자들이 쉽게 접할 수 있도록 돕습니다.</p></td>
			<td><img class="tc-2" src="/resources/image/intro.jpg" alt="없음"/></td>
		</tr>
		<tr>
			<td><img class="tc-4" src="/resources/image/intro4.jpg" alt="없음"/></td>
			<td><p class="tc-3">맞춤정장을 한 곳에 모아 보다 편리하고 보다 좋은 퀄리티, 좋은가격을 제공하는 것이 저희의 사명입니다.</p></td>
		</tr>	
		<tr>
			<td colspan="2">
				<p class = "dv-1">언제까지나 모든 고객님들을 위해 최고의 서비스를 제공하겠습니다.</p>
				<p class = "dv-1">감사합니다.</p>
			</td>
		</tr>
	</table>
	</div>

	<div class="intro-way2" id="intro-way2">
	<hr class="intro-hr">
		<div class="locat"><p>[오시는 길]</p></div>
			<div class="mapway">
				<div id="map">
					<br>&nbsp;지도가 표시될 영역
				</div>
				<div class="trans"><img class="trans-img" src="/resources/image/trans.png"/></div>
			</div> 
	</div>
	
		
</div>
	
	
</body>
</html>