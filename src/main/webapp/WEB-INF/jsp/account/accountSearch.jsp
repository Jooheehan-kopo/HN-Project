<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>

<link ="stylesheet" type="text/css" href="path/to/font-awesome/css/font-awesome.min.css">
<!-- HEAD -->
<jsp:include page="/WEB-INF/include/head.jsp" />



<body class="host_version">

	<!-- login -->


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


	<!-- main image -->

	<div class="all-title-box">
		<div class="container text-center">
			<h1 style="font-size:500%">계좌조회<span class="m_1"></span></h1>
		</div>
	</div>

	<div class="row">
		<div class="mb-3">
		
			

		</div>
	</div>


	

	<div id="overviews" class="section wb">
		<div class="container">
			<div class="section-title row text-center">
				<div class="col-md-8 col-md-offset-2">
					<h3><c:out value="${userVO.name}" />님 보유계좌</h3>
					
					<p class="lead">계좌목록</p>
				</div>
			</div>
			<!-- end title -->

			<hr class="invis">

		<c:forEach items="${bankVO}" var="bank" varStatus="loop">
			<div class="row"  style="float:left; padding:20px">
				<div class="col-md-4 col-sm-6 col-xs-12">
				<div class="card bg-c-green order-card" style="width: 350px;">
					<div class="card-block" style="height: 100px">
					
						<h4 class="m-b-20" id="" style="font-size: 15px"><c:out value="${bank.bank_type}" /> 
						      <span style="color:white; font-size: 18px"><c:out value="${bank.bank_id}" /></span></h4>
						<h2 class="text-right">
							<i class="fa fa-credit-card-alt" aria-hidden="true"></i>
							<fmt:formatNumber value="${bank.bank_id_bal}" pattern="#,###,###"/>	 
						 
						</h2>
						
						<p class="m-b-0">
							<span class="f-right"><c:out value="${bank.bank_id_date}" /></span>
						</p>
					</div>
				</div>
			</div>
			</div>
		</c:forEach>
		</div>
					<!-- end icon-wrapper -->
				
				<!-- end col -->

					
					
					
					
					<!-- end icon-wrapper -->
				</div>
				<!-- end col -->

		
				<!-- end col -->
			</div>
			<!-- end row -->

			<hr class="hr3">

			<div class="row">
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="icon-wrapper wow fadeIn" data-wow-duration="1s"
						data-wow-delay="0.2s">
						<i class="flaticon-cup global-radius effect-1 alignleft"></i>
						<hr>
						<h2 style="text:center">이체내역조회</h2>
						
					</div>
					<!-- end icon-wrapper -->
				</div>
				<!-- end col -->

				
				<!-- end col -->
			</div>
			<!-- end row -->
		</div>
		<!-- end container -->
	</div>
	<!-- end section -->

	<div id="hosting" class="section wb"
		style="background: rgb(248, 248, 248)">
		<div class="container">
			<div class="section-title text-center">
				<h3>Hosting Packages</h3>
				<p class="lead">
					All the Lorem Ipsum generators on the Internet tend to repeat
					predefined chunks as necessary, true generator<br> on the
					Internet. It uses a dictionary of over..
				</p>
			</div>
			<!-- end title -->

			<div class="row dev-list text-center">
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 wow fadeIn"
					data-wow-duration="1s" data-wow-delay="0.2s">
					<div class="widget clearfix">
						<img src="uploads/hosting_01.jpg" alt="" class="img-responsive">
						<div class="widget-title">
							<h3>Shared Hosting</h3>
							<small>Starting from $40/month</small>
						</div>
						<!-- end title -->
						<p>Lorem Ipsum generators on the Internet tend to repeat
							predefined chunks as necessary, true dont miss this one!</p>

						<hr>

						<div class="footer-social">
							<a href="#" class="btn global-radius" data-toggle="tooltip"
								data-placement="top" title="Free Page Builder"><i
								class="flaticon-coding"></i></a> <a href="#"
								class="btn global-radius" data-toggle="tooltip"
								data-placement="top" title="WordPress Support"><i
								class="flaticon-wordpress-logo"></i></a> <a href="#"
								class="btn global-radius" data-toggle="tooltip"
								data-placement="top" title="1 Domain Free"><i
								class="flaticon-world-wide-web"></i></a> <a href="#"
								class="btn global-radius" data-toggle="tooltip"
								data-placement="top" title="50MB Bandwdith"><i
								class="flaticon-cloud-computing-1"></i></a>
						</div>

						<hr>

						<a href="#pricing" data-scroll
							class="btn btn-light grd1 effect-1 btn-radius btn-brd">Order
							Now</a>

					</div>
					<!--widget -->
				</div>
				<!-- end col -->

				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 wow fadeIn"
					data-wow-duration="1s" data-wow-delay="0.4s">
					<div class="widget clearfix">
						<img src="uploads/hosting_02.jpg" alt="" class="img-responsive">
						<div class="widget-title">
							<h3>Reseller Hosting</h3>
							<small>Starting from $80/month</small>
						</div>
						<!-- end title -->
						<p>Internet lorem Ipsum generators on the tend to repeat
							predefined chunks as necessary, finally its release!</p>

						<hr>

						<div class="footer-social">
							<a href="#" class="btn global-radius" data-toggle="tooltip"
								data-placement="top" title="Free Page Builder"><i
								class="flaticon-coding"></i></a> <a href="#"
								class="btn global-radius" data-toggle="tooltip"
								data-placement="top" title="WordPress Support"><i
								class="flaticon-wordpress-logo"></i></a> <a href="#"
								class="btn global-radius" data-toggle="tooltip"
								data-placement="top" title="1 Domain Free"><i
								class="flaticon-world-wide-web"></i></a> <a href="#"
								class="btn global-radius" data-toggle="tooltip"
								data-placement="top" title="150MB Bandwdith"><i
								class="flaticon-cloud-computing-1"></i></a> <a href="#"
								class="btn global-radius" data-toggle="tooltip"
								data-placement="top" title="Money Back Guarentee"><i
								class="flaticon-money"></i></a>
						</div>
						<hr>

						<a href="#pricing" data-scroll
							class="btn btn-light grd1 effect-1 btn-radius btn-brd">Order
							Now</a>

					</div>
					<!--widget -->
				</div>
				<!-- end col -->

				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 wow fadeIn"
					data-wow-duration="1s" data-wow-delay="0.6s">
					<div class="widget clearfix">
						<img src="uploads/hosting_03.jpg" alt="" class="img-responsive">
						<div class="widget-title">
							<h3>Dedicated Server</h3>
							<small>Starting from $120/month</small>
						</div>
						<!-- end title -->
						<p>Predefined internet lorem Ipsum generators on the tend to
							repeat chunks as necessary, true and more..</p>

						<hr>

						<div class="footer-social">
							<a href="#" class="btn global-radius" data-toggle="tooltip"
								data-placement="top" title="Free Page Builder"><i
								class="flaticon-coding"></i></a> <a href="#"
								class="btn global-radius" data-toggle="tooltip"
								data-placement="top" title="WordPress Support"><i
								class="flaticon-wordpress-logo"></i></a> <a href="#"
								class="btn global-radius" data-toggle="tooltip"
								data-placement="top" title="1 Domain Free"><i
								class="flaticon-world-wide-web"></i></a> <a href="#"
								class="btn global-radius" data-toggle="tooltip"
								data-placement="top" title="Unlimited Bandwdith"><i
								class="flaticon-cloud-computing-1"></i></a> <a href="#"
								class="btn global-radius" data-toggle="tooltip"
								data-placement="top" title="Money Back Guarentee"><i
								class="flaticon-money"></i></a> <a href="#"
								class="btn global-radius" data-toggle="tooltip"
								data-placement="top" title="24/7 Support"><i
								class="flaticon-lifesaver-security-sportive-tool"></i></a>
						</div>
						<hr>

						<a href="#pricing" data-scroll
							class="btn btn-light grd1 effect-1 btn-radius btn-brd">Order
							Now</a>

					</div>
					<!--widget -->
				</div>
				<!-- end col -->
			</div>
			<!-- end row -->
		</div>
		<!-- end container -->
	</div>
	<!-- end section -->

	

	
	<div id="pricing" class="section lb">
		<div class="container">
			<div class="section-title text-center">
				<h3>Ready to get started?</h3>
				<p class="lead">
					Get the red carpet treatment <strong>just $39 per month!</strong>
					It is estimated that 3.5 million established by personal blogs.<br>
					From each other, we share paid WordPress themes WP Service...
				</p>
			</div>
			<!-- end title -->
		</div>
		<!-- end container -->
	</div>
	<!-- end section -->

	
						
					</div>
					<!-- end carousel -->
				</div>
				<!-- end col -->
			</div>
			<!-- end row -->
		</div>
		<!-- end container -->
	</div>
	<!-- end section -->



	<div class="parallax section db parallax-off"
		style="background-image: url('uploads/parallax_02.jpg');">
		<div class="container">
			<div class="row logos">
				<div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
					<a href="#"><img src="uploads/logo_01.png" alt=""
						class="img-repsonsive"></a>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
					<a href="#"><img src="uploads/logo_02.png" alt=""
						class="img-repsonsive"></a>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
					<a href="#"><img src="uploads/logo_03.png" alt=""
						class="img-repsonsive"></a>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
					<a href="#"><img src="uploads/logo_04.png" alt=""
						class="img-repsonsive"></a>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
					<a href="#"><img src="uploads/logo_05.png" alt=""
						class="img-repsonsive"></a>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
					<a href="#"><img src="uploads/logo_06.png" alt=""
						class="img-repsonsive"></a>
				</div>
			</div>
			<!-- end row -->
		</div>
		<!-- end container -->
	</div>
	<!-- end section -->

	<section class="section nopad cac text-center">
		<a href="#"><h3>Interesting our awesome web design services?
				Just drop an email to us and get quote for free!</h3></a>
	</section>

	<jsp:include page="/WEB-INF/include/footer.jsp"></jsp:include>



</body>
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
</html>