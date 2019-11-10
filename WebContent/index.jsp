<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page pageEncoding="EUC-KR"%>


<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- ///////////////////////////// �α��ν� Forward  /////////////////////////////////////// -->
<c:if test="${ ! empty user }">
	<jsp:forward page="main.jsp" />
</c:if>
<!-- //////////////////////////////////////////////////////////////////////////////////////////////////// -->


<!DOCTYPE html>

<html lang="ko">

<head>
<meta charset="EUC-KR">

<!-- ���� : http://getbootstrap.com/css/   -->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!--  ///////////////////////// CSS ////////////////////////// -->
<style></style>

<!--  ///////////////////////// JavaScript ////////////////////////// -->
<script type="text/javascript">
	//============= ȸ�������� ȭ���̵� =============
	$(function() {
		//==> �߰��Ⱥκ� : "addUser"  Event ����
		$("a[href='#' ]:contains('ȸ������')").on("click", function() {
			self.location = "/user/addUser"
		});
	});

	//============= �α��� ȭ���̵� =============
	$(function() {
		//==> �߰��Ⱥκ� : "addUser"  Event ����
		$("a[href='#' ]:contains('�� �� ��')").on("click", function() {
			self.location = "/user/login"
		});
	});
</script>

<script>
	function printClock() {

		var clock = document.getElementById("clock"); // ����� ��� ����
		var currentDate = new Date(); // ����ð�
		var calendar = currentDate.getFullYear() + "-"
				+ (currentDate.getMonth() + 1) + "-" + currentDate.getDate() // ���� ��¥
		var amPm = 'AM'; // �ʱⰪ AM
		var currentHours = addZeros(currentDate.getHours(), 2);
		var currentMinute = addZeros(currentDate.getMinutes(), 2);
		var currentSeconds = addZeros(currentDate.getSeconds(), 2);

		if (currentHours >= 12) { // �ð��� 12���� Ŭ �� PM���� ����, 12�� ����
			amPm = 'PM';
			currentHours = addZeros(currentHours - 12, 2);
		}

		if (currentSeconds >= 50) {// 50�� �̻��� �� ���� ��ȯ�� �ش�.
			currentSeconds = '<span style="color:#de1951;">' + currentSeconds
					+ '</span>'
		}
		clock.innerHTML = currentHours + ":" + currentMinute + ":"
				+ currentSeconds + " <span style='font-size:50px;'>" + amPm
				+ "</span>"; //��¥�� ����� ��

		setTimeout("printClock()", 1000); // 1�ʸ��� printClock() �Լ� ȣ��
	}

	function addZeros(num, digit) { // �ڸ��� �����ֱ�
		var zero = '';
		num = num.toString();
		if (num.length < digit) {
			for (i = 0; i < digit - num.length; i++) {
				zero += '0';
			}
		}
		return zero + num;
	}
</script>



</head>

<body onload="printClock()">

	<!-- ToolBar Start /////////////////////////////////////-->


	<div class="navbar  navbar-default">

		

			<a class="navbar-brand" href="#"><b>Shopping mall</b></a>

			<!-- toolBar Button Start //////////////////////// -->
			<div class="navbar-header">
				<button class="navbar-toggle collapsed" data-toggle="collapse"
					data-target="#target">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<!-- toolBar Button End //////////////////////// -->

			<div class="collapse navbar-collapse" id="target">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><b>ȸ������</b></a></li>
					<li><a href="#"><b>�� �� ��</b></a></li>
				</ul>
			</div>

		
	</div>
	<!-- ToolBar End /////////////////////////////////////-->

	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->


	<!-- �ٴܷ��̾ƿ�  Start /////////////////////////////////////-->
	<div class="row">

		<!--  Menu ���� Start /////////////////////////////////////-->
		<div class="col-md-2">

			<!--  ȸ������ ��Ͽ� ���� -->
			<div class="panel panel-primary">
				<div class="panel-heading">
					<i class="glyphicon glyphicon-heart"></i> ȸ������
				</div>
				<!--  ȸ������ ������ -->
				<ul class="list-group">
					<li class="list-group-item"><a href="#">����������ȸ</a> <i
						class="glyphicon glyphicon-ban-circle"></i></li>
					<li class="list-group-item"><a href="#">ȸ��������ȸ</a> <i
						class="glyphicon glyphicon-ban-circle"></i></li>
				</ul>
			</div>


			<div class="panel panel-primary">
				<div class="panel-heading">
					<i class="glyphicon glyphicon-briefcase"></i> �ǸŻ�ǰ����
				</div>
				<ul class="list-group">
					<li class="list-group-item"><a href="#">�ǸŻ�ǰ���</a> <i
						class="glyphicon glyphicon-ban-circle"></i></li>
					<li class="list-group-item"><a href="#">�ǸŻ�ǰ����</a> <i
						class="glyphicon glyphicon-ban-circle"></i></li>
				</ul>
			</div>


			<div class="panel panel-primary">
				<div class="panel-heading">
					<i class="glyphicon glyphicon-shopping-cart"></i> ��ǰ����
				</div>
				<ul class="list-group">
					<li class="list-group-item"><a href="#">��ǰ�˻�</a></li>
					<li class="list-group-item"><a href="#">�����̷���ȸ</a> <i
						class="glyphicon glyphicon-ban-circle"></i></li>
					<li class="list-group-item"><a href="#">�ֱٺ���ǰ</a> <i
						class="glyphicon glyphicon-ban-circle"></i></li>
				</ul>
			</div>

		</div>
		<!--  Menu ���� end /////////////////////////////////////-->

		<!--  Main start /////////////////////////////////////-->
		<div class="col-md-9">
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
								<h3>�׷�����</h3>
								<p>The atmosphere in Chania has a touch of Florence and
									Venice.</p>
							</div>
						</div>

						<div class="item" align="center">
							<img
								src="../images/uploadFiles/94e4ac7d46c62142c1e995343916d3f7.jpg"
								width="700" height="150" alt="Chania">
							<div class="carousel-caption">
								<h3>����üũ������OPS</h3>
								<p>The atmosphere in Chania has a touch of Florence and
									Venice.</p>
							</div>
						</div>

						<div class="item" align="center">
							<img
								src="../images/uploadFiles/106cf2bb2d910085321bbc9beb55cfd3.jpg"
								width="700" height="150" alt="Flower">
							<div class="carousel-caption">
								<h3>���üũ�ڽ�JK</h3>
								<p>Beatiful flowers in Kolymbari, Crete.</p>
							</div>
						</div>

						<div class="item" align="center">
							<img
								src="../images/uploadFiles/5834e6b1b6dab89cc66cb140d59e0c9d.jpg"
								width="700" height="150" alt="Flower">
							<div class="carousel-caption">
								<h3>��ũ�������콺</h3>
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


		<!--  Main end /////////////////////////////////////-->

	</div>
	<!-- �ٴܷ��̾ƿ�  end /////////////////////////////////////-->




	</div>
	<!--  ȭ�鱸�� div end /////////////////////////////////////-->







</body>

</html>