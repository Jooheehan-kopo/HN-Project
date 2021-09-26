<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<!DOCTYPE html>
<html lang="en">

<!-- HEAD -->
<jsp:include page="/WEB-INF/include/head.jsp"/>

  <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,500&amp;subset=latin-ext" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<style>
.card-custom {
  overflow: hidden;
  min-height: 450px;
  box-shadow: 0 0 15px rgba(10, 10, 10, 0.3);
}

.card-custom-img {
  height: 200px;
  min-height: 200px;
  background-repeat: no-repeat;
  background-size: cover;
  background-position: center;
  border-color: inherit;
}

/* First border-left-width setting is a fallback */
.card-custom-img::after {
  position: absolute;
  content: '';
  top: 161px;
  left: 0;
  width: 0;
  height: 0;
  border-style: solid;
  border-top-width: 40px;
  border-right-width: 0;
  border-bottom-width: 0;
  border-left-width: 545px;
  border-left-width: calc(575px - 5vw);
  border-top-color: transparent;
  border-right-color: transparent;
  border-bottom-color: transparent;
  border-left-color: inherit;
}

.card-custom-avatar img {
  border-radius: 50%;
  box-shadow: 0 0 15px rgba(10, 10, 10, 0.3);
  position: absolute;
  top: 100px;
  left: 1.25rem;
  width: 100px;
  height: 100px;
}




</style>


<body class="host_version"> 

	<!-- Modal -->
	
		
		

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
				<div class="last-finger-item"><i></i></div>
			</div>
		</div>
	</div>
	<!-- END LOADER -->

   <!-- header -->
   
   	<jsp:include page="/WEB-INF/include/header.jsp"></jsp:include>
   	
   	<!-- main image -->
	
	<div class="all-title-box">
		<div class="container text-center">
			<h1>금융 MBTI<span class="m_1">나만의 경제성향 찾기!</span></h1>
		</div>
	</div>
	
    <div id="pricing-box" class="section wb">
        <div class="container">
			<div class="">
				<div class="grid1">
					<span>제<small>1회</small></span>
					<div class="price-tit text-center">
						<h2><c:out value="${userVO.name}"/>님의</h2>
						<p>금융성향테스트 결과입니다</p>
					</div>
					<div class="para">
					<div>
						<p>1 Domain</p>
						<p>10 GB Disk Space</p>
						<p>50 GB Bandwidth</p>
						<p>Free Domain</p>
					</div>
					<div class="sign text-center pricing-table-sign-up">
						<a href="#" class="btn btn-light btn-radius btn-brd grd1 effect-1">BUY</a>
					</div>
				</div>
			</div>
			
			
			<div class="clear"> </div>
		</div>
    </div><!-- end section -->
	</div>
	
	

  

<style>
  html {
    font-size: 14px;
  }
  
  .container {
    font-size: 14px;
    color: #666666;
    font-family: "Open Sans";
  }
</style>

