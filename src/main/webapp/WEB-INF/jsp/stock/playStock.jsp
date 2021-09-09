<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Gradient Able bootstrap admin template by codedthemes </title>
    <!-- HTML5 Shim and Respond.js IE9 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
      <!-- Meta -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <meta name="description" content="Gradient Able Bootstrap admin template made using Bootstrap 4. The starter version of Gradient Able is completely free for personal project." />
      <meta name="keywords" content="free dashboard template, free admin, free bootstrap template, bootstrap admin template, admin theme, admin dashboard, dashboard template, admin template, responsive" />
      <meta name="author" content="codedthemes">
      <!-- Favicon icon -->
      <link rel="icon" href="${pageContext.request.contextPath }/assets/images/favicon.ico" type="image/x-icon">
      <!-- Google font-->
      <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600" rel="stylesheet">
      <!-- Required Fremwork -->
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/css/bootstrap/css/bootstrap.min.css">
      <!-- themify-icons line icon -->
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/icon/themify-icons/themify-icons.css">
	  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/icon/font-awesome/css/font-awesome.min.css">
      <!-- ico font -->
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/icon/icofont/css/icofont.css">
      <!-- Style.css -->
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/css/style.css">
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/css/jquery.mCustomScrollbar.css">
  </head>
  
  
  
 <!-- 매수량 모달 -->
	<script>
		function plus() {
			var td = document.getElementById("count");
			var n = Number(td.innerHTML);
			td.innerHTML = n + 1;
			
			$( "#model-price" ).attr( "title" );
			
			
			var price = parseInt($("#modal-stockprice").attr('title').split(',').join(''));
			var total = price* (n+1);
			
			console.log(total);
			
			$(document).ready(function() {
		         $("#total").val(total)

		});	
			
		}
		function minus() {
			var td = document.getElementById("count");
			var n = Number(td.innerHTML);
			td.innerHTML = n -1;
			
			var now = $("#total").val();
			var minus = (now/n)*(n-1) 
			console.log(minus);
			
			
			$(document).ready(function() {
		         $("#total").val(minus)

		});	
				
		}
		
		$(document).on("click",".close",function(){
			$()
		})
		function modalClose(){
			
		}
		
	</script>
  

  <body>
  <body>
	  <div class="fixed-button">
		<a href="#">
			<i class="fa fa-" aria-hidden="true"></i> 돌아가기
		</a>
	  </div>
       <!-- Pre-loader start -->
    <div class="theme-loader">
        <div class="loader-track">
            <div class="loader-bar"></div>
        </div>
    </div>
    <!-- Pre-loader end -->
    <div id="pcoded" class="pcoded">
        <div class="pcoded-overlay-box"></div>
        <div class="pcoded-container navbar-wrapper">

            <nav class="navbar header-navbar pcoded-header">
               <div class="navbar-wrapper">
                   <div class="navbar-logo">
                       <a class="mobile-menu" id="mobile-collapse" href="#!">
                           <i class="ti-menu"></i>
                       </a>
                       <div class="mobile-search">
                           <div class="header-search">
                               <div class="main-search morphsearch-search">
                                   <div class="input-group">
                                       <span class="input-group-addon search-close"><i class="ti-close"></i></span>
                                       <input type="text" class="form-control" placeholder="Enter Keyword">
                                       <span class="input-group-addon search-btn"><i class="ti-search"></i></span>
                                   </div>
                               </div>
                           </div>
                       </div>
                       <a href="index.html">
                           <img class="img-fluid" src="assets/images/logo.png" alt="Theme-Logo" />
                       </a>
                       <a class="mobile-options">
                           <i class="ti-more"></i>
                       </a>
                   </div>

                   <div class="navbar-container container-fluid">
                       <ul class="nav-left">
                           <li>
                               <div class="sidebar_toggle"><a href="javascript:void(0)"><i class="ti-menu"></i></a></div>
                           </li>
                           <li class="header-search">
                               <div class="main-search morphsearch-search">
                                   <div class="input-group">
                                       <span class="input-group-addon search-close"><i class="ti-close"></i></span>
                                       <input type="text" class="form-control">
                                       <span class="input-group-addon search-btn"><i class="ti-search"></i></span>
                                   </div>
                               </div>
                           </li>
                           <li>
                               <a href="#!" onclick="javascript:toggleFullScreen()">
                                   <i class="ti-fullscreen"></i>
                               </a>
                           </li>
                       </ul>
                       <ul class="nav-right">
                           <li class="header-notification">
                               <a href="#!">
                                   <i class="ti-bell"></i>
                                   <span class="badge bg-c-pink"></span>
                               </a>
                               <ul class="show-notification">
                                   <li>
                                       <h6>Notifications</h6>
                                       <label class="label label-danger">New</label>
                                   </li>
                                   <li>
                                       <div class="media">
                                           <img class="d-flex align-self-center img-radius" src="assets/images/avatar-2.jpg" alt="Generic placeholder image">
                                           <div class="media-body">
                                               <h5 class="notification-user">John Doe</h5>
                                               <p class="notification-msg">Lorem ipsum dolor sit amet, consectetuer elit.</p>
                                               <span class="notification-time">30 minutes ago</span>
                                           </div>
                                       </div>
                                   </li>
                                   <li>
                                       <div class="media">
                                           <img class="d-flex align-self-center img-radius" src="assets/images/avatar-4.jpg" alt="Generic placeholder image">
                                           <div class="media-body">
                                               <h5 class="notification-user">Joseph William</h5>
                                               <p class="notification-msg">Lorem ipsum dolor sit amet, consectetuer elit.</p>
                                               <span class="notification-time">30 minutes ago</span>
                                           </div>
                                       </div>
                                   </li>
                                   <li>
                                       <div class="media">
                                           <img class="d-flex align-self-center img-radius" src="assets/images/avatar-3.jpg" alt="Generic placeholder image">
                                           <div class="media-body">
                                               <h5 class="notification-user">Sara Soudein</h5>
                                               <p class="notification-msg">Lorem ipsum dolor sit amet, consectetuer elit.</p>
                                               <span class="notification-time">30 minutes ago</span>
                                           </div>
                                       </div>
                                   </li>
                               </ul>
                           </li>
                           
                           <li class="user-profile header-notification">
                               <a href="#!">
                                   <img src="assets/images/avatar-4.jpg" class="img-radius" alt="User-Profile-Image">
                                   <c:out value="${userVO.name}"/>님
                                   <i class="ti-angle-down"></i>
                               </a>
                               <ul class="show-notification profile-notification">
                                   <li>
                                       <a href="#!">
                                           <i class="ti-settings"></i> Settings
                                       </a>
                                   </li>
                                   <li>
                                       <a href="user-profile.html">
                                           <i class="ti-user"></i> Profile
                                       </a>
                                   </li>
                                   
                                   <li>
                                       <a href="auth-lock-screen.html">
                                           <i class="ti-lock"></i> Lock Screen
                                       </a>
                                   </li>
                                   <!-- <li>
                                       <a href="auth-normal-sign-in.html">
                                       <i class="ti-layout-sidebar-left"></i> Logout
                                   </a>
                                   </li> -->
                               </ul>
                           </li>
                       </ul>
                   </div>
               </div>
           </nav>
           
            <div class="pcoded-main-container">
                <div class="pcoded-wrapper">
                    <nav class="pcoded-navbar">
                        <div class="sidebar_toggle"><a href="#"><i class="icon-close icons"></i></a></div>
                        <div class="pcoded-inner-navbar main-menu">
                            
                            <div class="pcoded-navigatio-lavel" data-i18n="nav.category.navigation">Layout</div>
                            <ul class="pcoded-item pcoded-left-item">
                                <li class="active">
                                    <a href="index.html">
                                        <span class="pcoded-micon"><i class="ti-home"></i><b>D</b></span>
                                        <span class="pcoded-mtext" data-i18n="nav.dash.main">Dashboard</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                </li>
                                <li class="pcoded-hasmenu">
                                    <a href="javascript:void(0)">
                                        <span class="pcoded-micon"><i class="ti-layout-grid2-alt"></i></span>
                                        <span class="pcoded-mtext"  data-i18n="nav.basic-components.main">Components</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                   
                                </li>
                            </ul>
                            <div class="pcoded-navigatio-lavel" data-i18n="nav.category.forms">Forms &amp; Tables</div>
                            <ul class="pcoded-item pcoded-left-item">
                                <li>
                                </li>
                                
                                <li>
                                </li>

                            </ul>

                            <div class="pcoded-navigatio-lavel" data-i18n="nav.category.forms">Chart &amp; Maps</div>
                            <ul class="pcoded-item pcoded-left-item">
                                <li>
                                    <a href="chart.html">
                                        <span class="pcoded-micon"><i class="ti-layers"></i><b>FC</b></span>
                                        <span class="pcoded-mtext" data-i18n="nav.form-components.main">Chart</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="map-google.html">
                                        <span class="pcoded-micon"><i class="ti-layers"></i><b>FC</b></span>
                                        <span class="pcoded-mtext" data-i18n="nav.form-components.main">Maps</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                </li>
                                <li class="pcoded-hasmenu">
                                    <a href="javascript:void(0)">
                                        <span class="pcoded-micon"><i class="ti-layout-grid2-alt"></i></span>
                                        <span class="pcoded-mtext"  data-i18n="nav.basic-components.main">Pages</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class=" ">
                                            <a href="auth-normal-sign-in.html">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext" data-i18n="nav.basic-components.alert">Login</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="auth-sign-up.html">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext" data-i18n="nav.basic-components.breadcrumbs">Register</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="sample-page.html">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext" data-i18n="nav.basic-components.breadcrumbs">Sample Page</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>

                            </ul>

                            <div class="pcoded-navigatio-lavel" data-i18n="nav.category.other">Other</div>
                            <ul class="pcoded-item pcoded-left-item">
                                <li class="pcoded-hasmenu ">
                                    <a href="javascript:void(0)">
                                        <span class="pcoded-micon"><i class="ti-direction-alt"></i><b>M</b></span>
                                        <span class="pcoded-mtext" data-i18n="nav.menu-levels.main">Menu Levels</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class="">
                                            <a href="javascript:void(0)">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext" data-i18n="nav.menu-levels.menu-level-21">Menu Level 2.1</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>
                                        <li class="pcoded-hasmenu ">
                                            <a href="javascript:void(0)">
                                                <span class="pcoded-micon"><i class="ti-direction-alt"></i></span>
                                                <span class="pcoded-mtext" data-i18n="nav.menu-levels.menu-level-22.main">Menu Level 2.2</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                            <ul class="pcoded-submenu">
                                                <li class="">
                                                    <a href="javascript:void(0)">
                                                        <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                        <span class="pcoded-mtext" data-i18n="nav.menu-levels.menu-level-22.menu-level-31">Menu Level 3.1</span>
                                                        <span class="pcoded-mcaret"></span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="">
                                            <a href="javascript:void(0)">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext" data-i18n="nav.menu-levels.menu-level-23">Menu Level 2.3</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>

                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </nav>
                    <div class="pcoded-content">
                        <div class="pcoded-inner-content">
                            <div class="main-body">
                                <div class="page-wrapper">

                                    <div class="page-body">
                                      <div class="row">
                                      
                                          <!-- order-card start -->
                                            <div class="col-md-6 col-xl-3">
                                                <div class="card bg-c-blue order-card">
                                                    <div class="card-block">
                                                        <h6 class="m-b-20">Orders Received</h6>
                                                        <h2 class="text-right"><i class="ti-shopping-cart f-left"></i><span>486</span></h2>
                                                        <p class="m-b-0">Completed Orders<span class="f-right">351</span></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-xl-3">
                                                <div class="card bg-c-green order-card">
                                                    <div class="card-block">
                                                        <h6 class="m-b-20">Total Sales</h6>
                                                        <h2 class="text-right"><i class="ti-tag f-left"></i><span>1641</span></h2>
                                                        <p class="m-b-0">This Month<span class="f-right">213</span></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-xl-3">
                                                <div class="card bg-c-yellow order-card">
                                                    <div class="card-block">
                                                        <h6 class="m-b-20">Revenue</h6>
                                                        <h2 class="text-right"><i class="ti-reload f-left"></i><span>$42,562</span></h2>
                                                        <p class="m-b-0">This Month<span class="f-right">$5,032</span></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-xl-3">
                                                <div class="card bg-c-pink order-card">
                                                    <div class="card-block">
                                                        <h6 class="m-b-20">Total Profit</h6>
                                                        <h2 class="text-right"><i class="ti-wallet f-left"></i><span>$9,562</span></h2>
                                                        <p class="m-b-0">This Month<span class="f-right">$542</span></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- order-card end -->
                                            
                                            
                                  <!-- Basic table card start -->
                                  <div class="col-lg-7 col-md-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>전체종목</h5>
                                            <span>use class <code>table</code> inside table element</span>
                                            <div class="card-header-right">
												<ul class="list-unstyled card-option">
													<li><i class="fa fa-chevron-left"></i></li>
													<li><i class="fa fa-window-maximize full-card"></i></li>
													<li><i class="fa fa-minus minimize-card"></i></li>
													<li><i class="fa fa-refresh reload-card"></i></li>
													<li><i class="fa fa-times close-card"></i></li>
												</ul>
											</div>

                                        </div>
                                        <div class="card-block table-border-style" style="width:100%; height:100%;">
                                            <div class="table-responsive">
                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            
                                                            <th>종목코드</th>
                                                            <th>종목명</th>
                                                            <th>현재가</th>
                                                            <th>대비</th>
                                                            <th>시가총액</th>
                                                            <th>거래하기</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
													  <c:forEach items="${list }" var="stockVO" varStatus="loop">
													  	
													  
													    <tr>
															
													      <th scope="row">
													      <c:out value="${stockVO.ticker}"/></th>
													      <td><c:out value="${stockVO.stock_name}"/></td>
													      <td><c:out value="${stockVO.end_p}"/></td>
													      <td><c:out value="${stockVO.compare}"/></td>
													      <td><c:out value="${stockVO.stocks_totalprice}"/></td>
													      <td><button data-toggle="modal" data-target="#buy"  onclick="test('${stockVO.stock_name}', '${stockVO.end_p}')">매수</button>
													      <button>매도</button></td>
													      
													      </td>											      
													    </tr>
													   
													   </c:forEach> 
													  </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Basic table card end -->
                                    
                                 
                                    
									   <!-- Modal -->
										<div class="modal fade" id="buy" tabindex="-1" role="dialog"
											aria-labelledby="myModalLabel">
											<div class="modal-dialog" role="document">
												<div class="modal-content">
													<div class="modal-header tit-up">
														<button type="button" class="close" data-dismiss="modal"
															aria-hidden="true" >&times;</button>
														<h4 class="modal-title">거래하기</h4>
													</div>
													<div class="modal-body customer-box row">
														<div class="col-md-12">
									
									
									
														
															<div class="tab-content">
																<div class="tab-pane active" id="buy">
																	<form role="form" class="form-horizontal">
																		<div class="form-group">
																			<div class="col-sm-12">
																			
																				<table class="table table-bordered">
																				<tr>
																					<th><span>매수종목 </span></th>
																					<th id="modal-stockname"><c:out value=""/></th>
																				</tr>
																				<tr>
																					<th>수량: </th>
																					<th><h4 id="count">1</h4><span>개</span><br>
																					<input type="button" value="-" onclick="minus()" />
																					<span><input type="button" value="+" onclick="plus()" /></span>
																					</th>
																				</tr>
																				<tr>
																					<th>현재가</th>
																					<th title="" id="modal-stockprice"></th>
																			
																				</tr>
																				<tr>
																				 <th>총 금액</th>
																			
																				 <th><input type="text" name="total" id="total"> </th>
																				
																				
																				</tr>
																				</table>
																				
																			</div>
																		</div>
																			
																		<div class="row">
																			<div class="col-sm-10">
																			<span>진행하시겠습니까? </span>
																				<button type="submit"
																					class="btn btn-light btn-radius btn-brd grd1" onclick="submit();">
																					매수</button>
									
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
									                                            
                                            
                                            

                                            <!-- statustic and process start -->
                                         
                                       
                                            <!-- statustic and process end -->
											<!-- tabs card start -->
                                            <div class="col-sm-12">
                                                <div class="card tabs-card">
                                                    <div class="card-block p-0">
                                                        <!-- Nav tabs -->
                                                        <ul class="nav nav-tabs md-tabs" role="tablist">
                                                            <li class="nav-item">
                                                                <a class="nav-link active" data-toggle="tab" href="#home3" role="tab"><i class="fa fa-home"></i>Home</a>
                                                                <div class="slide"></div>
                                                            </li>
                                                            <li class="nav-item">
                                                                <a class="nav-link" data-toggle="tab" href="#profile3" role="tab"><i class="fa fa-key"></i>Security</a>
                                                                <div class="slide"></div>
                                                            </li>
                                                            <li class="nav-item">
                                                                <a class="nav-link" data-toggle="tab" href="#messages3" role="tab"><i class="fa fa-play-circle"></i>Entertainment</a>
                                                                <div class="slide"></div>
                                                            </li>
                                                            <li class="nav-item">
                                                                <a class="nav-link" data-toggle="tab" href="#settings3" role="tab"><i class="fa fa-database"></i>Big Data</a>
                                                                <div class="slide"></div>
                                                            </li>
                                                        </ul>
                                                        <!-- Tab panes -->
                                                        <div class="tab-content card-block">
                                                            <div class="tab-pane active" id="home3" role="tabpanel">

                                                                <div class="table-responsive">
                                                                    <table class="table">
                                                                        <tr>
                                                                            <th>Image</th>
                                                                            <th>Product Code</th>
                                                                            <th>Customer</th>
                                                                            <th>Purchased On</th>
                                                                            <th>Status</th>
                                                                            <th>Transaction ID</th>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><img src="assets/images/product/prod2.jpg" alt="prod img" class="img-fluid"></td>
                                                                            <td>PNG002344</td>
                                                                            <td>John Deo</td>
                                                                            <td>05-01-2017</td>
                                                                            <td><span class="label label-danger">Faild</span></td>
                                                                            <td>#7234486</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><img src="assets/images/product/prod3.jpg" alt="prod img" class="img-fluid"></td>
                                                                            <td>PNG002653</td>
                                                                            <td>Eugine Turner</td>
                                                                            <td>04-01-2017</td>
                                                                            <td><span class="label label-success">Delivered</span></td>
                                                                            <td>#7234417</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><img src="assets/images/product/prod4.jpg" alt="prod img" class="img-fluid"></td>
                                                                            <td>PNG002156</td>
                                                                            <td>Jacqueline Howell</td>
                                                                            <td>03-01-2017</td>
                                                                            <td><span class="label label-warning">Pending</span></td>
                                                                            <td>#7234454</td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
                                                                <div class="text-center">
                                                                    <button class="btn btn-outline-primary btn-round btn-sm">Load More</button>
                                                                </div>
                                                            </div>
                                                            <div class="tab-pane" id="profile3" role="tabpanel">

                                                                <div class="table-responsive">
                                                                    <table class="table">
                                                                        <tr>
                                                                            <th>Image</th>
                                                                            <th>Product Code</th>
                                                                            <th>Customer</th>
                                                                            <th>Purchased On</th>
                                                                            <th>Status</th>
                                                                            <th>Transaction ID</th>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><img src="assets/images/product/prod3.jpg" alt="prod img" class="img-fluid"></td>
                                                                            <td>PNG002653</td>
                                                                            <td>Eugine Turner</td>
                                                                            <td>04-01-2017</td>
                                                                            <td><span class="label label-success">Delivered</span></td>
                                                                            <td>#7234417</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><img src="assets/images/product/prod4.jpg" alt="prod img" class="img-fluid"></td>
                                                                            <td>PNG002156</td>
                                                                            <td>Jacqueline Howell</td>
                                                                            <td>03-01-2017</td>
                                                                            <td><span class="label label-warning">Pending</span></td>
                                                                            <td>#7234454</td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
                                                                <div class="text-center">
                                                                    <button class="btn btn-outline-primary btn-round btn-sm">Load More</button>
                                                                </div>
                                                            </div>
                                                            <div class="tab-pane" id="messages3" role="tabpanel">

                                                                <div class="table-responsive">
                                                                    <table class="table">
                                                                        <tr>
                                                                            <th>Image</th>
                                                                            <th>Product Code</th>
                                                                            <th>Customer</th>
                                                                            <th>Purchased On</th>
                                                                            <th>Status</th>
                                                                            <th>Transaction ID</th>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><img src="assets/images/product/prod1.jpg" alt="prod img" class="img-fluid"></td>
                                                                            <td>PNG002413</td>
                                                                            <td>Jane Elliott</td>
                                                                            <td>06-01-2017</td>
                                                                            <td><span class="label label-primary">Shipping</span></td>
                                                                            <td>#7234421</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><img src="assets/images/product/prod4.jpg" alt="prod img" class="img-fluid"></td>
                                                                            <td>PNG002156</td>
                                                                            <td>Jacqueline Howell</td>
                                                                            <td>03-01-2017</td>
                                                                            <td><span class="label label-warning">Pending</span></td>
                                                                            <td>#7234454</td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
                                                                <div class="text-center">
                                                                    <button class="btn btn-outline-primary btn-round btn-sm">Load More</button>
                                                                </div>
                                                            </div>
                                                            <div class="tab-pane" id="settings3" role="tabpanel">

                                                                <div class="table-responsive">
                                                                    <table class="table">
                                                                        <tr>
                                                                            <th>Image</th>
                                                                            <th>Product Code</th>
                                                                            <th>Customer</th>
                                                                            <th>Purchased On</th>
                                                                            <th>Status</th>
                                                                            <th>Transaction ID</th>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><img src="assets/images/product/prod1.jpg" alt="prod img" class="img-fluid"></td>
                                                                            <td>PNG002413</td>
                                                                            <td>Jane Elliott</td>
                                                                            <td>06-01-2017</td>
                                                                            <td><span class="label label-primary">Shipping</span></td>
                                                                            <td>#7234421</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><img src="assets/images/product/prod2.jpg" alt="prod img" class="img-fluid"></td>
                                                                            <td>PNG002344</td>
                                                                            <td>John Deo</td>
                                                                            <td>05-01-2017</td>
                                                                            <td><span class="label label-danger">Faild</span></td>
                                                                            <td>#7234486</td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
                                                                <div class="text-center">
                                                                    <button class="btn btn-outline-primary btn-round btn-sm">Load More</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- tabs card end -->

                                            <!-- social statustic start -->
                                            <div class="col-md-12 col-lg-4">
                                                
                                            </div>
                                            <div class="col-md-6 col-lg-4">
                                                <div class="card">
                                                    <div class="card-block text-center">
                                                        <i class="fa fa-twitter text-c-green d-block f-40"></i>
                                                        <h4 class="m-t-20"><span class="text-c-blgreenue">+40</span> Followers</h4>
                                                        <p class="m-b-20">Your main list is growing</p>
                                                        <button class="btn btn-success btn-sm btn-round">Check them out</button>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-lg-4">
                                                <div class="card">
                                                    <div class="card-block text-center">
                                                        <i class="fa fa-puzzle-piece text-c-pink d-block f-40"></i>
                                                        <h4 class="m-t-20">Business Plan</h4>
                                                        <p class="m-b-20">This is your current active plan</p>
                                                        <button class="btn btn-danger btn-sm btn-round">Upgrade to VIP</button>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- social statustic end -->

                                            <!-- users visite and profile start -->
                                            <div class="col-md-4">
                                                <div class="card user-card">
                                                    <div class="card-header">
                                                        <h5>Profile</h5>
                                                    </div>
                                                    <div class="card-block">
                                                        <div class="usre-image">
                                                            <img src="assets/images/avatar-4.jpg" class="img-radius" alt="User-Profile-Image">
                                                        </div>
                                                        <h6 class="f-w-600 m-t-25 m-b-10">Alessa Robert</h6>
                                                        <p class="text-muted">Active | Male | Born 23.05.1992</p>
                                                        <hr/>
                                                        <p class="text-muted m-t-15">Activity Level: 87%</p>
                                                        <ul class="list-unstyled activity-leval">
                                                            <li class="active"></li>
                                                            <li class="active"></li>
                                                            <li class="active"></li>
                                                            <li></li>
                                                            <li></li>
                                                        </ul>
                                                        <div class="bg-c-blue counter-block m-t-10 p-20">
                                                            <div class="row">
                                                                <div class="col-4">
                                                                    <i class="ti-comments"></i>
                                                                    <p>1256</p>
                                                                </div>
                                                                <div class="col-4">
                                                                    <i class="ti-user"></i>
                                                                    <p>8562</p>
                                                                </div>
                                                                <div class="col-4">
                                                                    <i class="ti-bag"></i>
                                                                    <p>189</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <p class="m-t-15 text-muted">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                                        <hr/>
                                                        <div class="row justify-content-center user-social-link">
                                                            <div class="col-auto"><a href="#!"><i class="fa fa-facebook text-facebook"></i></a></div>
                                                            <div class="col-auto"><a href="#!"><i class="fa fa-twitter text-twitter"></i></a></div>
                                                            <div class="col-auto"><a href="#!"><i class="fa fa-dribbble text-dribbble"></i></a></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="card">
                                                    <div class="card-header">
                                                        <h5>Activity Feed</h5>
                                                        <div class="card-header-right">
                                                            <ul class="list-unstyled card-option">
                                                                <li><i class="fa fa-chevron-left"></i></li>
                                                                <li><i class="fa fa-window-maximize full-card"></i></li>
                                                                <li><i class="fa fa-minus minimize-card"></i></li>
                                                                <li><i class="fa fa-refresh reload-card"></i></li>
                                                                <li><i class="fa fa-times close-card"></i></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="card-block">
                                                        <ul class="feed-blog">
                                                            <li class="active-feed">
                                                                <div class="feed-user-img">
                                                                    <img src="assets/images/avatar-3.jpg" class="img-radius " alt="User-Profile-Image">
                                                                </div>
                                                                <h6><span class="label label-danger">File</span> Eddie uploaded new files: <small class="text-muted">2 hours ago</small></h6>
                                                                <p class="m-b-15 m-t-15">hii <b> @everone</b> Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                                                <div class="row">
                                                                    <div class="col-auto text-center">
                                                                        <img src="assets/images/blog/blog-r-1.jpg" alt="img" class="img-fluid img-100">
                                                                        <h6 class="m-t-15 m-b-0">Old Scooter</h6>
                                                                        <p class="text-muted m-b-0"><small>PNG-100KB</small></p>
                                                                    </div>
                                                                    <div class="col-auto text-center">
                                                                        <img src="assets/images/blog/blog-r-2.jpg" alt="img" class="img-fluid img-100">
                                                                        <h6 class="m-t-15 m-b-0">Wall Art</h6>
                                                                        <p class="text-muted m-b-0"><small>PNG-150KB</small></p>
                                                                    </div>
                                                                    <div class="col-auto text-center">
                                                                        <img src="assets/images/blog/blog-r-3.jpg" alt="img" class="img-fluid img-100">
                                                                        <h6 class="m-t-15 m-b-0">Microphone</h6>
                                                                        <p class="text-muted m-b-0"><small>PNG-150KB</small></p>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li class="diactive-feed">
                                                                <div class="feed-user-img">
                                                                    <img src="assets/images/avatar-4.jpg" class="img-radius " alt="User-Profile-Image">
                                                                </div>
                                                                <h6><span class="label label-success">Task</span>Sarah marked the Pending Review: <span class="text-c-green"> Trash Can Icon Design</span><small class="text-muted">2 hours ago</small></h6>
                                                            </li>
                                                            <li class="diactive-feed">
                                                                <div class="feed-user-img">
                                                                    <img src="assets/images/avatar-2.jpg" class="img-radius " alt="User-Profile-Image">
                                                                </div>
                                                                <h6><span class="label label-primary">comment</span> abc posted a task:  <span class="text-c-green">Design a new Homepage</span>  <small class="text-muted">6 hours ago</small></h6>
                                                                
                                                            </li>
                                                            <li class="active-feed">
                                                                <div class="feed-user-img">
                                                                    <img src="assets/images/avatar-3.jpg" class="img-radius " alt="User-Profile-Image">
                                                                </div>
                                                                <h6><span class="label label-warning">Task</span>Sarah marked : <span class="text-c-green"> do Icon Design</span><small class="text-muted">10 hours ago</small></h6>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- users visite and profile end -->

                                        </div>
                                    </div>

                                    <div id="styleSelector">

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Warning Section Starts -->
        <!-- Older IE warning message -->
    <!--[if lt IE 9]>
