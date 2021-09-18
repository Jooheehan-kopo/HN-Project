<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<!-- HEAD -->
<jsp:include page="/WEB-INF/include/head.jsp" />

<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<!-- modal -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
:root { -
	-body-background-color: #f5f6f7; -
	-font-color: #4e4e4e; -
	-border-gray-color: #dadada; -
	-naver-green-color: #04c75a; -
	-naver-green-border-color: #06b350;
}

body {
	min-height: 100vh;
	background: var(- -body-background-color);
}

.input-form {
	max-width: 680px;
	margin-top: 80px;
	padding: 32px;
	background: #fff;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
}

.forms {
	margin-left: auto;
	margin-right: auto;
}
</style>


<script>
	function complete(){
		alert(${userVO.id}'님, 환영합니다! 회원가입이 완료되었습니다.')
	}

</script>




<script>


$(document).ready(function() {

	$('#phoneckBtn').click(function() {
		var phNum = $('#phoneNumber').val()

		$.ajax({
			type : 'GET',
			url : '${pageContext.request.contextPath }/send/sms/' + phNum ,
			success : function(data) {
				var checkNum = data
				alert(checkNum)

			},
			error : function() {
				alert('Err')
			}
		})

	})
})


</script>



<jsp:include page="/WEB-INF/include/head.jsp"></jsp:include>

<body class="host_version">
	<!-- LOADER -->
	<div id="preloader">
		<div class="loading">
			<div class="finger finger-1">
				<div class="finger-item">
					<span></span><i></i>
				</div>
			</div>
			<div class="finger finger-2">
				<div class="finger-item">
					<span></span><i></i>
				</div>
			</div>
			<div class="finger finger-3">
				<div class="finger-item">
					<span></span><i></i>
				</div>
			</div>
			<div class="finger finger-4">
				<div class="finger-item">
					<span></span><i></i>
				</div>
			</div>
			<div class="last-finger">
				<div class="last-finger-item">
					<i></i>
				</div>
			</div>
		</div>
	</div>
	<!-- END LOADER -->

	<!-- header -->

	<jsp:include page="/WEB-INF/include/header.jsp"></jsp:include>



	<div class="all-title-box">
		<div class="container text-center">
			<h1>
				하나은행 계좌개설<span class="m_1"><br>비대면 계좌개설로 빠르고 간편하게!</span>
			</h1>
		</div>
	</div>

	<div id="overviews" class="section wb">

		<div
			class="container d-flex justify-content-center align-items-center">
			<div class="progresses" style="justify-content: center;">
				<div class="steps">
					<span><i class="fa fa-check"></i></span>
				</div>
				<span class="line"></span>
				<div class="steps">
					<span><i class="fa fa-check"></i></span>
				</div>
				<span class="line"></span>
				<div class="steps">
					<span><i class="fa fa-check"></i></span>
				</div>

			</div>
		</div>

		<!-- end title -->

		<hr class="invis">

		<!-- modal -->
		<link rel="stylesheet"
			href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

		<style>
:root { -
	-body-background-color: #f5f6f7; -
	-font-color: #4e4e4e; -
	-border-gray-color: #dadada; -
	-naver-green-color: #04c75a; -
	-naver-green-border-color: #06b350;
}

body {
	min-height: 100vh;
	background: var(- -body-background-color);
}

.input-form {
	max-width: 680px;
	margin-top: 80px;
	padding: 32px;
	background: #fff;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
}

.forms {
	margin-left: auto;
	margin-right: auto;
}

/* progress */
@import
	url("https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800&display=swap")
	;

.progresses {
	display: flex;
	align-items: center
}

.line {
	width: 250px;
	height: 6px;
	background: #008485;
}

.steps {
	display: flex;
	background-color: #008485;
	color: #fff;
	font-size: 14px;
	width: 40px;
	height: 40px;
	align-items: center;
	justify-content: center;
	border-radius: 50%
}
</style>

		<!-- Required Fremwork -->

		<!-- themify-icons line icon -->
		<link rel="stylesheet" type="text/css"
			href="${pageContext.request.contextPath }/assets/icon/themify-icons/themify-icons.css">
		<link rel="stylesheet" type="text/css"
			href="${pageContext.request.contextPath }/assets/icon/font-awesome/css/font-awesome.min.css">
		<!-- ico font -->
		<link rel="stylesheet" type="text/css"
			href="${pageContext.request.contextPath }/assets/icon/icofont/css/icofont.css">
		<!-- Style.css -->
		<link rel="stylesheet" type="text/css"
			href="${pageContext.request.contextPath }/assets/css/style.css">
		<script>
	function complete(){
		alert($'{userVO.id}'님, 환영합니다! 회원가입이 완료되었습니다.')
	}

</script>

		</head>

		<body>

			<div class="container">
				<div class="input-form-backgroud row">
					<div class="input-form forms">
						<h4 class="mb-3">
							<c:out value="${userVO.name }"></c:out>
							님,<br> 신청절차가 성공적으로 완료되었습니다!
						</h4>

						<div class="row">
							<div class="mb-3">
								<label>계좌 조회하러가기</label>

								
								<!-- template -->

								<div class="col-md-6 col-xl-9">
									<div class="card bg-c-yellow order-card" style="width: 500px;">
										<div class="card-block" style="height: 100px">
											<h6 class="m-b-20" id="">주문가능</h6>
											<h2 class="text-right">
												<i class="ti-reload f-left"></i><span>$42,562</span>
											</h2>
											<p class="m-b-0">
												This Month<span class="f-right">$5,032</span>
											</p>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>







				<hr class="hr3">

				<div class="row">
					<div class="col-md-4 col-sm-6 col-xs-12">
						<div class="icon-wrapper wow fadeIn" data-wow-duration="1s"
							data-wow-delay="0.2s">
							<i class="flaticon-cup global-radius effect-1 alignleft"></i>
							<h3>Awards Winner Support</h3>
							<p>
								Our Landigoo responsive site template elements 100% compatible
								with all mobile devices and modern browsers! <small
									class="readmore"><a href="#">Read more</a></small>
							</p>
						</div>
						<!-- end icon-wrapper -->
					</div>
					<!-- end col -->

					<div class="col-md-4 col-sm-6 col-xs-12">
						<div class="icon-wrapper wow fadeIn" data-wow-duration="1s"
							data-wow-delay="0.4s">
							<i
								class="flaticon-cer-file-format global-radius effect-1 alignleft"></i>
							<h3>Free SSL Certifica</h3>
							<p>
								We offer pixel perfect icons, graphic sources for
								high-resolution devices! Landigoo compatible retina display! <small
									class="readmore"><a href="#">Read more</a></small>
							</p>
						</div>
						<!-- end icon-wrapper -->
					</div>
					<!-- end col -->

					<div class="col-md-4 col-sm-6 col-xs-12">
						<div class="icon-wrapper wow fadeIn" data-wow-duration="1s"
							data-wow-delay="0.6s">
							<i class="flaticon-locked global-radius effect-1 alignleft"></i>
							<h3>High Security</h3>
							<p>
								When you need anything about for Landigoo template, just drop an
								email or leave a feedback from TF!<small class="readmore"><a
									href="#">Read more</a></small>
							</p>
						</div>
						<!-- end icon-wrapper -->
					</div>
					<!-- end col -->
				</div>
				<!-- end row -->
			</div>
			<!-- end container -->
	</div>
	<!-- end section -->

	<jsp:include page="/WEB-INF/include/footer.jsp"></jsp:include>

</body>
</html>