<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!doctype html>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
		<title>某某科技</title>
		<meta name="keywords" content="某某科技" />
		<meta name="description" content="某某科技" />
		<link href="Css/layout.css" rel="stylesheet" type="text/css">
		<link href="Css/login.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="Js/jquery-1.7.2.min.js"></script>
		<script type="text/javascript" src="Js/js.js"></script>
	</head>

	<body class="login-bg">
		<!--登录-->
		<div class="main login-dom">
			<div class="successDom">
				<div class="four-top">
					<div class="logo1 text-center ">
						<a href="#">
						<img src="Images/logo.png" width="180px" height="180px">
					</div>
					</a>
					<div class="logo-color margin-big-top text-big text-center">
						退出成功
					</div>
					<div class="logo-color margin-big-top text-center text-small">
						<a class="text-white" id="href" href="#"> 页面正在跳转，请稍等 <b id="wait">2</a></b>
					</div>
				</div>
			</div>
			<div class="footer text-center text-small ">
						Copyright 2013-2016 某某科技有限公司 版权所有 滇ICP备13005806号
				<span class="margin-left margin-right">|</span>
			</div>
			<div class="popupDom">
				<div class="popup text-default">
				</div>
			</div>
		</div>
	</body>
	<script type="text/javascript">
		$(".successDom").fadeIn("fast", function() {
			$(".successDom").animate({
				"top": "50%"
			}, 500);
		})
	</script>
	<script type="text/javascript">
		(function() {
			var wait = document.getElementById('wait'),
				href = document.getElementById('href').href;
			var interval = setInterval(function() {
				var time = --wait.innerHTML;
				if (time <= 0) {
					location.href = href;
					clearInterval(interval);
				};
			}, 1000);
		})();
	</script>

</html>