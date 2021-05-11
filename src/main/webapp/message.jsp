<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
				<%--静态引入侧边栏jsp文件--%>
				<jsp:include   page="sidebar.jsp" flush="true"/>
			</div>
			</div>
			<div class="view-product">
				<div class="info-center">
					<div class="manage-head">
						<h6 class=" padding-left manage-head-con ">消息中心</h6>
					</div>
					<div class="info-center-con">
						<div class=" info-center-title h5 margin-big-top clearfix">
							<span class="fl padding-large-right manage-title"><a href="${pageContext.request.contextPath}/SubscribeTest">全部消息</a></span>
							<span class="fl padding-large-right "><a href="${pageContext.request.contextPath}/SubscribeTest?pass=-1">未审核消息</a></span>
							<%--<span class="fl padding-large-right"><a href="${pageContext.request.contextPath}/SubscribeTest?pass=1">已读消息(0)</a></span>--%>
							<span class="fl"><a href="${pageContext.request.contextPath}/SubscribeTest?pass=2">已审核消息</a></span>

						</div>
						<%--<p style="width: 56px; left: 20px;" class="solid-slider">--%>
						</p>
					</div>
					<div class="offcial-table input-table table-margin clearfix">
						<div class="list-content show">
							<div class="offcial-table tr-border margin-big-top clearfix">
								<div class="tr-th clearfix">
									<div class="th w10">
										预约类型
									</div>
									<div class="th w20">
										预约用户ID/姓名
									</div>
									<div class="th w15">
										预约内容
									</div>
									<div class="th w10">
										用户信誉点
									</div>
									<div class="th w15">
										预约时间
									</div>
									<div class="th w10">
										预约状态
									</div>
									<div class="th w20">
										操作
									</div>
								</div>
								<c:forEach var="make" items="${seatBooked.list}" >
								<div class="tr clearfix border-bottom-none">
									<div class="td w10">
										<c:if test="${make.table==1}">
											借阅预约
										</c:if>
										<c:if test="${make.table==2}">
											座位预约
										</c:if>
										<c:if test="${make.table==3}">
											借阅续期
										</c:if>
									</div>
									<div class="td w20">
										${make.user_id}/${make.user_name}
									</div>
									<div class="td w15">
										<%--判断信息类型--%>
										<c:if test="${make.table==2}">
											${make.typeName}号座位
										</c:if>
										<c:if test="${make.table==1}">
											${make.typeName}
										</c:if>
										<c:if test="${make.table==3}">
											${make.typeName}
										</c:if>

									</div>
									<div class="td w10">
										${make.integrity}点
									</div>
									<div class="td w15">
										${make.data}
									</div>
									<div class="td w10">
										<c:if test="${make.pass eq 0 or make.pass eq 1  }">
											未审核
										</c:if>
										<c:if test="${make.pass eq 2}">
											已通过
										</c:if>
										<c:if test="${ make.pass eq 3}">
											已拒绝
										</c:if>
									</div>
									<div class="td w20">
										<c:if test="${make.pass eq 0 or make.pass eq 1}">
											<a href="javascript:void(0);" onclick="consent(${make.id},${make.table},this)" msg="您是否删除此站点，如果删除会影响站点通信导致部分功能无法使用？" callback="del_site(624)" data-id="" class="button-word2 btn_ajax_confirm">通过</a>
											<a href="javascript:void(0);" onclick="refuse(${make.id},${make.table},this)" msg="您是否删除此站点，如果删除会影响站点通信导致部分功能无法使用？" callback="del_site(624)" data-id="" class="button-word2 btn_ajax_confirm">拒绝</a>

										</c:if>
										<c:if test="${make.pass eq 2 or make.pass eq 3}">
											<a href="javascript:void(0);" onclick="dele(${make.id},${make.table},this)" msg="您是否删除此站点，如果删除会影响站点通信导致部分功能无法使用？" callback="del_site(624)" data-id="" class="button-word2 btn_ajax_confirm">删除</a>
										</c:if>
									</div>
								</div>
								</c:forEach>
							</div>
						</div>
						<div class="show-page padding-big-right">
							<div class="page">
								<div class="page">
									<ul class="offcial-page margin-top margin-big-right">
										<li>共<em class="margin-small-left margin-small-right">${seatBooked.total}</em>条数据</li>
										<li>本页显示<em class="margin-small-left margin-small-right">${seatBooked.size}</em>条</li>
										<c:if test="${seatBooked.total>10}">
										<li><a class="next disable" href="${pageContext.request.contextPath}/SubscribeTest?pageNum=${seatBooked.pages-1}&pass=${sqltype}">上一页</a></li>
										<li></li>
										<li><a class="next disable" href="${pageContext.request.contextPath}/SubscribeTest?pageNum=${seatBooked.pages+1}&pass=${sqltype}">下一页</a></li>
										</c:if>
									</ul>
								</div>
							</div>
						</div>
					</div>

				</div>
				<div class="show-page padding-top-0 layout hidden">
					<ul class="tr-float">
					</ul>
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

		<%--<script src="Js/messageHint.js"/>--%>

	<script>
		//拒绝方法
		function refuse(booked_id,table,obj){
			$.ajax({
				url:"refuse",
				data:"booked_id="+booked_id +"&table="+table,
				dataType:"JSON",
				success: function(data){
					if(data>=1){
						$(obj).parent().prev().text("已拒绝")

						$(obj).prev().remove();

						$(obj).parent().append("<a href=# msg=您是否删除此站点，如果删除会影响站点通信导致部分功能无法使用？ callback=del_site(624) data-id class="+"button-word2\xa0btn_ajax_confirm"+">删除</a>")
						$(obj).remove();
					}
				}

			});
		}

		//同意方法
		function consent(booked_id,table,obj){
			$.ajax({
				url:"consent",
				data:"booked_id="+booked_id +"&table="+table,
				dataType:"JSON",
				success: function(data){
					if(data>=1){
						$(obj).parent().prev().text("已通过")
						$(obj).next().remove();
						$(obj).parent().append("<a href=# msg=您是否删除此站点，如果删除会影响站点通信导致部分功能无法使用？ callback=del_site(624) data-id class="+"button-word2\xa0btn_ajax_confirm"+">删除</a>")
						$(obj).remove();
					}
				}

			});
		}

		//拒绝方法
		function dele(booked_id,table,obj){
			$.ajax({
				url:"del",
				data:"booked_id="+booked_id +"&table="+table,
				dataType:"JSON",
				success: function(data){
					if(data>=1){
						$(obj).parent().parent().remove()

					}
				}

			});
		}

	</script>

	</body>

</html>