<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>阅读信息统计</title>
		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Arimo:400,700,400italic">
	<link rel="stylesheet" href="static/asset/css/fonts/linecons/css/linecons.css">
	<link rel="stylesheet" href="static/asset/css/fonts/fontawesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="static/asset/css/bootstrap.css">
	<!--<link rel="stylesheet" href="static/asset/css/xenon-core.css">-->
	<link rel="stylesheet" href="static/asset/css/xenon-forms.css">
	<link rel="stylesheet" href="static/asset/css/xenon-components.css">
	<link rel="stylesheet" href="static/asset/css/xenon-skins.css">
	<link rel="stylesheet" href="static/asset/css/custom.css">
	<!-- Imported styles on this page -->
	<link rel="stylesheet" href="static/asset/js/select2/select2.css">
	<link rel="stylesheet" href="static/asset/js/select2/select2-bootstrap.css">
	<link rel="stylesheet" href="static/asset/js/multiselect/css/multi-select.css">
	<link rel="stylesheet" href="static/css/style.css">
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
				<div class="main-content">
			
		    <div class="panel panel-default panel-headerless">
                    <div class="panel-body layout-variants">
                        <div class="animated fadeInRight row">
                            <div class="col-sm-5">
                                <div class="ibox float-e-margins">
                                    <div class="ibox-title">
                                       
                                    </div>
                                    <div class="ibox-content">
                                        <div class="echarts" id="pieChart"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-5">
                                <div class="ibox float-e-margins">
                                    <div class="ibox-title">
                                        
                                    </div>
                                    <div class="ibox-content">
                                        <div class="echarts" id="barChart"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
		
		</div>
			</div>
			  <div class="page-loading-overlay">
            <div class="loader-2"></div>
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

        <script src="../static/asset/js/jquery-1.11.1.min.js"></script>
        <script src="../static/asset/js/resizeable.js"></script>
        <script src="../static/asset/js/joinable.js"></script>
        <script src="../static/asset/js/select2/select2.min.js"></script>
        <script src="../static/asset/js/jquery-ui/jquery-ui.min.js"></script>
        <script src="../static/asset/js/multiselect/js/jquery.multi-select.js"></script>
        <script src="../static/asset/js/xenon-custom.js"></script>
        <script src="../static/asset/js/bootstrap.min.js"></script>
        <script src="../static/asset/js/echarts.js"></script>
        <script src="../static/asset/js/content.min.js"></script>
        <script src="../static/js/readinfostatistics.js"></script>
</html>