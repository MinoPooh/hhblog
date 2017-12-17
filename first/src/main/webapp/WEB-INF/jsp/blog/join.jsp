<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>join</title>
<!-- Bootstrap -->
<link href="../resources/css/bootstrap.min.css" rel="stylesheet">
<!-- font awesome -->
<link rel="stylesheet" href="../resources/css/font-awesome.min.css"
	media="screen" title="no title" charset="utf-8">
<!-- Custom style -->
<link rel="stylesheet" href="../resources/css/style.css" media="screen"
	title="no title" charset="utf-8">



<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<div id="header">
		<%@ include file="/WEB-INF/include/include-header.jspf"%>
	</div>
	<article class="container">
	<div class="page-header">
		<h1 align="center">
			회원가입 <small>MinHo's Board</small>
		</h1>
	</div>
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
	<%@ include file="/WEB-INF/include/include-body.jspf"%>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="../resources/js/bootstrap.min.js"></script>

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

	<div id="footer">
		<%@ include file="/WEB-INF/include/include-footer.jspf"%>
	</div>
</body>
</html>