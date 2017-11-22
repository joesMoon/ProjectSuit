<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>Insert title here</title>
      <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
      <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>

      <link rel="shortcut icon" href="/resources/image/icon.png" />
      <link rel="apple-touch-icon" href="/resources/image/icon.png" />
     
      <!--[if lt IE 9]>
      <script src="/resources/js/html5shiv.js"></script>
      <![endif]--> 
      <style type="text/css">

.myButton {
   -moz-box-shadow:inset 0px 1px 0px 0px #ffffff;
   -webkit-box-shadow:inset 0px 1px 0px 0px #ffffff;
   box-shadow:inset 0px 1px 0px 0px #ffffff;
   background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ffffff), color-stop(1, #ffffff));
   background:-moz-linear-gradient(top, #ffffff 5%, #ffffff 100%);
   background:-webkit-linear-gradient(top, #ffffff 5%, #ffffff 100%);
   background:-o-linear-gradient(top, #ffffff 5%, #ffffff 100%);
   background:-ms-linear-gradient(top, #ffffff 5%, #ffffff 100%);
   background:linear-gradient(to bottom, #ffffff 5%, #ffffff 100%);
   filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffff', endColorstr='#ffffff',GradientType=0);
   background-color:#ffffff;
   -moz-border-radius:6px;
   -webkit-border-radius:6px;
   border-radius:6px;
   border:1px solid #000000;
   display:inline-block;
   cursor:pointer;
   color:#080008;
   font-family:Arial;
   font-size:15px;
   font-weight:bold;
   font-style:italic;
   padding:6px 24px;
   text-decoration:none;
   text-shadow:0px 1px 0px #ffffff;
}
.myButton:hover {
   background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ffffff), color-stop(1, #ffffff));
   background:-moz-linear-gradient(top, #ffffff 5%, #ffffff 100%);
   background:-webkit-linear-gradient(top, #ffffff 5%, #ffffff 100%);
   background:-o-linear-gradient(top, #ffffff 5%, #ffffff 100%);
   background:-ms-linear-gradient(top, #ffffff 5%, #ffffff 100%);
   background:linear-gradient(to bottom, #ffffff 5%, #ffffff 100%);
   filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffff', endColorstr='#ffffff',GradientType=0);
   background-color:#ffffff;
}
.myButton:active {
   position:relative;
   top:1px;
}

        #delete{
           margin-top:10px;
        }
  
         #cartContainer{
         scroll:auto;
         height:auto;
         width : 100%;
         padding-left : 100px;
         padding-top : 30px;
         }
         #cartList{
            width:100%;
         }
         th{
            height:60px;
         }
         td{
            height:150px;
         }
         
         #cartList{
            border-top:1px solid black;
            border-bottom:1px solid black;
            border-collapse: collapse;
         }
         
         .trList{
            border-bottom:1px solid black;
         }
         
         .thList{
            border-top:1px solid lightgrey;
            text-align: center;
         }
         #cntvalue{
         width:30px;}
         
         .imgform{
         }
         
         .thLine{
         border-bottom: 1px solid lightgrey;
         
         }
         
         #tbody{
         }
      </style>
</head>
<body>
   <div id="cartContainer">
      <div>
         <form>
            <table id="cartList">
               <colgroup>
                  <col width="3%">
                  <col width="5%">
                  <col width="10%">
                  <col width="32%" align="right">
                  <col width="5%">
                  <col width="20%">
                  <col width="5%">
                  <col width="10%">
                  <col width="10%">
               </colgroup>
               
               <thead>
                  <tr class="trList">
                     <th class="trList"><input type="checkbox">All</th>
                     <th class="trList">No</th>
                     <th class="trList">Store</th>
                     <th class="trList">Name</th>
                     <th class="trList">cnt</th>
                     <th class="trList">price</th>
                     <th class="trList">배송비</th>
                     <th class="trList">date</th>
                     <th class="trList">결제</th>
                  </tr>
               </thead>
               
               <tbody id="tbody">
                  <tr class="thLine">
                     <td class="thList thList2"><input type="checkbox"></th>
                     <td class="thList thList2">1</td>
                     <td class="thList thList2">lacoste</td>
                     <td class="thList"><img src="/resources/image/shoes.jpg" width="150px" height="150px" style="vertical-align: middle">디스커버리 롱패딩</td>
                     <td class="thList thList2"><input type="number" id="cntvalue"></td>
                     <td class="thList thList2">2090000</td>
                     <td class="thList thList2">2500</td>
                     <td class="thList thList2">2017-11-12</td>
                     <td class="thList thList2">카드
                     </td>
                  </tr>
                  
                  <tr class="thLine">
                     <td class="thList thList2"><input type="checkbox"></th>
                     <td class="thList thList2">1</td>
                     <td class="thList thList2">lacoste</td>
                     <td class="thList"><img src="/resources/image/shoes.jpg" width="150px" height="150px" style="vertical-align: middle">디스커버리 롱패딩</td>
                     <td class="thList thList2"><input type="number" id="cntvalue"></td>
                     <td class="thList thList2">2090000</td>
                     <td class="thList thList2">2500</td>
                     <td class="thList thList2">2017-11-12</td>
                     <td class="thList thList2"><input type="button" value="주문" class="myButton"/>
                        <input type="button" value="취소" class="myButton"/>
                     </td>
                  </tr>
                  
                  <tr class="thLine">
                     <td class="thList thList2"><input type="checkbox"></th>
                     <td class="thList thList2">1</td>
                     <td class="thList thList2">lacoste</td>
                     <td class="thList"><img src="/resources/image/shoes.jpg" width="150px" height="150px" style="vertical-align: middle">디스커버리 롱패딩</td>
                     <td class="thList thList2"><input type="number" id="cntvalue"></td>
                     <td class="thList thList2">2090000</td>
                     <td class="thList thList2">2500</td>
                     <td class="thList thList2">2017-11-12</td>
                     <td class="thList thList2"><input type="button" value="주문" class="myButton"/>
                        <input type="button" value="취소" class="myButton"/>
                     </td>
                  </tr>
                  
                  <tr class="thLine">
                     <td class="thList thList2"><input type="checkbox"></th>
                     <td class="thList thList2">1</td>
                     <td class="thList thList2">lacoste</td>
                     <td class="thList"><img src="/resources/image/shoes.jpg" width="150px" height="150px" style="vertical-align: middle">디스커버리 롱패딩</td>
                     <td class="thList thList2"><input type="number" id="cntvalue"></td>
                     <td class="thList thList2">2090000</td>
                     <td class="thList thList2">2500</td>
                     <td class="thList thList2">2017-11-12</td>
                     <td class="thList thList2"><input type="button" value="주문" class="myButton"/>
                        <input type="button" value="취소" class="myButton"/>
                     </td>
                  </tr>
                  
                  <tr class="thLine">
                     <td class="thList thList2"><input type="checkbox"></th>
                     <td class="thList thList2">1</td>
                     <td class="thList thList2">lacoste</td>
                     <td class="thList"><img src="/resources/image/shoes.jpg" width="150px" height="150px" style="vertical-align: middle">디스커버리 롱패딩</td>
                     <td class="thList thList2"><input type="number" id="cntvalue"></td>
                     <td class="thList thList2">2090000</td>
                     <td class="thList thList2">2500</td>
                     <td class="thList thList2">2017-11-12</td>
                     <td class="thList thList2"><input type="button" value="주문" class="myButton"/>
                        <input type="button" value="취소" class="myButton"/>
                     </td>
                  </tr>
                  
                  <tr class="thLine">
                     <td class="thList thList2"><input type="checkbox"></th>
                     <td class="thList thList2">1</td>
                     <td class="thList thList2">lacoste</td>
                     <td class="thList"><img src="/resources/image/shoes.jpg" width="150px" height="150px" style="vertical-align: middle">디스커버리 롱패딩</td>
                     <td class="thList thList2"><input type="number" id="cntvalue"></td>
                     <td class="thList thList2">2090000</td>
                     <td class="thList thList2">2500</td>
                     <td class="thList thList2">2017-11-12</td>
                     <td class="thList thList2"><input type="button" value="주문" class="myButton"/>
                        <input type="button" value="취소" class="myButton"/>
                     </td>
                  </tr>
                  
                  <tr class="thLine">
                     <td class="thList thList2"><input type="checkbox"></th>
                     <td class="thList thList2">1</td>
                     <td class="thList thList2">lacoste</td>
                     <td class="thList"><img src="/resources/image/shoes.jpg" width="150px" height="150px" style="vertical-align: middle">디스커버리 롱패딩</td>
                     <td class="thList thList2"><input type="number" id="cntvalue"></td>
                     <td class="thList thList2">2090000</td>
                     <td class="thList thList2">2500</td>
                     <td class="thList thList2">2017-11-12</td>
                     <td class="thList thList2"><input type="button" value="주문" class="myButton"/>
                        <input type="button" value="취소" class="myButton"/>
                     </td>
                  </tr>
                  
                  <tr class="thLine">
                     <td class="thList thList2"><input type="checkbox"></th>
                     <td class="thList thList2">1</td>
                     <td class="thList thList2">lacoste</td>
                     <td class="thList"><img src="/resources/image/shoes.jpg" width="150px" height="150px" style="vertical-align: middle">디스커버리 롱패딩</td>
                     <td class="thList thList2"><input type="number" id="cntvalue"></td>
                     <td class="thList thList2">2090000</td>
                     <td class="thList thList2">2500</td>
                     <td class="thList thList2">2017-11-12</td>
                     <td class="thList thList2"><input type="button" value="주문" class="myButton"/>
                        <input type="button" value="취소" class="myButton"/>
                     </td>
                  </tr>
                  
                  
               </tbody>
            </table>
         </form>
      </div>
    </div>
</body>
</html>