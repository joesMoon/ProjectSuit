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
		<link rel="stylesheet" href="/resources/include/css/button.css"/>
		<!-- 모바일 웹 페이지 설정 끝 -->

		<!--IE8이하 브라우저에서 HTML5를 인식하기 위해서는 아래의 패스필터를 적용하면 된다. http://code.google.com/--> 
		<!--[if lt IE 9]>
		<script src="/resources/js/html5shiv.js"></script>
		<![endif]--> 		
		<script type="text/javascript" src="/resources/include/js/jquery-1.12.4.min.js"></script>
		<style type="text/css">
		body {
		 margin: 0px auto;
		 padding : 0px auto;
		}
			.container {
				text-align : center;
				height : auto;
				background : white;
			}
			
			.btnContainer { 
				width : 15%;
				 float :left;
			}
			.button-4, .button-3, .button-2, .button-6  {
				
				width : 150px;
				height: 150px;
				margin : 20px;
				border : 1px solid black;
				border-radius: 30px;
				font-size: 30px;
				font-family: serif;
				background : #e6e6e6;
			}
			.editContainer {
			margin-left : 15%;
				width : 85%;
				height : 100%;
			}
		</style>
		
</head>
<body>
	<div class="buttonContainer">
  		<div class="btnContainer">
		  <div class="button-4">
		    <div class="eff-4"></div>
		    <a href="#"> 회원 </a>
		  </div>
		  <div class="button-2">
		    <div class="eff-2"></div>
		    <a href="#"> 판매자 </a>
		  </div>
		  <div class="button-3">
		    <div class="eff-3"></div>
		    <a href="#"> 비밀번호수정 </a>
		  </div>
		  <div class="button-6">
		    <div class="eff-6"></div>
		    <a href="#"> 구매내역 </a>
		  </div>
		</div>
		
		<div class = "editContainer">
			<jsp:include page="/resources/template/edit.jsp"></jsp:include>
		</div>
  
	</div>
  
</body>
</html>