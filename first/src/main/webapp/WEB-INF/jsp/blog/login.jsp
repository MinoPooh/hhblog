<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>login form - Start Bootstrap Theme</title>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>

<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="<c:url value='/js/common.js'/>" charset="utf-8"></script>

<!-- Bootstrap -->
<link href="../resources/css/bootstrap.min.css" rel="stylesheet">
<!-- font awesome -->
<link href="../resources/css/font-awesome.min.css" rel="stylesheet">
<!-- Custom Style -->
<link href="../resources/css/style.css" rel="stylesheet">
<!-- Bootstrap core CSS -->
<link href="../resources/vendor_blog/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom fonts for this template -->
<link href="../resources/vendor_blog/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
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
					<li class="nav-item"><a id= "post" class="nav-link" href="openLogin.do">Login</a>
					</li>
						<li class="nav-item"><a class="nav-link" href="openJoin.do">Sign Up</a>
					</li>
					<!--<li class="nav-item"><a id= "post" class="nav-link" href="../sample/openPost.do">Post</a>
					</li>
						<li class="nav-item"><a class="nav-link" href="openContact.do">Contact</a>
					</li> -->
								
				</ul>
			</div>
		</div>
	</nav>

	<!-- Page Header -->
	<header class="masthead"
		style="background-image: url('../resources/img_blog/contact-bg.jpg')">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-md-10 mx-auto">
					<div class="site-heading">
						<h1>Login</h1>
						<span class="subheading">Seo Min Ho, Heo Woo Huck</span>
					</div>
				</div>
			</div>
		</div>
	</header>

	<div class="wrapper" align="align">
		<form class="form-signin" id="loginForm" name="loginForm">
			<h2 class="form-signin-heading">로그인</h2>
			<input type="text" class="form-control" id="InputEmail"
				name="InputEmail" placeholder="아이디를 입력해주세요." required=""
				autofocus="" /> <input type="password" class="form-control"
				id="password" name="password" placeholder="패스워드를 입력해주세요."
				required="" /> <label class="checkbox"> <input
				type="checkbox" value="remember-me" id="rememberMe"
				name="rememberMe"> 아이디 저장
			</label>
			<button class="btn btn-lg btn-primary btn-block" type="submit"
				id="loginCheck" onclick="location.href=#tihs">로그인</button>
		</form>
	</div>

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

	<%@ include file="/WEB-INF/include/include-body.jspf"%>

	<!-- Bootstrap core JavaScript -->
	<script src="../resources/vendor_blog/jquery/jquery.min.js"></script>
	<script src="../resources/vendor_blog/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- Custom scripts for this template -->
	<script src="../resources/js_blog/clean-blog.min.js"></script>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="../resources/js/bootstrap.min.js"></script>

	<script type=text/javascript>
		$(document).ready(function() {
			$("#loginCheck").on("click", function(e) { //로그인 버튼
				e.preventDefault();
				fn_login();
			});

		});

		function fn_login() {
			var comSubmit = new ComSubmit("loginForm");
			comSubmit.setUrl("<c:url value='/sample/loginCheck.do'/>");
			comSubmit.submit();
		}
	</script>
</body>
</html>
