<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<!-- HEAD -->
<jsp:include page="/WEB-INF/include/head.jsp" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

<script>

	$(document).ready(function(){
		  
		
		
		$('#sendPhoneNumber').click(function(){
	        	let phoneNumber = $('#inputPhoneNumber').val();
	            console.log(phoneNumber)
	            alert('인증번호 발송 완료!')
	            url = '${ pageContext.request.contextPath }/send/sms'
	            console.log(url)
	            let data = phoneNumber 
		
		$.ajax({
            type: "post",
            url: '${ pageContext.request.contextPath }/send/sms',
            
            contentType : 'application/json',
     /*        data: {
                "phoneNumber" : phoneNumber
            }, */
     		data : JSON.stringify(data), 
            success: function(res){
                $('#checkBtn').click(function(){
                    if($.trim(res) == $('#inputCertifiedNumber').val()){
                    	alert('인증성공')
                    
                        Swal.fire(
                            '인증성공!',
                            '휴대폰 인증이 정상적으로 완료되었습니다.',
                            'success'
                        ) 

                        /* $.ajax({
                            type: "GET",
                            url: "/update/phone",
                            data: {
                                "phoneNumber" : $('#inputPhoneNumber').val()
                            }
                        }) */
                        document.location.href="/home"; 
                    }else{
                    /* 		alert('인증실패')
                        Swal.fire({
                            icon: 'error',
                            title: '인증오류',
                            text: '인증번호가 올바르지 않습니다!',
                            footer: '<a href="/index">다음에 인증하기</a>'
                        })  */
                    }
                })


            }
        })
        
	})
	})
		
		/*
        $('#sendPhoneNumber').click(function(){
            let phoneNumber = $('#inputPhoneNumber').val();
            alert('인증번호 발송 완료!')


            $.ajax({
                type: "GET",
                url: "${pageContext.request.contextPath }/send/sms",
                data: {
                    "phoneNumber" : phoneNumber
                },
                success: function(res){
                    $('#checkBtn').click(function(){
                        if($.trim(res) ==$('#inputCertifiedNumber').val()){
                            Swal.fire(
                                '인증성공!',
                                '휴대폰 인증이 정상적으로 완료되었습니다.',
                                'success'
                            )

                            $.ajax({
                                type: "GET",
                                url: "/update/phone",
                                data: {
                                    "phoneNumber" : $('#inputPhoneNumber').val()
                                }
                            })
                            document.location.href="/home";
                        }else{
                            Swal.fire({
                                icon: 'error',
                                title: '인증오류',
                                text: '인증번호가 올바르지 않습니다!',
                                footer: '<a href="/index">다음에 인증하기</a>'
                            })
                        }
                    })


                }
            })
        });
		*/
	

</script>

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




	<%-- <form method="get" name="sendSMS" action="${pageContext.request.contextPath }/send/sms"> --%>
		<div class="login-input-wrap">
			<input placeholder="전화번호를 입력하세요"  id="inputPhoneNumber" name="phoneNumber" type="text"></input>
		<!-- 	<button type="submit" id="sendPhoneNumber" >확인</button> -->
			<button id="sendPhoneNumber" >확인</button>
		</div>


<!-- 	</form> -->




	<div id="overviews" class="section wb">
		<div class="container">
			<div class="section-title row text-center">
				<div class="col-md-8 col-md-offset-2">
					<h3>나만의 계좌 개설하면 포인트가!</h3>
					<p class="lead">친구들과 함께 더치페이하기!</p>
				</div>
			</div>
			<!-- end title -->

			<hr class="invis">

			<div class="row">
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="icon-wrapper wow fadeIn" data-wow-duration="1s"
						data-wow-delay="0.2s">
						<i class="flaticon-server global-radius effect-1 alignleft"></i>
						<h3>Unlimited Bandwidth</h3>
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
						data-wow-delay="0.6s">
						<i
							class="flaticon-cloud-computing-1 global-radius effect-1 alignleft"></i>
						<h3>Unlimited Traffic</h3>
						<p>
							When you need anything about for Landigoo template, just drop an
							email or leave a feedback from TF!<small class="readmore"><a
								href="#">Read more</a></small>
						</p>
					</div>
					<!-- end icon-wrapper -->
				</div>
				<!-- end col -->

				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="icon-wrapper wow fadeIn" data-wow-duration="1s"
						data-wow-delay="0.4s">
						<i
							class="flaticon-world-wide-web global-radius effect-1 alignleft"></i>
						<h3>1 Domain Free</h3>
						<p>
							We offer pixel perfect icons, graphic sources for high-resolution
							devices! Landigoo compatible retina display! <small
								class="readmore"><a href="#">Read more</a></small>
						</p>
					</div>
					<!-- end icon-wrapper -->
				</div>
				<!-- end col -->
			</div>
			<!-- end row -->

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
							We offer pixel perfect icons, graphic sources for high-resolution
							devices! Landigoo compatible retina display! <small
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