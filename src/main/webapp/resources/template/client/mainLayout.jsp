<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="/resources/image/icon.png" />
    <link rel="apple-touch-icon" href="/resources/image/icon.png" />

    <title><tiles:getAsString name="title"/></title>

    <!-- Bootstrap core CSS -->
 	<link href="/resources/include/css/header.css" rel="stylesheet">
 	<link href="/resources/include/css/footer.css" rel="stylesheet">
    <!-- Custom styles for this template -->
	
	
	<script src = "/resources/include/js/footer.js"></script>
	<script src = "/resources/include/js/introduce.js"></script>
    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="/resources/include/dist/assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
	
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
    		body {
    			font-family : Times;
    			overflow: auto;
    		}
    		.totalContainer {
    			width: 100%;
    		}
    
    		.header {
    			width : 100%;
    		}
    		.body {
    		margin-top : 30px;
    			width : 90%;
    			margin-bottom : 33px;
    			margin :30px auto;
    		}
    		.footer {
    			
    		}
    </style>
  </head>

  <body>
	<div class ="totalContainer">
    <!-- Fixed navbar -->
	<div class="header">
      <tiles:insertAttribute name="header"/>
    </div>

    <!-- Begin page content -->
    <div class="body">
       <tiles:insertAttribute name="body"/>
	</div>
	<div class="margin"></div>
    <footer class="footer">
      <tiles:insertAttribute name="footer"/>
    </footer>
	</div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
   <!--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> -->
    <script src="/resources/include/dist/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="/resources/include/dist/assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>