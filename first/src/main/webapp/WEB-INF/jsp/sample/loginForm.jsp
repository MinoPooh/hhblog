<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>free login form -bootstrap</title>

<!-- Bootstrap -->
<link href="../resources/css/bootstrap.min.css" rel="stylesheet">
<!-- font awesome -->
<link href="../resources/css/font-awesome.min.css" rel="stylesheet">
<!-- Custom Style -->
<link href="../resources/css/style.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></scri.row>.containerpt>
    <![endif]-->
</head>
<body>
	<div id="header">
		<%@ include file="/WEB-INF/include/include-header.jspf"%>
	</div>
	<div class="wrapper" align="align">
		<div class="page-header">
			<h1 align="center">
				<small>MinHo's Board</small>
			</h1>
		</div>
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

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
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
	<div id="footer">
		<%@ include file="/WEB-INF/include/include-footer.jspf"%>
	</div>

</body>
</html>
