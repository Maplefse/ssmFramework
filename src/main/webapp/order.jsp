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
				<div class="info-center">
		            <div class="manage-head">
		                <h6 class="padding-left manage-head-con">订单管理</h6>
		            </div>
		            <div class="offcial-table input-table table-margin clearfix">
		                <div class="tr-th clearfix">
		                    <div class="th w5 text-center"><!--<input class="margin-top-15" type="checkbox" />--></div>
		                    <div class="th w20">订单号</div>
		                    <div class="th w20">产品</div>
		                    <div class="th w15">创建时间</div>
		                    <div class="th w15">支付/开通时间</div>
		                    <div class="th w10">
		                    	支付状态
		                    	<!--<div class="select-table status-table fl status-left">
					        		<div>
					        			<input class="status-total" type="text" readonly="readonly" value="已支付">
					        			<span class="bg-img"></span>
					        		</div>
					        		<ul>
					        			<li><a href="#">所有状态</a></li>
					        			<li class="on"><a href="#">已支付</a></li>
					        		</ul>
					        	</div>-->
		                    </div>
		                    <div class="th w10">金额</div>
		                    <div class="th w5 text-center">操作</div>
		                </div>
		                			            <div class="tr non-info show border-bottom-none">
			            	<span>没查询到符合条件的记录</span>
			            </div>
			            		            </div>
		        </div>
		        <div class="show-page padding-big-right hidden">
					<div class="page">
											</div>
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