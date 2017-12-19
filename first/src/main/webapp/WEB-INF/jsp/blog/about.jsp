<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Clean Blog - Start Bootstrap Theme</title>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>

<!-- Bootstrap core CSS -->
<link href="../resources/vendor_blog/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom fonts for this template -->
<link
	href="../resources/vendor_blog/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>

<!-- Custom styles for this template -->
<link href="../resources/css_blog/clean-blog.min.css" rel="stylesheet">

</head>

<body>
	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="../sample/openIndex.do">Start
				Bootstrap</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fa fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link"
						href="../sample/openIndex.do">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="openAbout.do">About</a>
					</li>
					<!-- <li class="nav-item"><a id= "post" class="nav-link" href="openLogin.do">Login</a></li>
					<li class="nav-item"><a class="nav-link" href="openJoin.do">Sign Up</a></li> -->
					<!--<li class="nav-item"><a id= "post" class="nav-link" href="../sample/openPost.do">Post</a>
					</li>
						<li class="nav-item"><a class="nav-link" href="openContact.do">Contact</a>
					</li> -->
			
					<c:choose>
						<c:when test="${sessionScope.userId == null}">
							<li class="nav-item"><a id= "post" class="nav-link" href="openLogin.do">Login</a></li>
							<li class="nav-item"><a class="nav-link" href="openJoin.do">Sign Up</a></li>
						</c:when>
						<c:otherwise>
							<li class="nav-item"><a id= "post" class="nav-link" href="">${sessionScope.userName}님 환영합니다.</a></li>
							<li class="nav-item"><a class="nav-link" href="logout.do">Logout</a></li>
							<%--<li><a style="color: white">${sessionScope.userName}님환영합니다.</a></li>
							<li><a href="logout.do" style="color: white">로그아웃</a></li>--%>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
		</div>
	</nav>


	<!-- Page Header -->
	<header class="masthead"
		style="background-image: url('../resources/img_blog/about-bg.jpg')">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-md-10 mx-auto">
					<div class="page-heading">
						<h1>About We</h1>
						<span class="subheading">This is what We do.</span>
					</div>
				</div>
			</div>
		</div>
	</header>

	<!-- Main Content -->
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-md-10 mx-auto">
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Saepe nostrum ullam eveniet pariatur voluptates odit, fuga atque ea
					nobis sit soluta odio, adipisci quas excepturi maxime quae totam
					ducimus consectetur?</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Eius praesentium recusandae illo eaque architecto error,
					repellendus iusto reprehenderit, doloribus, minus sunt. Numquam at
					quae voluptatum in officia voluptas voluptatibus, minus!</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut
					consequuntur magnam, excepturi aliquid ex itaque esse est vero
					natus quae optio aperiam soluta voluptatibus corporis atque iste
					neque sit tempora!</p>
			</div>
		</div>
	</div>

	<hr>

	<!-- Footer -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-md-10 mx-auto">
					<ul class="list-inline text-center">
						<li class="list-inline-item"><a href="#"> <span
								class="fa-stack fa-lg"> <i
									class="fa fa-circle fa-stack-2x"></i> <i
									class="fa fa-twitter fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
						<li class="list-inline-item"><a href="#"> <span
								class="fa-stack fa-lg"> <i
									class="fa fa-circle fa-stack-2x"></i> <i
									class="fa fa-facebook fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
						<li class="list-inline-item"><a href="#"> <span
								class="fa-stack fa-lg"> <i
									class="fa fa-circle fa-stack-2x"></i> <i
									class="fa fa-github fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
					</ul>
					<p class="copyright text-muted">Copyright &copy; Your Website
						2017</p>
				</div>
			</div>
		</div>
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="../resources/vendor_blog/jquery/jquery.min.js"></script>
	<script
		src="../resources/vendor_blog/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Custom scripts for this template -->
	<script src="../resources/js_blog/clean-blog.min.js"></script>

</body>

</html>