<div class="ie-warning">
    <h1>Warning!!</h1>
    <p>You are using an outdated version of Internet Explorer, please upgrade <br/>to any of the following web browsers to access this website.</p>
    <div class="iew-container">
        <ul class="iew-download">
            <li>
                <a href="http://www.google.com/chrome/">
                    <img src="assets/images/browser/chrome.png" alt="Chrome">
                    <div>Chrome</div>
                </a>
            </li>
            <li>
                <a href="https://www.mozilla.org/en-US/firefox/new/">
                    <img src="assets/images/browser/firefox.png" alt="Firefox">
                    <div>Firefox</div>
                </a>
            </li>
            <li>
                <a href="http://www.opera.com">
                    <img src="assets/images/browser/opera.png" alt="Opera">
                    <div>Opera</div>
                </a>
            </li>
            <li>
                <a href="https://www.apple.com/safari/">
                    <img src="assets/images/browser/safari.png" alt="Safari">
                    <div>Safari</div>
                </a>
            </li>
            <li>
                <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
                    <img src="assets/images/browser/ie.png" alt="">
                    <div>IE (9 & above)</div>
                </a>
            </li>
        </ul>
    </div>
    <p>Sorry for the inconvenience!</p>
</div>
<![endif]-->
<!-- Warning Section Ends -->
<!-- Required Jquery -->
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery-ui/jquery-ui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/popper.js/popper.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/bootstrap/js/bootstrap.min.js"></script>
<!-- jquery slimscroll js -->
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery-slimscroll/jquery.slimscroll.js"></script>
<!-- modernizr js -->
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/modernizr/modernizr.js"></script>
<!-- am chart -->
<script src="${pageContext.request.contextPath }/assets/pages/widget/amchart/amcharts.min.js"></script>
<script src="${pageContext.request.contextPath }/assets/pages/widget/amchart/serial.min.js"></script>
<!-- Chart js -->
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/chart.js/Chart.js"></script>
<!-- Todo js -->
<script type="text/javascript " src="${pageContext.request.contextPath }/assets/pages/todo/todo.js "></script>
<!-- Custom js -->
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/pages/dashboard/custom-dashboard.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/script.js"></script>
<script type="text/javascript " src="${pageContext.request.contextPath }/assets/js/SmoothScroll.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/pcoded.min.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/vartical-demo.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script>
 function test(name, end){
	 console.log(name, end)
	 $("#modal-stockname").text(name)
	 $("#modal-stockprice").text(end)
	 $("#modal-stockprice").attr('title',end)
 }
 
 var notified="";
 $(document).ready(function(){
 	$('#buy').on('show.bs.modal',function(event){
 		
 		notified = $(event.realtedTarget).data('notified');
 		console.log(notified)
 	});
 	
 });
 
 $('#buy').on('hidden.bs.modal', function (e) {
	    console.log('modal close');
	  $(this).find('form')[0].reset();
	});
 

</script>
</body>


</html>
