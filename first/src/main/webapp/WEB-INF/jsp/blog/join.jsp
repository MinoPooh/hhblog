<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>join form - Start Bootstrap Theme</title>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>

<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="<c:url value='/js/common.js'/>" charset="utf-8"></script>

<!-- Bootstrap -->
<link href="../resources/css/bootstrap.min.css" rel="stylesheet">
<!-- font awesome -->
<link rel="stylesheet" href="../resources/css/font-awesome.min.css" media="screen" title="no title" charset="utf-8">
<!-- Custom style -->
<link rel="stylesheet" href="../resources/css/style.css" media="screen" title="no title" charset="utf-8">
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
						<h1>Sign Up</h1>
						<span class="subheading">Seo Min Ho, Heo Woo Huck</span>
					</div>
				</div>
			</div>
		</div>
	</header>
	
	<article class="container">
	<div class="col-md-6 col-md-offset-3">
		<form role="form" id="joinForm" name="joinForm">
			<div class="form-group">
				<label for="InputEmail">아이디</label> <input type="email"
					class="form-control" id="InputEmail" name="InputEmail"
					placeholder="아이디 입력">
			</div>
			<div class="form-group">
				<label for="InputPassword1">비밀번호</label> <input type="password"
					class="form-control" id="InputPassword1" name="InputPassword1"
					placeholder="비밀번호">
			</div>
			<div class="form-group">
				<label for="username">이름</label> <input type="text"
					class="form-control" id="username" name="username"
					placeholder="이름을 입력해 주세요">
			</div>
			<div class="form-group">
				<label for="username">휴대폰 인증</label>
				<div class="input-group">
					<input type="tel" class="form-control" id="userphone"
						name="userphone" placeholder="- 없이 입력해 주세요">
				</div>
				<div class="form-group text-center">
					<button type="button" id="join" onclick="location.href=#tihs"
						class="btn btn-info">
						회원가입<i class="fa fa-check spaceLeft"></i>
					</button>
					<button type="submit" class="btn btn-warning">
						가입취소<i class="fa fa-times spaceLeft"></i>
					</button>
				</div>
			</div>
		</form>
	</div>
	</article>
	
	
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
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="../resources/js/bootstrap.min.js"></script>
	
	<!-- Bootstrap core JavaScript -->
	<script src="../resources/vendor_blog/jquery/jquery.min.js"></script>
	<script src="../resources/vendor_blog/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- Custom scripts for this template -->
	<script src="../resources/js_blog/clean-blog.min.js"></script>
	

	<script type="text/javascript">
	$(document).ready(function() {

		$("#join").on("click", function(e) { //회원가입 버튼
			e.preventDefault();
			fn_insertJoin();
		});

	});
	
	function fn_insertJoin() {
		var comSubmit = new ComSubmit("joinForm");
		comSubmit.setUrl("<c:url value='/sample/insertJoin.do'/>");
		comSubmit.submit();
	}
	
	
/* 		$("#joinForm").on('submit', function(e) {
			e.preventDefault();
			insertJoin();
		});
		
		function insertJoin() {
			$.ajax({
				url : "/sample/insertJoin.do",
				type : "POST",
				data : param,
				cache : false,
				async : false,
				dataType : "text",
				success : function(response) {
					alert("회원가입이 완료 되었습니다.");
				}
			});
		} */
		
	</script>
</body>
</html>