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
	<link href="<%=cp%>/resouces/css/cubeportfolio.min.css" rel="stylesheet" />
	<link href="<%=cp%>/resouces/css/style.css" rel="stylesheet" />


	<!-- Theme skin -->
	<link id="t-colors" href="resouces/skins/default.css" rel="stylesheet" />

	<!-- boxed bg -->
	<link id="bodybg" href="resouces/bodybg/bg1.css" rel="stylesheet" type="text/css" />


</head>
<body>

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
 	<!-- menu시작  -->
			<div class="navbar navbar-default navbar-static-top">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
						<a class="navbar-brand" href="main.jsp"><img src="resouces/img/logo.png" alt="" width="199" height="52" /></a>
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
									<li><a href="<%=cp%>/WEB-INF/layout/login.jsp">로그인</a></li>
									<li><a href="blog-leftsidebar.html">회원가입</a></li>
								</ul>
							</li>
					</ul>
					</div>
				</div>
			</div>
		</header>
		<!-- end menu -->
		
		<!-- login Form start -->
			<section id="inner-headline">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<ul class="breadcrumb">
							<li>
								<a href="#"> <i class="fa fa-home"></i> </a>
							
							<i class="icon-angle-right"></i>
						</li>
							<li> 
								<a href="#">Features</a> <i class="icon-angle-right"></i>
							</li>
							<li class="active">Register</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		<section id="content">
			<div class="container">

				<div class="row">
					<div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
						<form role="form" class="register-form">
							<h2>로그인 <small>아이디와 패스워드를 입력해주세요.</small></h2>
					 	<hr class="colorgraph"> 

							<div class="form-group">
								<input type="email" name="email" id="email" class="form-control input-lg" placeholder="Email Address" tabindex="4">
							</div>
							<div class="form-group">
								<input type="password" class="form-control input-lg" id="exampleInputPassword1" placeholder="Password">
							</div>

							<div class="row">
								<div class="col-xs-4 col-sm-3 col-md-3">
									<span class="button-checkbox">
					<!-- 	<button type="button" class="btn" data-color="info" tabindex="7">Remember me</button> -->
                        <input type="checkbox" name="t_and_c" id="t_and_c" class="hidden" value="1">
					</span>
								</div>
							</div>

						 	<hr class="colorgraph"> 
							<div class="row">
								<div class="col-xs-12 col-md-6"><input type="submit" value="login" class="btn btn-primary btn-block btn-lg" tabindex="7"></div>
								<div class="col-xs-12 col-md-6" style="text-align: center">회원이 아니신가요? <br><a href="register.html">회원가입</a></div>
							</div>
						</form>
					</div>
				</div>

			</div>
		</section>
		
	<!-- footer start -->
		<footer>
			<div class="container">
				<div class="row">
					<div class="col-sm-3 col-lg-3">
						<div class="widget">
							<h4>Get in touch with us</h4>
							<address>
					<strong>Sailor company Inc</strong><br>
					 Sailor suite room V124, DB 91<br>
					 Someplace 71745 Earth </address>
							<p>
								<i class="icon-phone"></i> (123) 456-7890 - (123) 555-7891 <br>
								<i class="icon-envelope-alt"></i> email@domainname.com
							</p>
						</div>
					</div>
					<div class="col-sm-3 col-lg-3">
						<div class="widget">
							<h4>Information</h4>
							<ul class="link-list">
								<li><a href="#">Press release</a></li>
								<li><a href="#">Terms and conditions</a></li>
								<li><a href="#">Privacy policy</a></li>
								<li><a href="#">Career center</a></li>
								<li><a href="#">Contact us</a></li>
							</ul>
						</div>

					</div>
					<div class="col-sm-3 col-lg-3">
						<div class="widget">
							<h4>Pages</h4>
							<ul class="link-list">
								<li><a href="#">Press release</a></li>
								<li><a href="#">Terms and conditions</a></li>
								<li><a href="#">Privacy policy</a></li>
								<li><a href="#">Career center</a></li>
								<li><a href="#">Contact us</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-3 col-lg-3">
						<div class="widget">
							<h4>Newsletter</h4>
							<p>Fill your email and sign up for monthly newsletter to keep updated</p>
							<div class="form-group multiple-form-group input-group">
								<input type="email" name="email" class="form-control">
								<span class="input-group-btn">
                            <button type="button" class="btn btn-theme btn-add">Subscribe</button>
                        </span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="sub-footer">
				<div class="container">
					<div class="row">
						<div class="col-lg-6">
							<div class="copyright">
								<p>&copy; Sailor Theme - All Right Reserved</p>
								<div class="credits">
									<!--
                    All the links in the footer should remain intact. 
                    You can delete the links only if you purchased the pro version.
                    Licensing information: https://bootstrapmade.com/license/
                    Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Sailor
                  -->
									<a href="https://bootstrapmade.com/bootstrap-business-templates/">Bootstrap Business Templates</a> by <a href="https://bootstrapmade.com/">BootstrapMade</a>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<ul class="social-network">
								<li><a href="#" data-placement="top" title="Facebook"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#" data-placement="top" title="Twitter"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#" data-placement="top" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
								<li><a href="#" data-placement="top" title="Pinterest"><i class="fa fa-pinterest"></i></a></li>
								<li><a href="#" data-placement="top" title="Google plus"><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</footer>
	</div>
	<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>

	<!-- Placed at the end of the document so the pages load faster -->
	<script src="resouces/js/jquery.min.js"></script>
	<script src="resouces/js/modernizr.custom.js"></script>
	<script src="resouces/js/jquery.easing.1.3.js"></script>
	<script src="resouces/js/bootstrap.min.js"></script>
	<script src="resouces/plugins/flexslider/jquery.flexslider-min.js"></script>
	<script src="resouces/plugins/flexslider/flexslider.config.js"></script>
	<script src="resouces/js/jquery.appear.js"></script>
	<script src="resouces/js/stellar.js"></script>
	<script src="resouces/js/classie.js"></script>
	<script src="resouces/js/uisearch.js"></script>
	<script src="resouces/js/jquery.cubeportfolio.min.js"></script>
	<script src="resouces/js/google-code-prettify/prettify.js"></script>
	<script src="resouces/js/animate.js"></script>
	<script src="resouces/js/custom.js"></script>


</body>
</html>
