<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>控制台</title>
		<link rel="stylesheet" type="text/css" href="Css/identify.css" />
		<link rel="stylesheet" type="text/css" href="Css/layout.css" />
		<link rel="stylesheet" type="text/css" href="Css/account.css" />
		<link rel="stylesheet" type="text/css" href="Css/style.css" />
		<link rel="stylesheet" type="text/css" href="Css/control_index.css" />
		<script type="text/javascript" src="Js/jquery-1.7.2.min.js"></script>
		<script type="text/javascript" src="Js/layer/layer.js"></script>
		<script type="text/javascript" src="Js/haidao.offcial.general.js"></script>
		<script type="text/javascript" src="Js/select.js"></script>
		<script type="text/javascript" src="Js/haidao.validate.js"></script>
	</head>

	<body>
	<div class="view-topbar">
		<%--静态引入头部jsp文件--%>
		<jsp:include   page="header.jsp" flush="true"/>
	</div>
		<div class="view-body">
			<div class="view-sidebar">
				<%--静态引入外部jsp文件--%>
				<jsp:include   page="sidebar.jsp" flush="true"/>
			</div>
			<div class="view-product">
				<div class="manage account-manage">
					<div class="manage-head">
						<h6 class="layout padding-left manage-head-con">账号管理</h6>
					</div>
					<dl class="account-basic clearfix">
						<dt class="fl">
						<p class="account-head">
							<img src="Images/noavatar_middle.gif">
						</p>
						</dt>
						<dd class="fl margin-large-left margin-small-top">
						<p class="text-small">
							<span class="show fl base-name">会员账号</span>:<span class="margin-left">小朱 </span>
						</p>
						<p class="text-small">
							<span class="show fl base-name">认证状态</span>:
							<span class="margin-left">已认证</span>
							<!-- <a class="margin-left text-main text-underline" href="#">立即认证</a> -->
						</p>
						<p class="text-small">
							<span class="show fl base-name">注册时间</span>:<span class="margin-left">2015-01-12 11:50:22</span>
						</p>
						</dd>
					</dl>
					<div class="account-basic clearfix">
						<span class="fl show text-small">您当前的账号安全程度</span>
						<div class="progress-bar fl margin-large-left margin-large-35">
							<div style="background: rgb(255, 153, 0) none repeat scroll 0% 0%; width: 180px;" data-width="100">
							</div>
						</div>
						<span class="fl show text-small">安全级别: <span style="color: rgb(255, 153, 0);" class="leval-safe">高</span></span>
					</div>
					<ul class="accound-bund">
						<li class="clearfix">
						<span class="bund-class">登录密码</span>
						<span class="w45">安全性高的密码可以使账号更安全，建议您定期更换密码，设置一个包含字母，符号或数字中至少两项且长度超过6位的密码。</span>
						<span class="fr margin-large-right">
						<i class="icon icon-been-set fl"></i>
						<em class="margin-right text-green-deep">已设置</em>
						            		|
						<a href="#" data-panel="modify_pass" data-title="修改密码-修改密码" data-callback="$(&quot;#modify_pass&quot;).submit();" data-btn="下一步,取消" class="button-word1 margin-left btn_ajax_open">修改</a>
						<input data-panel="modify_pass2" data-title="修改密码-修改完成" data-btn="完成" data-callback="layer.closeAll();" class="modify_pass_setup2 btn_ajax_open" value="第三步" type="hidden">
						</span>
						</li>
						<!-- <li class="clearfix">
						<span class="bund-class">支付密码</span>
						<span class="w45">高效管理企业资金的安全。</span>
						<span class="fr margin-large-right">
						<i class="icon icon-unset fl"></i>
						<em class="margin-right text-yellow-deep">未设置</em>
						            		|
						<a href="#" data-panel='modify-payment-set' data-title='设置支付密码-验证身份' data-btn='下一步,取消' data-callback='$("#modify_paypass_set_sendsms").submit();' class="button-word1 margin-left btn_ajax_open">设置</a>
						<input type="hidden" data-panel='modify-payment-set2' data-title='设置支付密码-设置密码' data-btn='下一步,取消' data-callback='$("#modify_paypass_set_ediopassword").submit()' class="modify_pay-set2 btn_ajax_open">
						<input type="hidden" data-panel='modify-payment-set3' data-title='设置支付密码-设置完成' data-btn='完成' data-callback='layer.closeAll();' class="modify_pay-set3_over btn_ajax_open" value="第三步">
						</span>
						</li>
						  -->
						<li class="clearfix">
						<span class="bund-class">邮箱绑定</span>
						<span class="w45">绑定邮箱可以用于安全验证、找回密码等重要操作</span>
						<span class="fr margin-large-right">
						<i class="icon icon-been-set fl"></i>
						<em class="margin-right text-green-deep">已设置</em>
						            					            		|
						<a href="#" data-panel="modify-email-revise" data-title="修改绑定邮箱-邮箱验证" data-btn="发送验证到邮箱,取消" data-callback="$(&quot;#modify_email&quot;).submit();" class="button-word1 margin-left btn_ajax_open">修改</a>
						<input data-panel="modify-email-revise2" data-title="修改绑定邮箱-修改成功" data-btn="完成" data-callback="layer.closeAll();" class="modif_email_setup2 btn_ajax_open" type="hidden">
						</span>
						</li>
						<!-- <li class="clearfix">
						<span class="bund-class">手机绑定</span>
						<span class="w45">您已绑定了手机<em class="text-green-deep">155****44</em>，[您的手机为安全手机，可以找回密码，但不能用于登录；为保障您账户安全，如果换绑的手机，5天之内只能操作一次。]</span>
						<span class="fr margin-large-right">
						<i class="icon icon-been-set fl"></i>
						<em class="margin-right text-green-deep">已设置</em>
						            		|
						<a href="#" data-panel='modify_mobile' data-title='修改绑定手机-验证身份' data-btn='下一步,取消' data-callback='$("#modify_mobile_sendsms").submit();' class="button-word1 margin-left btn_ajax_open">修改</a>
						<input type="hidden" data-panel='modify_mobile2' data-title='修改绑定手机-验证手机' data-btn='下一步,取消' data-callback='$("#modify_new_mobile_set").submit();' class="modify_reset_mobile2 btn_ajax_open">
						<input type="hidden" data-panel='modify_mobile3' data-title='修改绑定手机-修改成功' data-btn='完成' data-callback='layer.closeAll();' class="mobile-revise3-over btn_ajax_open" value="第三步">
						</span>
						</li>
						<li class="clearfix">
						<span class="bund-class">QQ绑定</span>
						<span class="w45">短信账户查询,办公沟通高效轻松,企业实时通讯录，内部联络方便快捷。</span>
						<span class="fr margin-large-right">
						<i class="icon icon-unset fl"></i>
						<em class="margin-right text-yellow-deep">未设置</em>
											|
						<a href="#" class="button-word1 margin-left">设置</a>
						<!--  <em class="margin-right text-green-deep">已设置</em>|<a href="#" data-panel='modify-QQ-revise' data-title='修改绑定QQ-身份验证' data-btn='下一步,取消' data-callback='layer.closeAll();$(".QQ-revise2").trigger("click")' class="button-word1 margin-left btn_ajax_open">修改</a>
						<input type="hidden" data-panel='modify-QQ-revise2' data-title='修改绑定QQ-输入QQ' data-btn='发送验证到QQ邮箱' data-callback='layer.closeAll();$(".QQ-revise3").trigger("click")' class="QQ-revise2 btn_ajax_open">
						<input type="hidden" data-panel='modify-QQ-revise3' data-title='修改绑定QQ-修改成功' data-btn='完成' data-callback='layer.closeAll();' class="QQ-revise3 btn_ajax_open" value="第三步">
						</span>
						</li>
						<li class="clearfix">
						<span class="bund-class">微信绑定</span>
						<span class="w45">微信移动客户端和PC端后台互相结合，只需要关注企业号即可进行操作，突破时间和空间的限制。</span>
						<span class="fr margin-large-right">
						<i class="icon icon-unset fl"></i>
						<em class="margin-right text-yellow-deep">未设置</em>
						            		|
						<a href="#" class="button-word1 margin-left">设置</a>
						</span>
						</li>
						 -->
						<li class="clearfix border-bottom-none">
						<span class="bund-class">邀请链接</span>
						<span class="w45" id="fe_text">http://t.cn/Edcx4Wt</span>
						<span class="fr margin-large-right">
						<a class="button-word1 margin-left" id="copy_button" data-clipboard-target="fe_text" href="#">复制链接</a>
						</span>
						</li>
					</ul>
				</div>
				<!--弹窗-->
				<!--修改密码-->
				<div class="modify_pass" style="display: none;">
					<dl class="layout modify-identity">
						<dt class="step4">
						<span class="w50 active">
						<em class="icon-index">1</em>
						<em>修改密码</em>
						</span>
						<span class="w50">
						<em class="icon-index">2</em>
						<em>修改成功</em>
						</span>
						</dt>
						<form name="modify_pass" id="modify_pass" action="http://www.haidao.la/index.php?m=Console&amp;c=Account&amp;a=profile">
							<dd>
							<ul>
								<li class="clearfix">
								<span class="revise-left">旧密码：</span>
								<span class="revise-right">
								<input class="input input-pass fl" name="old" datatype="*" placeholder="请输入您的账号旧密码" type="password">
								</span>
								</li>
								<li class="clearfix">
								<span class="revise-left">新密码：</span>
								<span class="revise-right">
								<input class="input input-pass fl" name="password" datatype="*6-15" placeholder="请输入您的账号新密码" type="password">
								</span>
								</li>
								<li class="clearfix">
								<span class="revise-left">确认新密码：</span>
								<span class="revise-right">
								<input class="input input-pass fl" name="confirmpwd" datatype="*" recheck="password" placeholder="请再次输入您的账号密码" type="password">
								</span>
								</li>
							</ul>
							</dd>
						</form>
					</dl>
				</div>
				<div class="modify_pass2" style="display: none;">
					<dl class="layout modify-identity">
						<dt class="step5">
						<span class="w50">
						<em class="icon-index">1</em>
						<em>修改密码</em>
						</span>
						<span class="w50 active">
						<em class="icon-index">2</em>
						<em>修改成功</em>
						</span>
						</dt>
						<dd>
						<span class="success clearfix"><em>恭喜您，密码已成功修改</em></span>
						</dd>
					</dl>
				</div>
				<!--支付密码设置-->
				<div class="modify-payment-set" style="display: none;">
					<dl class="layout modify-identity">
						<dt class="step1">
						<span class="active w33">
						<em class="icon-index">1</em>
						<em>短信验证</em>
						</span>
						<span class="w33">
						<em class="icon-index">2</em>
						<em>输入密码</em>
						</span>
						<span class="w33">
						<em class="icon-index">3</em>
						<em>设置成功</em>
						</span>
						</dt>
						<form name="modify_paypass_set_sendsms" method="post" id="modify_paypass_set_sendsms" action="http://www.haidao.la/index.php?m=Console&amp;c=Account&amp;a=modify_paypass&amp;action=repaypass">
							<dd>
							<ul>
								<li class="clearfix">
								<span class="revise-left">您已绑定的手机号：</span>
								<span class="revise-right">
													155****44									
								</span>
								</li>
								<li class="clearfix">
								<span class="revise-left">验证码：</span>
								<span class="revise-right">
								<input class="input fl identify-code" datatype="*4|n" sucmsg="验证码不正确" disabled="disabled" name="vcode" type="text">
								<a class="fl margin-left revise-bottom send-code" data-url="http://www.haidao.la/index.php?m=Console&amp;c=Account&amp;a=send_sms&amp;action=repaypass">发送验证码</a>
								</span>
								</li>
							</ul>
							</dd>
						</form>
					</dl>
				</div>
				<div class="modify-payment-set2" style="display: none;">
					<dl class="layout modify-identity">
						<dt class="step2">
						<span class="w33">
						<em class="icon-index">1</em>
						<em>短信验证</em>
						</span>
						<span class="active w33">
						<em class="icon-index">2</em>
						<em>输入密码</em>
						</span>
						<span class="w33">
						<em class="icon-index">3</em>
						<em>设置成功</em>
						</span>
						</dt>
						<form name="modify_paypass_set_ediopassword" id="modify_paypass_set_ediopassword" method="post" action="http://www.haidao.la/index.php?m=Console&amp;c=Account&amp;a=modify_paypass&amp;action=setpaypass">
							<dd>
							<ul>
								<li class="clearfix">
								<span class="revise-left">输入密码：</span>
								<span class="revise-right">
								<input class="input input-pass fl" name="paypassword" datatype="*6-15" placeholder="请输入您的支付密码" type="password">
								</span>
								</li>
								<li class="clearfix">
								<span class="revise-left">确认密码：</span>
								<span class="revise-right">
								<input class="input input-pass fl" name="paypassword1" datatype="*" recheck="paypassword" placeholder="请再次输入您的支付密码" type="password">
								</span>
								</li>
							</ul>
							</dd>
						</form>
					</dl>
				</div>
				<div class="modify-payment-set3" style="display: none;">
					<dl class="layout modify-identity">
						<dt class="step3">
						<span class="w33">
						<em class="icon-index">1</em>
						<em>短信验证</em>
						</span>
						<span class="w33">
						<em class="icon-index">2</em>
						<em>输入密码</em>
						</span>
						<span class="active w33">
						<em class="icon-index">3</em>
						<em>设置成功</em>
						</span>
						</dt>
						<dd>
						<span class="success clearfix"><em>恭喜您，密码已设置成功，请牢记此密码</em></span>
						</dd>
					</dl>
				</div>
				<!--支付密码修改-->
				<div class="modify-payment-revise" style="display: none;">
					<dl class="layout modify-identity">
						<dt class="step1">
						<span class="active w33">
						<em class="icon-index">1</em>
						<em>短信验证</em>
						</span>
						<span class="w33">
						<em class="icon-index">2</em>
						<em>输入密码</em>
						</span>
						<span class="w33">
						<em class="icon-index">3</em>
						<em>修改成功</em>
						</span>
						</dt>
						<form name="modify-payment-revise_sendsms" id="modify-payment-revise_sendsms" method="post" action="http://www.haidao.la/index.php?m=Console&amp;c=Account&amp;a=modify_paypass&amp;action=repaypass">
							<dd>
							<ul>
								<li class="clearfix">
								<span class="revise-left">您已绑定的手机号：</span>
								<span class="revise-right">
													155****44									
								</span>
								</li>
								<li class="clearfix">
								<span class="revise-left">验证码：</span>
								<span class="revise-right">
								<input class="input fl identify-code" datatype="*4|n" sucmsg="验证码不正确" disabled="disabled" name="vcode" placeholder="输入验证码" type="text">
								<a class="fl margin-left revise-bottom send-code" data-url="http://www.haidao.la/index.php?m=Console&amp;c=Account&amp;a=send_sms&amp;action=repaypass">发送验证码</a>
								</span>
								</li>
							</ul>
							</dd>
						</form>
					</dl>
				</div>
				<div class="modify-payment-revise2" style="display: none;">
					<dl class="layout modify-identity">
						<dt class="step2">
						<span class="w33">
						<em class="icon-index">1</em>
						<em>短信验证</em>
						</span>
						<span class="active w33">
						<em class="icon-index">2</em>
						<em>输入密码</em>
						</span>
						<span class="w33">
						<em class="icon-index">3</em>
						<em>修改成功</em>
						</span>
						</dt>
						<form name="modify-payment-revise_set" id="modify-payment-revise_set" method="post" action="http://www.haidao.la/index.php?m=Console&amp;c=Account&amp;a=modify_paypass&amp;action=setpaypass">
							<dd>
							<ul>
								<li class="clearfix">
								<span class="revise-left">输入新密码：</span>
								<span class="revise-right">
								<input class="input input-pass fl" name="repassword" datatype="*6-15" placeholder="请输入您的支付新密码" type="password">
								</span>
								</li>
								<li class="clearfix">
								<span class="revise-left">确认密码：</span>
								<span class="revise-right">
								<input class="input input-pass fl" name="repassword1" datatype="*" recheck="repassword" placeholder="请再次输入您的支付新密码" type="password">
								</span>
								</li>
							</ul>
							</dd>
						</form>
					</dl>
				</div>
				<div class="modify-payment-revise3" style="display: none;">
					<dl class="layout modify-identity">
						<dt class="step3">
						<span class="w33">
						<em class="icon-index">1</em>
						<em>短信验证</em>
						</span>
						<span class="w33">
						<em class="icon-index">2</em>
						<em>输入密码</em>
						</span>
						<span class="active w33">
						<em class="icon-index">3</em>
						<em>修改成功</em>
						</span>
						</dt>
						<dd>
						<span class="success clearfix"><em>恭喜您，密码已修改成功，请牢记此密码</em></span>
						</dd>
					</dl>
				</div>
				<!--邮箱绑定修改-->
				<div class="modify-email-revise" style="display: none;">
					<dl class="layout modify-identity">
						<dt class="step4">
						<span class="w50 active">
						<em class="icon-index">1</em>
						<em>输入邮箱</em>
						</span>
						<span class="w50">
						<em class="icon-index">2</em>
						<em>设置成功</em>
						</span>
						</dt>
						<form name="modify_email" id="modify_email" action="http://www.haidao.la/index.php?m=Console&amp;c=Account&amp;a=reEmailSendEmail" method="post">
							<dd>
							<ul>
								<li class="clearfix">
								<span class="revise-left">输入新邮箱地址：</span>
								<span class="revise-right">
								<input class="input input-pass fl" datatype="email" placeholder="请输入您的新邮箱地址" name="email">
								</span>
								</li>
							</ul>
							</dd>
						</form>
					</dl>
				</div>
				<div class="modify-email-revise2" style="display: none;">
					<dl class="layout modify-identity">
						<dt class="step5">
						<span class="w50">
						<em class="icon-index">1</em>
						<em>输入邮箱</em>
						</span>
						<span class="w50 active">
						<em class="icon-index">2</em>
						<em>设置成功</em>
						</span>
						</dt>
						<dd>
						<span class="success clearfix"><em>邮件已发送到指定邮箱,请30分钟内完成验证!</em></span>
						</dd>
					</dl>
				</div>
				<!--绑定手机号-->
				<div class="modify_mobile_set" style="display: none;">
					<dl class="layout modify-identity">
						<dt class="step1">
						<span class="w50 active">
						<em class="icon-index">1</em>
						<em>短信验证</em>
						</span>
						<span class="w50">
						<em class="icon-index">2</em>
						<em>修改成功</em>
						</span>
						</dt>
						<form name="modify_mobile_checked" id="modify_mobile_checked" action="http://www.haidao.la/index.php?m=Console&amp;c=Account&amp;a=modify_mobile&amp;action=setmobile" method="post">
							<dd>
							<ul>
								<li class="clearfix">
								<span class="revise-left">您需要绑定的手机号：</span>
								<span class="revise-right">
								<input class="input input-pass fl" datatype="mobile" errormsg="请输入正确的手机号码" name="new_mobile" placeholder="请输入您的手机号码">
								</span>
								</li>
								<li class="clearfix">
								<span class="revise-left">验证码：</span>
								<span class="revise-right">
								<input class="input fl identify-code" datatype="*4|n" sucmsg="验证码不正确" disabled="disabled" name="vcode" placeholder="输入验证码" type="text">
								<a class="fl margin-left revise-bottom send-code" data-url="http://www.haidao.la/index.php?m=Console&amp;c=Account&amp;a=send_sms&amp;action=setmobile">发送验证码</a>
								</span>
								</li>
							</ul>
							</dd>
						</form>
					</dl>
				</div>
				<div class="modify_mobile_set2" style="display: none;">
					<dl class="layout modify-identity">
						<dt class="step2">
						<span class="w50">
						<em class="icon-index">1</em>
						<em>短信验证</em>
						</span>
						<span class="w50 active">
						<em class="icon-index">2</em>
						<em>修改成功</em>
						</span>
						</dt>
						<dd>
						<span class="success clearfix"><em>恭喜您，绑定手机成功</em></span>
						</dd>
					</dl>
				</div>
				<!--修改手机号-->
				<div class="modify_mobile" style="display: none;">
					<dl class="layout modify-identity">
						<dt class="step1">
						<span class="active w33">
						<em class="icon-index">1</em>
						<em>短信验证</em>
						</span>
						<span class="w33">
						<em class="icon-index">2</em>
						<em>验证手机</em>
						</span>
						<span class="w33">
						<em class="icon-index">3</em>
						<em>修改成功</em>
						</span>
						</dt>
						<form name="modify_mobile_sendsms" id="modify_mobile_sendsms" action="http://www.haidao.la/index.php?m=Console&amp;c=Account&amp;a=modify_mobile&amp;action=remobile" method="post">
							<dd>
							<ul>
								<li class="clearfix">
								<span class="revise-left">您已绑定的手机号：</span>
								<span class="revise-right">
													155****44									
								</span>
								</li>
								<li class="clearfix">
								<span class="revise-left">验证码：</span>
								<span class="revise-right">
								<input class="input fl identify-code" datatype="*4|n" sucmsg="验证码不正确" disabled="disabled" name="vcode" placeholder="输入验证码" type="text">
								<a class="fl margin-left revise-bottom send-code" data-url="http://www.haidao.la/index.php?m=Console&amp;c=Account&amp;a=send_sms&amp;action=remobile">发送验证码</a>
								</span>
								</li>
							</ul>
							</dd>
						</form>
					</dl>
				</div>
				<div class="modify_mobile2" style="display: none;">
					<dl class="layout modify-identity">
						<dt class="step2">
						<span class="w33">
						<em class="icon-index">1</em>
						<em>短信验证</em>
						</span>
						<span class="active w33">
						<em class="icon-index">2</em>
						<em>验证手机</em>
						</span>
						<span class="w33">
						<em class="icon-index">3</em>
						<em>修改成功</em>
						</span>
						</dt>
						<form name="modify_new_mobile_set" id="modify_new_mobile_set" method="post" action="http://www.haidao.la/index.php?m=Console&amp;c=Account&amp;a=modify_mobile&amp;action=setmobile">
							<dd>
							<ul>
								<li class="clearfix">
								<span class="revise-left">输入需要绑定的手机：</span>
								<span class="revise-right">
								<input class="input input-pass fl" datatype="mobile" errormsg="请输入正确的手机号码" name="new_mobile" placeholder="请输入您的手机号码">
								</span>
								</li>
								<li class="clearfix">
								<span class="revise-left">验证码：</span>
								<span class="revise-right">
								<input class="input fl identify-code" datatype="*4|n" sucmsg="验证码不正确" name="vcode" disabled="disabled" placeholder="输入验证码" type="text">
								<a class="fl margin-left revise-bottom send-code" data-url="http://www.haidao.la/index.php?m=Console&amp;c=Account&amp;a=send_sms&amp;action=setmobile">发送验证码</a>
								</span>
								</li>
							</ul>
							</dd>
						</form>
					</dl>
				</div>
				<div class="modify_mobile3" style="display: none;">
					<dl class="layout modify-identity">
						<dt class="step3">
						<span class="w33">
						<em class="icon-index">1</em>
						<em>短信验证</em>
						</span>
						<span class="w33">
						<em class="icon-index">2</em>
						<em>输入密码</em>
						</span>
						<span class="active w33">
						<em class="icon-index">3</em>
						<em>修改成功</em>
						</span>
						</dt>
						<dd>
						<span class="success clearfix"><em>恭喜您，绑定手机已修改成功</em></span>
						</dd>
					</dl>
				</div>
				<!--绑定QQ-->
				<div class="modify-QQ-band" style="display: none;">
					<dl class="layout modify-identity">
						<dt class="step1">
						<span class="active w33">
						<em class="icon-index">1</em>
						<em>短信验证</em>
						</span>
						<span class="w33">
						<em class="icon-index">2</em>
						<em>输入QQ</em>
						</span>
						<span class="w33">
						<em class="icon-index">3</em>
						<em>设置成功</em>
						</span>
						</dt>
						<form>
							<dd>
							<ul>
								<li class="clearfix">
								<span class="revise-left">输入您已绑定的手机号：</span>
								<span class="revise-right">
								<input class="input input-pass fl" datatype="mobile" errormsg="请输入正确的手机号码" placeholder="请输入您的手机号码">
								</span>
								</li>
								<li class="clearfix">
								<span class="revise-left">验证码：</span>
								<span class="revise-right">
								<input class="input fl identify-code" datatype="*4|n" sucmsg="验证码不正确" disabled="disabled" placeholder="输入验证码" type="text">
								<a class="fl margin-left revise-bottom send-code">发送验证码</a>
								</span>
								</li>
							</ul>
							</dd>
						</form>
					</dl>
				</div>
				<div class="modify-QQ-band2" style="display: none;">
					<dl class="layout modify-identity">
						<dt class="step2">
						<span class="w33">
						<em class="icon-index">1</em>
						<em>短信验证</em>
						</span>
						<span class="active w33">
						<em class="icon-index">2</em>
						<em>输入QQ</em>
						</span>
						<span class="w33">
						<em class="icon-index">3</em>
						<em>设置成功</em>
						</span>
						</dt>
						<dd>
						<ul>
							<li class="clearfix">
							<span class="revise-left">输入您的QQ号：</span>
							<span class="revise-right">
							<form>
								<input class="input input-pass fl" datatype="n5-10" errormsg="请输入正确QQ号" placeholder="请输入您的QQ号">
							</form>
							</span>
							</li>
						</ul>
						</dd>
					</dl>
				</div>
				<div class="modify-QQ-band3" style="display: none;">
					<dl class="layout modify-identity">
						<dt class="step3">
						<span class="w33">
						<em class="icon-index">1</em>
						<em>短信验证</em>
						</span>
						<span class="w33">
						<em class="icon-index">2</em>
						<em>输入QQ</em>
						</span>
						<span class="active w33">
						<em class="icon-index">3</em>
						<em>设置成功</em>
						</span>
						</dt>
						<dd>
						<span class="success clearfix"><em>恭喜您，QQ已成功绑定</em></span>
						</dd>
					</dl>
				</div>
				<!--修改绑定QQ-->
				<div class="modify-QQ-revise" style="display: none;">
					<dl class="layout modify-identity">
						<dt class="step1">
						<span class="active w33">
						<em class="icon-index">1</em>
						<em>短信验证</em>
						</span>
						<span class="w33">
						<em class="icon-index">2</em>
						<em>输入QQ</em>
						</span>
						<span class="w33">
						<em class="icon-index">3</em>
						<em>设置成功</em>
						</span>
						</dt>
						<form>
							<dd>
							<ul>
								<li class="clearfix">
								<span class="revise-left">输入您已绑定的手机号：</span>
								<span class="revise-right">
								<input class="input input-pass fl" datatype="mobile" errormsg="请输入正确的手机号码" placeholder="请输入您的手机号码">
								</span>
								</li>
								<li class="clearfix">
								<span class="revise-left">验证码：</span>
								<span class="revise-right">
								<input class="input fl identify-code" datatype="*4|n" sucmsg="验证码不正确" disabled="disabled" placeholder="输入验证码" type="text">
								<a class="fl margin-left revise-bottom send-code">发送验证码</a>
								</span>
								</li>
							</ul>
							</dd>
						</form>
					</dl>
				</div>
				<div class="modify-QQ-revise2" style="display: none;">
					<dl class="layout modify-identity">
						<dt class="step2">
						<span class="w33">
						<em class="icon-index">1</em>
						<em>短信验证</em>
						</span>
						<span class="active w33">
						<em class="icon-index">2</em>
						<em>输入QQ</em>
						</span>
						<span class="w33">
						<em class="icon-index">3</em>
						<em>设置成功</em>
						</span>
						</dt>
						<dd>
						<ul>
							<li class="clearfix">
							<span class="revise-left">输入您新的QQ号：</span>
							<span class="revise-right">
							<form>
								<input class="input input-pass fl" datatype="n5-10" errormsg="请输入正确QQ号" placeholder="请输入您的QQ号">
							</form>
							</span>
							</li>
						</ul>
						</dd>
					</dl>
				</div>
				<div class="modify-QQ-revise3" style="display: none;">
					<dl class="layout modify-identity">
						<dt class="step3">
						<span class="w33">
						<em class="icon-index">1</em>
						<em>短信验证</em>
						</span>
						<span class="w33">
						<em class="icon-index">2</em>
						<em>输入QQ</em>
						</span>
						<span class="active w33">
						<em class="icon-index">3</em>
						<em>设置成功</em>
						</span>
						</dt>
						<dd>
						<span class="success clearfix"><em>恭喜您，绑定QQ已成功修改</em></span>
						</dd>
					</dl>
				</div>
			</div>
		</div>

		<script>
			$(".sidebar-title").live('click', function() {
				if ($(this).parent(".sidebar-nav").hasClass("sidebar-nav-fold")) {
					$(this).next().slideDown(200);
					$(this).parent(".sidebar-nav").removeClass("sidebar-nav-fold");
				} else {
					$(this).next().slideUp(200);
					$(this).parent(".sidebar-nav").addClass("sidebar-nav-fold");
				}
			});
		</script>
	</body>

</html>