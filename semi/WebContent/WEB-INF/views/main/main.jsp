<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	String cp = request.getContextPath();
%>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>Sailor - Bootstrap 3 corporate template</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description"
	content="Bootstrap 3 template for corporate business" />
<!-- css -->
<link href="<%=cp%>/resouces/css/bootstrap.min.css" rel="stylesheet" />
<link href="<%=cp%>/resouces/plugins/flexslider/flexslider.css"
	rel="stylesheet" media="screen" />
<link href="<%=cp%>/resouces/css/cubeportfolio.min.css" rel="stylesheet" />
<link href="<%=cp%>/resouces/css/style.css" rel="stylesheet" />

<!-- Theme skin -->
<link id="t-colors" href="<%=cp%>/resouces/skins/default.css"
	rel="stylesheet" />

<!-- boxed bg -->
<link id="bodybg" href="<%=cp%>/resouces/bodybg/bg1.css"
	rel="stylesheet" type="text/css" />

<!-- =======================================================
    Theme Name: Sailor
    Theme URL: https://bootstrapmade.com/sailor-free-bootstrap-theme/
    Author: BootstrapMade
    Author URL: https://bootstrapmade.com
	======================================================= -->

</head>

<body>
<body>


	<div id="wrapper">
		<div>
		<jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>
		</div>
		

		<section id="featured" class="bg">
			<!-- start slider -->


			<!-- start slider -->
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<!-- Slider -->
						<div id="main-slider" class="main-slider flexslider">
							<ul class="slides" >
								<li><img src="<%=cp%>/resouces/img/slides/flexslider/1.jpg"
									alt="" />
									<div class="flex-caption">
										<h3>Modern Design</h3>
										<p>Duis fermentum auctor ligula ac malesuada. Mauris et
											metus odio, in pulvinar urna</p>
										<!--  	<a href="#" class="btn btn-theme">Learn More</a> -->
									</div></li>
								<li><img src="<%=cp%>/resouces/img/slides/flexslider/2.jpg"
									alt="" />
									<div class="flex-caption">
										<h3>Fully Responsive</h3>
										<p>Sodales neque vitae justo sollicitudin aliquet sit amet
											diam curabitur sed fermentum.</p>
										<!--	<a href="#" class="btn btn-theme">Learn More</a> -->
									</div></li>
								<li><img src="<%=cp%>/resouces/img/slides/flexslider/3.jpg"
									alt="" />
									<div class="flex-caption">
										<h3>Clean & Fast</h3>
										<p>
											Lorem ipsum dolor sit amet, consectetur adipiscing elit
											donec mer lacinia.
										</p>
										
									</div></li>
							</ul>
						</div>
						<!-- end slider -->
						
					</div>
				</div>
			</div>


<!-- content 핫한 펜션을 소개합니다. -->
		<section id="content">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="text-center">
							<h2>
								핫한 <span class="highlight">Hottique</span> 펜션을 소개합니다
							</h2>
							
						</div>
					</div>
				</div>
			</div>

			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="row">
							<div class="col-sm-3 col-md-3 col-lg-3">
								<div class="box">
									<div class="aligncenter">
										<div class="icon">
											<i class="fa fa-map-marker fa-5x"></i>
										</div>
										<h4 style="color: black">아름다운 해변</h4>
										 <small><p style="color: blue;">핫티크는 에메랄드빛 제주 바다가 너무 멋진<br> 월정리 해변에 위치해있습니다.</p> </small>
									</div>
								</div>
							</div>
							<div class="col-sm-3 col-md-3 col-lg-3">
								<div class="box">
									<div class="aligncenter">
										<div class="icon">
											<i class="fa fa-cutlery fa-5x"></i>
										</div>
										<h4 style="color: black;">무료 조식 제공</h4>
										<small><p style="color: blue;">핫티크는 에메랄드빛 제주 바다가 너무 멋진<br> 월정리 해변에 위치해있습니다.</p> </small>
									</div>
								</div>
							</div>
							<div class="col-sm-3 col-md-3 col-lg-3">
								<div class="box">
									<div class="aligncenter">
										<div class="icon">
											<i class="fa fa-tint fa-5x"></i>
										</div>
										<h4 style="color: black;">최고의 스파 시설</h4>
										<small>
											<p style="color: blue;">핫티크의 객실은 삼계절 가동되는 <br> 개인 풀을 제공하고 있습니다.</p> 
										</small>
									</div>
								</div>
							</div>
							<div class="col-sm-3 col-md-3 col-lg-3">
								<div class="box">
									<div class="aligncenter">
										<div class="icon">
											<i class="fa fa-thumbs-up fa-5x"></i>
										</div>
										<h4 style="color: black;">최상의 서비스 제공</h4>
										<small>
									
											<p style="color: blue;">이용해주시는 고객님들께 좋은 서비스로 <br>항상 노력하겠습니다.</p>
										
										
										</small>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
	</section>
</section>
		
			

	<div>
		<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>
	</div>
		
	</div>
	<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>

	<!-- Placed at the end of the document so the pages load faster -->
	<script src="<%=cp%>/resouces/js/jquery.min.js"></script>
	<script src="<%=cp%>/resouces/js/modernizr.custom.js"></script>
	<script src="<%=cp%>/resouces/js/jquery.easing.1.3.js"></script>
	<script src="<%=cp%>/resouces/js/bootstrap.min.js"></script>
	<script
		src="<%=cp%>/resouces/plugins/flexslider/jquery.flexslider-min.js"></script>
	<script src="<%=cp%>/resouces/plugins/flexslider/flexslider.config.js"></script>
	<script src="<%=cp%>/resouces/js/jquery.appear.js"></script>
	<script src="<%=cp%>/resouces/js/stellar.js"></script>
	<script src="<%=cp%>/resouces/js/classie.js"></script>
	<script src="<%=cp%>/resouces/js/uisearch.js"></script>
	<script src="<%=cp%>/resouces/js/jquery.cubeportfolio.min.js"></script>
	<script src="<%=cp%>/resouces/js/google-code-prettify/prettify.js"></script>
	<script src="<%=cp%>/resouces/js/animate.js"></script>
	<script src="<%=cp%>/resouces/js/custom.js"></script>

</body>
</body>
</html>