<body>
  <div class="container">
    <div class="row pt-5 m-auto">
      <div class="col-md-6 col-lg-4 pb-3">

        <!-- Copy the content below until next comment -->
        <div class="card card-custom bg-white border-white border-0">
          
          <div class="card-custom-avatar">
            <img class="img-fluid" src="http://res.cloudinary.com/d3/image/upload/c_pad,g_center,h_200,q_auto:eco,w_200/bootstrap-logo_u3c8dx.jpg" alt="Avatar" />
          </div>
          <div class="card-body" style="overflow-y: auto">
            <h4 class="card-title">Card title</h4>
            <p class="card-text">Card has minimum height set but will expand if more space is needed for card body content. You can use Bootstrap <a href="https://getbootstrap.com/docs/4.0/components/card/#card-decks" target="_blank">card-decks</a> to align multiple cards nicely in a row.</p>
          </div>
          <div class="card-footer" style="background: inherit; border-color: inherit;">
            <a href="#" class="btn btn-primary">Option</a>
            <a href="#" class="btn btn-outline-primary">Other option</a>
          </div>
        </div>
        <!-- Copy until here -->

      </div>
      <div class="col-md-6 col-lg-4 pb-3">

        <!-- Add a style="height: XYZpx" to div.card to limit the card height and display scrollbar instead -->
        <div class="card card-custom bg-white border-white border-0" style="height: 450px">
         
          <div class="card-custom-avatar">
            <img class="img-fluid" src="http://res.cloudinary.com/d3/image/upload/c_pad,g_center,h_200,q_auto:eco,w_200/bootstrap-logo_u3c8dx.jpg" alt="Avatar" />
          </div>
          <div class="card-body" style="overflow-y: auto">
            <h4 class="card-title">Card title</h4>
            <p class="card-text">You can also set maximum height on and the card will not expand, instead a scrollbar in the card body will appear.</p>
            <p class="card-text">Some example text to show the scrollbar.</p>
            <p class="card-text">Lorem ipsum dolor sit amet, te vix omittam fastidii, enim paulo omnes ea has, illud luptatum no qui. Sed ea qualisque urbanitas, purto elit nec te. Possim inermis antiopam ut eum. Eos te zril labore laboramus, quem erant nam in. Ut sed molestie
              antiopam. At altera facilisis mel.</p>
          </div>
          <div class="card-footer" style="background: inherit; border-color: inherit;">
            <a href="#" class="btn btn-primary">Option</a>
            <a href="#" class="btn btn-outline-primary">Other option</a>
          </div>
        </div>

      </div>
      <div class="col-md-6 col-lg-4 pb-3">

        <!-- Add a style="height: XYZpx" to div.card to limit the card height and display scrollbar instead -->
        <div class="card card-custom bg-white border-white border-0" style="height: 450px">
         
          <div class="card-custom-avatar">
            <img class="img-fluid" src="http://res.cloudinary.com/d3/image/upload/c_pad,g_center,h_200,q_auto:eco,w_200/bootstrap-logo_u3c8dx.jpg" alt="Avatar" />
          </div>
          <div class="card-body" style="overflow-y: auto; margin:10px;">
            <h4 class="card-title">Card title</h4>
            <p class="card-text">You can also set maximum height on and the card will not expand, instead a scrollbar in the card body will appear.</p>
            <p class="card-text">Some example text to show the scrollbar.</p>
            <p class="card-text">Lorem ipsum dolor sit amet, te vix omittam fastidii, enim paulo omnes ea has, illud luptatum no qui. Sed ea qualisque urbanitas, purto elit nec te. Possim inermis antiopam ut eum. Eos te zril labore laboramus, quem erant nam in. Ut sed molestie
              antiopam. At altera facilisis mel.</p>
          </div>
          <div class="card-footer" style="background: inherit; border-color: inherit;">
            <a href="#" class="btn btn-primary">Option</a>
            <a href="#" class="btn btn-outline-primary">Other option</a>
          </div>
        </div>

      </div>
      <div class="col-md-6 col-lg-4 pb-3">

        <div class="card card-custom bg-white border-white border-0">
          <div class="card-body">
         
            <p>You can use this card together with standard Bootstrap 4 cards and use card features on it.</p>
            <p class="h5 text-center pt-3">See the card on GitHub:</p>
            <p class="h1 text-center"><a href="https://github.com/peterdanis/custom-bootstrap-cards" target="_blank"><i class="fa fa-github"></i></a></p>

          </div>
        </div>

      </div>
    </div>
  </div>


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

    <div class="section lb">
        <div class="container">
            <div class="section-title text-center">
                <h3>Ready to get started?</h3>
				<div class="dmoain-pricing">
					<div class="table-responsive-sm">
						<table>
							<thead>
								<tr class="domain-head">
									<th scope="col">
										Domain Name
									</th>
									<th scope="col">
										Registration Pricing
									</th>
									<th scope="col">
										Renewal Pricing
									</th>
									<th scope="col">
										Transfer Pricing
									</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td data-label="DOMAIN NAME">.com</td>
									<td data-label="registration pricing">15.00 / yr</td>
									<td data-label="renewal pricing">$30 / yr</td>
									<td data-label="transfer-price">$45.00</td>
								</tr>
								<tr>
									<td data-label="DOMAIN NAME">.net</td>
									<td data-label="registration pricing">15.00 / yr</td>
									<td data-label="renewal pricing">$20 / yr</td>
									<td data-label="transfer-price">$45.00</td>
								</tr>
								<tr>
									<td data-label="DOMAIN NAME">.org</td>
									<td data-label="registration pricing">15.00 / yr</td>
									<td data-label="renewal pricing">$19 / yr</td>
									<td data-label="transfer-price">$45.00</td>
								</tr>
								<tr>
									<td data-label="DOMAIN NAME">.in</td>
									<td data-label="registration pricing">15.00 / yr</td>
									<td data-label="renewal pricing">$18 / yr</td>
									<td data-label="transfer-price">$45.00</td>
								</tr>
								<tr>
									<td data-label="DOMAIN NAME">.biz</td>
									<td data-label="registration pricing">15.00 / yr</td>
									<td data-label="renewal pricing">$17 / yr</td>
									<td data-label="transfer-price">$45.00</td>
								</tr>
								<tr>
									<td data-label="Acount">.info</td>
									<td data-label="registration pricing">15.00 / yr</td>
									<td data-label="renewal pricing">$16 / yr</td>
									<td data-label="transfer-price">$45.00</td>
								</tr>
								<tr>
									<td data-label="DOMAIN NAME">.co.uk</td>
									<td data-label="registration pricing">15.00 / yr</td>
									<td data-label="renewal pricing">$15 / yr</td>
									<td data-label="transfer-price">$45.00</td>
								</tr>
								<tr>
									<td data-label="DOMAIN NAME">.name</td>
									<td data-label="registration pricing">15.00 / yr</td>
									<td data-label="renewal pricing">$14 / yr</td>
									<td data-label="transfer-price">$45.00</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
            </div><!-- end title -->
        </div><!-- end container -->
    </div><!-- end section -->

    
<!-- footer -->
  <jsp:include page="/WEB-INF/include/footer.jsp"></jsp:include>

</body>
</html>