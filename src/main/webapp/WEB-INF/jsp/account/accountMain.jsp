<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<!-- HEAD -->
<jsp:include page="/WEB-INF/include/head.jsp" />

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<!-- modal -->
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

  <style>
  :root{
	--body-background-color: #f5f6f7;
	--font-color: #4e4e4e;
	--border-gray-color : #dadada;
	--naver-green-color: #04c75a;
	--naver-green-border-color: #06b350;
}

    body {
      min-height: 100vh;
	  background:var(--body-background-color);
	  

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
    .forms{
    	margin-left:auto;
    	margin-right:auto;
  	
  	}
    
  </style>
  
  <!-- 우편번호 (다음 api) -->
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
 
 
 
  <script>
        function pwCheck(){
 
            var pw = document.getElementById('pw').value;
            var SC = ["!","@","#","$","%"];
            var check_SC = 0;
 
            if(pw.length < 6 || pw.length>16){
                window.alert('비밀번호는 6글자 이상, 16글자 이하만 이용 가능합니다.');
                document.getElementById('pw').value='';
            }
            for(var i=0;i<SC.length;i++){
                if(pw.indexOf(SC[i]) != -1){
                    check_SC = 1;
                }
            }
            if(check_SC == 0){
                window.alert('!,@,#,$,% 의 특수문자가 들어가 있지 않습니다.')
                document.getElementById('pw').value='';
            }
            if(document.getElementById('pw').value !='' && document.getElementById('pw2').value!=''){
                if(document.getElementById('pw').value==document.getElementById('pw2').value){
                    document.getElementById('check').innerHTML='비밀번호가 일치합니다.'
                    document.getElementById('check').style.color='blue';
                }
                else{
                    document.getElementById('check').innerHTML='비밀번호가 일치하지 않습니다.';
                    document.getElementById('check').style.color='red';
                }
            }
        }
    </script>
<script>
		

    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>
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






  <!-- Bootstrap CSS -->






 

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