
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
		<script src="/resources/js/html5shiv.js"></script>
		<![endif]--> 		
		<script type="text/javascript" src="/resources/include/js/jquery-1.12.4.min.js"></script>

  		<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
        <link rel="stylesheet" href="/resources/include/css/store.css">
        <link rel="stylesheet" href="/resources/include/css/header.css">
        <link rel="stylesheet" href="/resources/include/css/footer.css">
		<style type="text/css">
			.editLi {
				margin-top : 300px;
			}
		</style>
		
   		<script type="text/javascript" src="/resources/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
   	 
   		</head>
   		<script type="text/javascript">
   		    $(function(){
   		        //전역변수
   		        var obj = [];              
   		        //스마트에디터 프레임생성
   		        nhn.husky.EZCreator.createInIFrame({
   		            oAppRef: obj,
   		            elPlaceHolder: "editor",
   		            sSkinURI: "/resources/editor/SmartEditor2Skin.html",
   		            htParams : {
   		                // 툴바 사용 여부
   		                bUseToolbar : true,            
   		                // 입력창 크기 조절바 사용 여부
   		                bUseVerticalResizer : true,    
   		                // 모드 탭(Editor | HTML | TEXT) 사용 여부
   		                bUseModeChanger : true,
   		            }
   		        });
   		        //전송버튼
   		        $("#insertBoard").click(function(){
   		            //id가 smarteditor인 textarea에 에디터에서 대입
   		            obj.getById["editor"].exec("UPDATE_CONTENTS_FIELD", []);
   		            //폼 submit
   		            $("#insertBoardFrm").submit();
   		        });
   		    });
   		    
   		 
   		</script>

</head>

<body>
	<div class="nav">
	<header>
            <nav>
               <ul>
                  <li><a class="menu" href="">Login</a>
                  <li><a class="menu" href="">Join</a>
                  <li><a class="menu" href="">Cart</a>
                  <li><a class="menu" href="">MyPage</a>
               </ul>
            </nav>
         </header>
     </div>
  <div class="wrapBox">
 <div class="row">
   <div class="col-xs-3 leftMenu"> 
   <div class="topImg">  
     <p>Logo</p>
     <img src="/resources/image/profile.png" alt="hotlinked4thewin" class="auth" /></div>
     <ul class="navigation">
       <li>
         <a href="#1" class="">
         소 개
         </a>
       </li>
        <li>
         <a href="#1" class="">
         제 품
         </a>
       </li>
        <li>
         <a href="#1" class="">
         게 시 판
         </a>
       </li>
      
       <li class="editLi">
       <button type="button" id="editBtn" class="btn btn-default" data-toggle="modal" data-target="#sellerModal" data-whatever="@mdo">페이지 수정</button>
       </li>
        

     </ul>
   </div>
   <div class="col-xs-9 rightContent">
     <div class="headerImg" ></div>
     <div class="headerContent">
   <h1>
   Title 
   </h1> 
     <p>
     Title Sub : write here whatever u want to explain about Title or this Store's detail
     </p>
     
     </div>
     <div class="content">
       <div class="items" >
       	
		<h4>목적 : 소비자에게 가장 합리적인 가격으로 최고의 날개를 달아드립니다.</h4>
       </div>
       <div class="items" >
		<p>그 어느 샵보다 당신의 체형을 위한 노력이 있습니다.
       </div>
       </div>
   </div>
     
   </div>
  </div>  
  
  <div class="footer">
  <div id="button"></div>
<div id="container">
<div id="cont">
<div class="footer_center">
	   <h3>Classy footer text</h3>
	   
</div>
</div>
</div>
</div>



<!-- ------------페이지 수정--------------- -->
   <div class="modal fade" id="sellerModal" tabindex="-1" role="dialog" aria-labelledby="sellerModalLabel" aria-hidden="true">
     <div class="modal-dialog">
       <div class="modal-content">
         <div class="modal-header">
          
           <h4 class="modal-title" id="sellerModalLabel">페이지 수정</h4>
         </div>
         <div class="modal-body">
           <form action="/insertBoard.do">
             <div class="form-group">
               <label for="recipient-name" class="control-label">Logo</label>
               <input type="text" class="form-control" id="">
                <p class="help-block">영어 20자이내, 한글 10자이내</p>   
             </div>
             <div class="form-group">
               <label for="recipient-name" class="control-label">Title</label>
               <input type="text" class="form-control" id="">
                <p class="help-block">영어 48자이내, 한글 24자이내</p>
             </div>
             <div class="form-group">
               <label for="recipient-name" class="control-label">Title Sub</label>
               <input type="text" class="form-control" id="">
                <p class="help-block"></p>
               
             </div>
              <div class="form-group">
                   <label class="col-sm-3 control-label" for="inputAddress">상점 소</label>
                   <textarea name="editor" id="editor" style="width: 500px; height: 400px;"></textarea>
              </div>
            <div class="form-group">
            <label class="col-sm-3 control-label" for="inputEmail">지역</label>
            <select id="emailDomain" class="form-control">
                           <option value="">서울특별시.경기도.인천광역시</option>
                           <option value="">경상도</option>
                           <option value="">충청도</option>
                           <option value="">제주도</option>
                        </select>
            </div> 
            
           
           </form>
         </div>
         <div class="modal-footer">
           <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
           <button type="button" class="btn btn-default">등록</button>
         </div>
       </div>
     </div>
   </div>
<!-- -----------------판매자 신청 끝 -->
</body>
</html>
		