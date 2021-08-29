<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">

<!-- HEAD -->
<jsp:include page="/WEB-INF/include/head.jsp" />

<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/slicknav.css">
<link rel="stylesheet" href="assets/css/nice-select.css">
<link rel="stylesheet" href="assets/css/slick.css">
<body class="host_version">

	<!-- header -->
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


	<jsp:include page="/WEB-INF/include/header.jsp"></jsp:include>

	<!-- Header End -->

	<main>
		<div class="all-title-box">
			<div class="container text-center">
				<h1>
					Login<span class="m_1">하나런 페이지에 오신걸 환영합니다.</span>
				</h1>
			</div>
		</div>

		<!--================login_part Area =================-->
		<section class="login_part section_padding ">
			<div class="container">
				<div class="row align-items-center">
					<!--  <div class="col-lg-6 col-md-6">
                        <div class="login_part_text text-center">
                            <div class="login_part_text_iner">
                            
                                <h1>방문이 처음이신가요?</h2>
                                <p>신규회원 가입하러 가기!</p>
                                <a href="#" class="btn_3">Create an Account</a>
                            </div>
                        </div>
                    </div> -->

					<div class="col-lg-6 col-md-6" style="position: relative">
						<div class="login_part_form">
							<div class="login_part_form_iner">
								<!-- Nav tabs -->
								<div class="modal-body customer-box row">
									<div class="col-md-12">
										<!-- Nav tabs -->
										<ul class="nav nav-tabs">
											<li class="active"><a href="#Login" data-toggle="tab">로그인</a></li>
											<li><a href="#Registration" data-toggle="tab">회원가입</a></li>
										</ul>
										<!-- Tab panes -->
										<div class="tab-content">
											<div class="tab-pane active" id="Login">
											
												<form method="post" name="loginForm" onsubmit="return checkForm()" role="form" class="form-horizontal">
													<div class="form-group">
														<div class="col-sm-12">
															<input class="form-control" id="email1" name="id" placeholder="아이디"
																type="text">
														</div>
													</div>
													<div class="form-group">
														<div class="col-sm-12">
															<input class="form-control" name="password" id="exampleInputPassword1"
																placeholder="비밀번호" type="password">
														</div>
													</div>
													<div class="row">
														<div class="col-sm-10">
															<button type="submit"
																class="btn btn-light btn-radius btn-brd grd1">
																확인</button>
															<a class="for-pwd" href="javascript:;">비밀번호 찾기</a>
														</div>
													</div>
												</form>
											</div>
											
											<!-- 회원가입 -->
											<div class="tab-pane" id="Registration">
												<form role="form" class="form-horizontal">
													<div class="form-group">
														<div class="col-sm-12">
															<input class="form-control" placeholder="Name"
																type="text">
														</div>
													</div>
													<div class="form-group">
														<div class="col-sm-12">
															<input class="form-control" id="email"
																placeholder="Email" type="email">
														</div>
													</div>
													<div class="form-group">
														<div class="col-sm-12">
															<input class="form-control" id="mobile"
																placeholder="Mobile" type="email">
														</div>
													</div>
													<div class="form-group">
														<div class="col-sm-12">
															<input class="form-control" id="password"
																placeholder="Password" type="password">
														</div>
													</div>
													<div class="row">
														<div class="col-sm-10">
															<button type="button"
																class="btn btn-light btn-radius btn-brd grd1">
																Save &amp; Continue</button>
															<button type="button"
																class="btn btn-light btn-radius btn-brd grd1">
																Cancel</button>
														</div>
													</div>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
		</section>
		<!--================login_part end =================-->
	</main>

	<br>
	<!-- Footer Start-->
	<jsp:include page="/WEB-INF/include/footer.jsp"></jsp:include>
	<!-- Footer End-->




	<script
		src="${ pageContext.request.contextPath }/assets/js/vendor/modernizr-3.5.0.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/assets/js/bootstrap.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/assets/js/popper.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/assets/js/jquery.slicknav.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/resources/js/vendor/jquery-1.12.4.min.js"></script>
	<%--   
    <!-- JS here -->
    <!-- Jquery, Popper, Bootstrap -->
    <!-- Jquery Mobile Menu -->

    --%>


	<%--   <!-- Scroll up, nice-select, sticky -->
    <script src="${ pageContext.request.contextPath }/assets/js/jquery.scrollUp.min.js"></script>
    <script src="${ pageContext.request.contextPath }/assets/js/jquery.nice-select.min.js"></script>
    <script src="${ pageContext.request.contextPath }/assets/js/jquery.sticky.js"></script>

    <!-- contact js -->
    <script src="${ pageContext.request.contextPath }/assets/js/jquery.magnific-popup.js"></script> --%>


	<script src="${ pageContext.request.contextPath }/assets/js/plugins.js"></script>
	<script src="${ pageContext.request.contextPath }/assets/js/main.js"></script>
	<%--     <!-- Jquery Plugins, main Jquery -->	
 --%>
</body>

</html>