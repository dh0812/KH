<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	String cp=request.getContextPath();
%>

<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<title>Sailor - Bootstrap 3 corporate template</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="description" content="Bootstrap 3 template for corporate business" />
	<!-- css -->
	<link href="<%=cp%>/resouces/css/bootstrap.min.css" rel="stylesheet" />
	<link href="<%=cp%>/resouces/plugins/flexslider/flexslider.css" rel="stylesheet" media="screen" />
	<link href="<%=cp%>/resouces/css/cubeportfolio.min.css" rel="stylesheet" />
	<link href="<%=cp%>/resouces/css/style.css" rel="stylesheet" />

	<!-- Theme skin -->
	<link id="t-colors" href="<%=cp%>/resouces/skins/default.css" rel="stylesheet" />

	<!-- boxed bg -->
	<link id="bodybg" href="<%=cp%>/resouces/bodybg/bg1.css" rel="stylesheet" type="text/css" />

	<!-- =======================================================
    Theme Name: Sailor
    Theme URL: https://bootstrapmade.com/sailor-free-bootstrap-theme/
    Author: BootstrapMade
    Author URL: https://bootstrapmade.com
	======================================================= -->

</head>

<body>

	<div id="wrapper">
		<!-- start header -->
		<header>
			<div class="top">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<ul class="topleft-info">
								<li><i class="fa fa-phone"></i> 010-0000-0000</li>
							</ul>
						</div>
						<div class="col-md-6">

						</div>
					</div>
				</div>
			</div>

			<div class="navbar navbar-default navbar-static-top">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
						<a href="<%=cp%>/">
							<img src="<%=cp%>/resouces/img/logo1.png" />
						</a>
					</div>
					<div class="navbar-collapse collapse ">
						<ul class="nav navbar-nav">
							<li class="dropdown active">
								<a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">HOTTIQUE <i class="fa fa-angle-down"></i></a>
								<ul class="dropdown-menu">
									<li><a href="index.html">인사말</a></li>
									<li><a href="index2.html">오시는길</a></li>
									<li><a href="index3.html">주변관광지</a></li>
								</ul>
							</li>
							
							<li class="dropdown">
								<a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">ROOMS <i class="fa fa-angle-down"></i></a>
								<ul class="dropdown-menu">
									<li><a href="typography.html">객실정보</a></li>
									<li><a href="components.html">기본형</a></li>
									<li><a href="pricing-box.html">기본형</a></li>
									
									<!--  기존 서브메뉴 삭제 
									<li class="dropdown-submenu">
										<a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown">Pages</a>
										<ul class="dropdown-menu">
											<li><a href="fullwidth.html">Full width</a></li>
											<li><a href="right-sidebar.html">Right sidebar</a></li>
											<li><a href="left-sidebar.html">Left sidebar</a></li>
											<li><a href="comingsoon.html">Coming soon</a></li>
											<li><a href="search-result.html">Search result</a></li>
											<li><a href="404.html">404</a></li>
											<li><a href="register.html">Register</a></li>
											<li><a href="login.html">Login</a></li> -->
										</ul>
									</li>
							
							<li><a href="portfolio.html">SERVICE</a></li>
							
							<li class="dropdown"><a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">RESERVATION <i class="fa fa-angle-down"></i></a>
								<ul class="dropdown-menu">
									<li><a href="blog-rightsidebar.html">예약안내</a></li>
									<li><a href="blog-leftsidebar.html">예약문의</a></li>
									<li><a href="post-rightsidebar.html">예약신청</a></li>
								</ul>
							</li>
							
							<li class="dropdown"><a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">COMMUNITY <i class="fa fa-angle-down"></i></a>
								<ul class="dropdown-menu">
									<li><a href="blog-rightsidebar.html">공지사항</a></li>
									<li><a href="blog-leftsidebar.html">이벤트</a></li>
									<li><a href="post-rightsidebar.html">이용후기</a></li>
								</ul>
							</li>
							
							<li class="dropdown"><a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">LOGIN <i class="fa fa-angle-down"></i></a>
								<ul class="dropdown-menu">
									<li><a href="<%=cp%>/member/login.do">로그인</a></li>
									<li><a href="blog-leftsidebar.html">회원가입</a></li>
								</ul>
							</li>
					</ul>
					</div>
				</div>
			</div>
		</header>
		
		</div>
		<!-- end header -->

</body>
</html>
