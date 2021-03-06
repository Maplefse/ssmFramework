<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="description" content="Xenon Boostrap Admin Panel" />
	<meta name="author" content="" />

	<title>我的图书</title>

	<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Arimo:400,700,400italic">
	<link rel="stylesheet" href="../static/asset/css/fonts/linecons/css/linecons.css">
	<link rel="stylesheet" href="../static/asset/css/fonts/fontawesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="../static/asset/css/bootstrap.css">
	<link rel="stylesheet" href="../static/asset/css/xenon-core.css">
	<link rel="stylesheet" href="../static/asset/css/xenon-forms.css">
	<link rel="stylesheet" href="../static/asset/css/xenon-components.css">
	<link rel="stylesheet" href="../static/asset/css/xenon-skins.css">
	<link rel="stylesheet" href="../static/asset/css/custom.css">
	<!-- Imported styles on this page -->
	<link rel="stylesheet" href="../static/asset/js/select2/select2.css">
	<link rel="stylesheet" href="../static/asset/js/select2/select2-bootstrap.css">
	<link rel="stylesheet" href="../static/asset/js/multiselect/css/multi-select.css">
	<link rel="stylesheet" href="../static/css/index.css">

	<script src="../static/asset/js/jquery-1.11.1.min.js"></script>

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->


</head>
<body class="page-body">
	<div class="page-container">
		<!-- 左侧菜单 -->
		<div class="sidebar-menu toggle-others fixed">
			<div class="sidebar-menu-inner">
				<header class="logo-env">
		
					<!-- logo -->
					<div class="logo">
						<a href="dashboard-1.html" class="logo-expanded">
							家庭图书管理系统
						</a>
		
						<a href="dashboard-1.html" class="logo-collapsed">
							<img src="../static/images/logo-collapsed@2x.png" width="40" alt="" />
						</a>
					</div>
		
					<!-- This will toggle the mobile menu and will be visible only on mobile devices -->
					<div class="mobile-menu-toggle visible-xs">
						<a href="#" data-toggle="user-info-menu">
							<i class="fa-bell-o"></i>
							<span class="badge badge-success">7</span>
						</a>
		
						<a href="#" data-toggle="mobile-menu">
							<i class="fa-bars"></i>
						</a>
					</div>
		
					<!-- This will open the popup with user profile settings, you can use for any purpose, just be creative -->
					<div class="settings-icon">
						<a href="#" data-toggle="settings-pane" data-animate="true">
							<i class="linecons-cog"></i>
						</a>
					</div>
				</header>
				<ul id="main-menu" class="main-menu">
					<li class="active opened active">
						<a href="index.html">
							<i class="linecons-cog"></i>
							<span class="title">首页</span>
						</a>
					</li>
					<li>
						<a href="myBooks.jsp">
							<i class="linecons-desktop"></i>
							<span class="title">图书管理</span>
						</a>
					</li>
					<li>
						<a href="shelf.jsp">
							<i class="linecons-note"></i>
							<span class="title">书架管理</span>
						</a>
					</li>
                    <li>
                        <a href="readInfoStatistics.jsp">
                            <i class="linecons-note"></i>
                            <span class="title">阅读信息统计</span>
                        </a>
                    </li>
				</ul>
			</div>
		</div>
		<div class="main-content">
			<nav class="navbar user-info-navbar"  role="navigation">
				<ul class="user-info-menu left-links list-inline list-unstyled my-books">
					<li>
						<div class="form-group simple-select pull-left ml15">
							<script type="text/javascript">
								jQuery(document).ready(function($)
								{
									$("#sboxit-2").selectBoxIt({
										showFirstOption: false
									}).on('open', function()
									{
										// Adding Custom Scrollbar
										$(this).data('selectBoxSelectBoxIt').list.perfectScrollbar();
									});
								});
							</script>
							
							<select class="form-control" id="sboxit-2">
								<option>阅读状态</option>
								<option value="al">在读</option>
								<option value="au">已读</option>
								<option value="bd">想读</option>
							</select>
						</div>
					</li>
					<li>
						<div class="form-group remote-data">
							<script type="text/javascript">
								jQuery(document).ready(function($)
								{
									$("#s2example-4").select2({
										minimumInputLength: 1,
										placeholder: '请输入图书相关信息',
										ajax: {
											url: "data/select2-remote-data.php",
											dataType: 'json',
											quietMillis: 100,
											data: function(term, page) {
												return {
													limit: -1,
													q: term
												};
											},
											results: function(data, page ) {
												return { results: data }
											}
										},
										formatResult: function(student) { 
											return "<div class='select2-user-result'>" + student.name + "</div>"; 
										},
										formatSelection: function(student) { 
											return  student.name; 
										}
										
									});
								});
							</script>
							
							<input type="hidden" name="s2example-4" id="s2example-4" />
								
						</div>
					</li>
					<li>
						<div class="form-group pull-right">
							<span class="ml15 btn btn-blue">查询</span>
						</div>
					</li>
				</ul>
				<!-- Right links for user info navbar -->
				<ul class="user-info-menu right-links list-inline list-unstyled">
					<li class="dropdown user-profile">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<img src="../static/images/user-4.png" alt="user-image" class="img-circle img-inline userpic-32" width="28" />
							<span>
								John Smith
								<i class="fa-angle-down"></i>
							</span>
						</a>
						<ul class="dropdown-menu user-profile-menu list-unstyled">
							<li class="last">
								<a href="extra-lockscreen.html">
									<i class="fa-lock"></i>
									Logout
								</a>
							</li>
						</ul>
					</li>
				</ul>
			</nav>
			<div class="panel panel-default panel-headerless">
				<div class="panel-body layout-variants">
				</div>
			</div>
		</div>
	</div>
	<!-- Page Loading Overlay -->
	<div class="page-loading-overlay">
		<div class="loader-2"></div>
	</div>
	<!-- Imported scripts on this page -->
	
	<script src="../static/asset/js/resizeable.js"></script>
	<script src="../static/asset/js/joinable.js"></script>

	<script src="../static/asset/js/select2/select2.min.js"></script>
	<script src="../static/asset/js/jquery-ui/jquery-ui.min.js"></script>
	<script src="../static/asset/js/selectboxit/jquery.selectBoxIt.min.js"></script>
	<script src="../static/asset/js/multiselect/js/jquery.multi-select.js"></script>

	<script src="../static/asset/js/xenon-custom.js"></script>

</body>
</html>