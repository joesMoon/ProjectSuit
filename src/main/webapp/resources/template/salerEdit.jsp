<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>bootstrap template</title>

    <!-- Bootstrap -->
    <!-- font awesome -->
    <!-- Custom style -->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    	<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
        <script type="text/javascript" src="/resources/include/js/html5shiv.js"></script>
    <script type="text/javascript" src="/resources/include/js/jquery-1.12.4.min.js"></script>
 <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample6_address').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('sample6_address2').focus();
            }
        }).open();
    }
</script>
  </head>
  <body>


      <article class="container">
     

        <div class="col-md-12">
        <div class="page-header">
           <h1>판매자수정 <small>Saler Edit</small></h1>
        </div>
        <form class="form-horizontal">
           
        <div class="form-group">
            <label class="col-sm-3 control-label" for="inputName">사업자번호</label>
          <div class="col-sm-6">
				 <input class="form-control" id="inputName" type="text" value="0123-1234567-1234">
          </div>
        </div>
          
        <div class="form-group">
            <label class="col-sm-3 control-label" for="inputName">대표자명</label>
          <div class="col-sm-6">
            <input class="form-control" id="inputName" type="text" placeholder="이름">
          </div>
        </div>
      
        <div class="form-group">
          <label class="col-sm-3 control-label" for="inputEmail">이메일</label>
        <div class="col-sm-4">
          <input class="form-control" id="inputEmail" type="email" placeholder="이메일">
        </div>
        
         <div class="col-sm-2">
                     <select id="emailDomain" class="form-control">
                        <option value="naver.com">네이버</option>
                        <option value="daum.net">다음</option>
                        <option value="nate.com">네이트</option>
                        <option value="google.co.kr">구글</option>
                     </select>
               
         </div> 
        </div>
        
          <div class="form-group">
            <label class="col-sm-3 control-label" for="inputlNumber">대표자번호</label>
          <div class="col-sm-6">
            <input class="form-control" id="inputNumber" type="tel" placeholder="- 없이 입력해 주세요">
          </div>
        </div>
        
      
        <div class="form-group">
          <label class="col-sm-3 control-label" for="inputAddress">주소</label>
           <div class="col-sm-6">
            <input class="form-control" type="text" id="sample6_postcode" placeholder="우편번호">
          <input class="form-control" id="addressBtn" type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
           <input class="form-control" type="text" id="sample6_address" placeholder="주소">
         <input class="form-control" type="text" id="sample6_address2" placeholder="상세주소">
            </div>
        </div>
      
      
      
        <div class="form-group">
          <div class="col-sm-12 text-center">
            <button class="btn btn-primary" type="submit">정보수정<i class="fa fa-check spaceLeft"></i></button>
            <button class="btn btn-danger" type="submit">다시쓰기<i class="fa fa-times spaceLeft"></i></button>
          </div>
        </div>
        </form>
          <hr>
        </div>
      </article>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
  </body>
</html>