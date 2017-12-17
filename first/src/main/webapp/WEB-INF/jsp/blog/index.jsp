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

<!-- jQuery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="<c:url value='/js/common.js'/>" charset="utf-8"></script>


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
					<!-- <li class="nav-item"><a id= "post" class="nav-link" href="../sample/openPost.do">Post</a> -->
					</li>
					<!-- <li class="nav-item"><a class="nav-link" href="openContact.do">Contact</a> -->
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Page Header -->
	<header class="masthead"
		style="background-image: url('../resources/img_blog/home-bg.jpg')">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-md-10 mx-auto">
					<div class="site-heading">
						<h1>Clean Blog</h1>
						<span class="subheading">Seo Min Ho, Heo Woo Huck</span>
					</div>
				</div>
			</div>
		</div>
	</header>

	<!-- Main Content -->
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
				<c:choose>
					<c:when test="${fn:length(list) > 0}">
						<c:forEach var="row" items="${list}" varStatus="status">
							<div class="post-preview">
								<a name="title" href="#this">
									<h2 class="post-title">${row.TITLE}</h2>
								</a>
								<p class="post-meta">
									Posted by <a href="#">${row.CREA_ID}</a> on ${row.CREA_DTM}
								</p>
								<input type="hidden" id="IDX" value="${row.IDX}">
							</div>
							<hr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<div class="post-preview">
							<a name="title" href="#this">
								<h2 class="post-title">조회된 결과가 없습니다</h2>
							</a>
							<p class="post-meta"></p>
						</div>
					</c:otherwise>
				</c:choose>

				<!-- Pager -->
				<div class="clearfix" aling="aling" >
					<!-- <a class="btn btn-primary float-right" href="#">Older Posts &rarr;</a> -->
					<c:if test="${not empty paginationInfo}">
						<ui:pagination paginationInfo="${paginationInfo}" type="text"
							jsFunction="fn_search" />
					</c:if>
				</div>
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
	<%@ include file="/WEB-INF/include/include-body.jspf"%>
	<!-- Bootstrap core JavaScript -->
	<script src="../resources/vendor_blog/jquery/jquery.min.js"></script>
	<script
		src="../resources/vendor_blog/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Custom scripts for this template -->
	<script src="../resources/js_blog/clean-blog.min.js"></script>


	<script type="text/javascript">
		$(document).ready(function() {

			$("a[name='title']").on("click", function(e) { //제목
				e.preventDefault();
				fn_openPost($(this));
			});

			$("a[name='post']").on("click", function(e) { //post 메뉴 클릭
				e.preventDefault();
				fn_openPost($(this));
			});
		});

		function fn_openPost(obj) {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/sample/openPost.do' />");
			comSubmit.addParam("IDX", obj.parent().find("#IDX").val());
			comSubmit.submit();
		}
		
		function fn_search(pageNo) {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/sample/openIndex.do' />");
			comSubmit.addParam("currentPageNo", pageNo);
			comSubmit.submit();
		}
	</script>



</body>

</html>
