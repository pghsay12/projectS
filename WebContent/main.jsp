<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--   jQuery , Bootstrap CDN  -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=224c11a0de1c46448c2538c461854848"></script>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<!-- Bootstrap Dropdown Hover CSS -->
   <link href="/css/animate.min.css" rel="stylesheet">
   <link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
   
    <!-- Bootstrap Dropdown Hover JS -->
   <script src="/javascript/bootstrap-dropdownhover.min.js"></script>
   <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
   
   
	
	
	<!--  CSS 추가 : 툴바에 화면 가리는 현상 해결 :  주석처리 전, 후 확인-->
	<style>
        body {
            padding-top : 70px;
        }
   	</style>
   	
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	
</head>
	
<body>


	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->

	<!--  아래의 내용은 http://getbootstrap.com/getting-started/  참조 -->	
   	<div class="container ">
      <!-- Main jumbotron for a primary marketing message or call to action -->
      <div class="jumbotron">
       
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
					
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
						<li data-target="#myCarousel" data-slide-to="3"></li>
					</ol>

					<div class="carousel-inner" role="listbox">
						<div class="item active" align="center">
							<img
								src="../images/uploadFiles/47db1d3168be0ff214f462f5779b3cdc.jpg"
								width="700" height="150" alt="Chania">
							<div class="carousel-caption">
								<h3>그루브셔츠</h3>
								<p>The atmosphere in Chania has a touch of Florence and
									Venice.</p>
							</div>
						</div>

						<div class="item" align="center">
							<img
								src="../images/uploadFiles/94e4ac7d46c62142c1e995343916d3f7.jpg"
								width="700" height="150" alt="Chania">
							<div class="carousel-caption">
								<h3>어텀체크셔츠롱OPS</h3>
								<p>The atmosphere in Chania has a touch of Florence and
									Venice.</p>
							</div>
						</div>

						<div class="item" align="center">
							<img
								src="../images/uploadFiles/106cf2bb2d910085321bbc9beb55cfd3.jpg"
								width="700" height="150" alt="Flower">
							<div class="carousel-caption">
								<h3>모어체크박시JK</h3>
								<p>Beatiful flowers in Kolymbari, Crete.</p>
							</div>
						</div>

						<div class="item" align="center">
							<img
								src="../images/uploadFiles/5834e6b1b6dab89cc66cb140d59e0c9d.jpg"
								width="700" height="150" alt="Flower">
							<div class="carousel-caption">
								<h3>실크히든블라우스</h3>
								<p>Beatiful flowers in Kolymbari, Crete.</p>
							</div>
						</div>
					</div>

					<a class="left carousel-control" href="#myCarousel" role="button"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#myCarousel" role="button"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
        
        
       
     </div>
    </div>
    
   
</body>

</html>