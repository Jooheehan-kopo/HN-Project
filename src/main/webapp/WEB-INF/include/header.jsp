<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

 <header class="header header_style_01">
        <nav class="megamenu navbar navbar-default">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="${ pageContext.request.contextPath }/"><img src="${ pageContext.request.contextPath }/resources/images/logos/logo-hosting.png" ></a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a class="active" href="${ pageContext.request.contextPath }/index">Home</a></li>
                       
                        <li class="dropdown">
						   <a href="${pageContext.request.contextPath }/accountMain" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">은행계좌 <span class="navbar-collapse collapse"></span></a>
						    <ul class="dropdown-menu" role="menu">
						       <li><a href="${pageContext.request.contextPath }/account/accountMain">개설</a></li>
						       <li><a href="#">조회</a></li>
						       <li><a href="#">이체</a></li>
						    </ul>
						</li>
                        <li><a href="${pageContext.request.contextPath }/stock/stockMain">주식</a></li>
                        <li><a href="${pageContext.request.contextPath }/">Hosting</a></li>
                        <li><a href="pricing.html">Pricing</a></li>
                        <li><a href="testimonials.html">Testimonials</a></li>
                        
                    </ul>
                    <c:if test="${empty userVO }">
	                    <ul class="nav navbar-nav navbar-right">
	                        <li><a class="btn-light btn-radius btn-brd log" href="${pageContext.request.contextPath }/login" ><i class="flaticon-padlock"></i>로그인</a></li>
	                    </ul>
                    </c:if>
                     <c:if test ="${not empty userVO }">
	                     <ul class="nav navbar-nav navbar-right">
	  						<li><c:out value="${userVO.id}"/>님</li>
	                        <li><a class="btn-light btn-radius btn-brd log" href="${pageContext.request.contextPath }/logout" ><i class="flaticon-padlock"></i>로그아웃</a></li>
	  					 </ul>
  					 </c:if>
                </div>
            </div>
        </nav>
    </header>