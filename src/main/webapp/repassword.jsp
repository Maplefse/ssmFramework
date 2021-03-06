<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
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
		<style>
			.gt_ajax_tip .ready{right: -56px;}
		</style>
	</head>

<body class="login-bg">
	<div class="main ">
		<!--登录-->
		<div class="login-dom login-max">
			<div class="logo text-center">
				<a href="#">
				<img src="Images/logo.png" width="180px" height="180px">
				</a>
			</div>
			<div class="login container " id="login">
				<p class="text-big text-center logo-color">
					创建某某账号，驰骋电子商务
				</p>
				<p class=" text-center margin-small-top logo-color text-small">
					控制台 | 云平台 | 论坛 | 云市场
				</p>
				<form class="register-form" action="index.html" method="post" autocomplete="off">
					<div class="num-box ">
						<div class="area fl">
							+86(中国)
						</div>
						<input type="text" placeholder="请输入手机号" autofocus="true" id="num-name" name="mobile" datatype="m" nullmsg="请填写正确的手机号码">
					</div>
					<div class="slider-box">
						<div id="captcha" style="margin-left: 12px;">
						</div>
					</div>
					<input type="hidden" name="formhash" value="5abb5d21"/>
					<input type="submit" class="btn text-center login-btn" value="发送验证码">
					<div class="forget">
						<a href="repassword.jsp" class="forget-pwd text-small fl">忘记登录密码？</a><a href="login.jsp" class="forget-new text-small fr" id="forger-login">已有账号，立即登录</a>
					</div>
				</form>
			</div>
		</div>
		<div class="footer text-center text-small ie">
			Copyright 2013-2016 某某科技有限公司 版权所有 
			<a href="#" target="_blank">滇ICP备13005806号</a>
			<span class="margin-left margin-right">|</span>
			<script src="#" language="JavaScript"></script>
		</div>
		<div class="popupDom">
			<div class="popup text-default">
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="Js/Validform_v5.3.2_min.js"></script>
<script type="text/javascript">
	
	function popup_msg(msg){
		$(".popup").html(""+msg+"");
			$(".popupDom").animate({
				"top": "0px"
			}, 400);
			setTimeout(function() {
				$(".popupDom").animate({
					"top": "-40px"
				}, 400);
			}, 2000);
		
	}
	/*动画（注册）*/
	$(document).ready(function(e) {
		/*极验*/
		var geetest_status = false;       
    
        var captchaObj = new Geetest({
        	gt: "",
            challenge: "",
            product: "float" // 产品形式  
        }); // 实例化，config为配置参数
	
	    captchaObj.appendTo("#captcha"); // 绑定到id为captcha的元素上
	
	    captchaObj.onSuccess(function () {
	        geetest_status=true;
	    });
		/*调用验证*/
		$('.register-form').Validform({
			ajaxPost:true,
			tiptype:function(msg){
				if(msg)popup_msg(''+msg+'');
			},
			beforeSubmit:function(curform){
				if(geetest_status == false){
					popup_msg('请拖动滑块,完成验证');
					return false;
				}
				return true;
			},
			callback:function(data){
				popup_msg(''+data.info+'');
				if(data.status == 1){
					window.location.href=""+data.url+""
				}
			}
		});	
	});
</script>
</html>