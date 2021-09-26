<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<!DOCTYPE html>
<html lang="en">

<!-- HEAD -->
<jsp:include page="/WEB-INF/include/head.jsp"/>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/rank/css/style.css">


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
			<h1>나의 순위는??<span class="m_1">주식투자 랭킹비교</span></h1>
		</div>
	</div>
	
    
    
   
	
</head>
<body>
	<section class="main-content">
		<div class="container">
			<h1>Top 3</h1>
			<br>
			<br>

			<div class="row">
				<div class="col-sm-4">
					<div class="leaderboard-card">
						<div class="leaderboard-card__top">
							<h3 class="text-center">$1,051</h3>
						</div>
						<div class="leaderboard-card__body">
							<div class="text-center">
								<img src="img/user2.jpg" class="circle-img mb-2" alt="User Img">
								<h5 class="mb-0">Sandeep Sandy</h5>
								<p class="text-muted mb-0">@sandeep</p>
								<hr>
								<div class="d-flex justify-content-between align-items-center">
									<span><i class="fa fa-map-marker"></i> Bangalore</span>
									<button class="btn btn-outline-success btn-sm">Congratulate</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="leaderboard-card leaderboard-card--first">
						<div class="leaderboard-card__top">
							<h3 class="text-center">$1,254</h3>
						</div>
						<div class="leaderboard-card__body">
							<div class="text-center">
								<img src="img/user1.jpg" class="circle-img mb-2" alt="User Img">
								<h5 class="mb-0">Kiran Acharya</h5>
								<p class="text-muted mb-0">@kiranacharyaa</p>
								<hr>
								<div class="d-flex justify-content-between align-items-center">
									<span><i class="fa fa-map-marker"></i> Bangalore</span>
									<button class="btn btn-outline-success btn-sm">Congratulate</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="leaderboard-card">
						<div class="leaderboard-card__top">
							<h3 class="text-center">$1,012</h3>
						</div>
						<div class="leaderboard-card__body">
							<div class="text-center">
								<img src="img/user3.jpg" class="circle-img mb-2" alt="User Img">
								<h5 class="mb-0">John doe</h5>
								<p class="text-muted mb-0">@johndoe</p>
								<hr>
								<div class="d-flex justify-content-between align-items-center">
									<span><i class="fa fa-map-marker"></i> Bangalore</span>
									<button class="btn btn-outline-success btn-sm">Congratulate</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>


			<h4>All Users</h4>

			<table class="table">
				<thead>
					<tr>
						<th>순위</th>
						<th>아이디</th>
						<th>이름</th>
						<th>반</th>
						<th>잔액</th>
					</tr>
				</thead>
				
				<tbody>
				  <c:forEach items="${rank}" var="list" varStatus="loop">
					<tr>
						<td>
							<div class="d-flex align-items-center">
								<img src="img/user1.jpg" class="circle-img circle-img--small mr-2" alt="User Img">
								<div class="user-info__basic">
									<h5 class="mb-0"><c:out value="${list.rank}"/></h5>
									<p class="text-muted mb-0">@kiranacharyaa</p>
								</div>
							</div>
						</td>
						<td>
							<div class="d-flex align-items-baseline">
								<h4 class="mr-1"><c:out value="${list.id}"/></h4><small class="text-success"><i class="fa fa-arrow-up"></i>5%</small>
							</div>
						</td>
						<td><c:out value="${list.name}"/></td>
						<td><c:out value="${list.class}"/></td>
						<td>
							<button class="btn btn-success btn-sm"><c:out value="${list.stock_bal}"/></button>
						</td>
					</tr>
				</c:forEach>
				
					
				</tbody>
			</table>
		</div>
	</section>
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

    
    
    
    
    
    
    
    
    
    
    
<!-- footer -->
  <jsp:include page="/WEB-INF/include/footer.jsp"></jsp:include>

</body>
</html>