<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>控制台</title>

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
					<form role="form" class="form-horizontal" id="bookInfo">
						<div class="form-group">
							<label class="col-sm-2 control-label" for="bookTitle">书名</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="bookTitle" placeholder="请输入书的标题" data-require="1">
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="isbn">ISBN</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="isbn" placeholder="请输入书的ISBN" data-require="1">
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="author">作者</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="author" placeholder="请输入作者" data-require="1">
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="authorIntro">作者简介</label>
							<div class="col-sm-10">
								<textarea class="form-control" name="authorIntro" rows="3" placeholder="请输入作者简介" data-require="0"></textarea>
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="summary">内容简介</label>
							<div class="col-sm-10">
								<textarea class="form-control" name="summary" rows="3" placeholder="请输入书的内容简介" data-require="0"></textarea>
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="shelfNm">书架</label>
							<div class="col-sm-10">
								<select class="form-control" id="shelf-select" name="shelfNm" data-require="1">
									<option value="1">已读</option>
									<option value="2">阅读中</option>
									<option value="0">未读</option>
								</select>
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="isEbook">电子书</label>
							<div class="col-sm-10">
								<select class="form-control" id="ebook-select" name="isEbook" data-require="0">
									<option value="">请选择是否电子书</option>
									<option value="1">是</option>
									<option value="0">否</option>
								</select>
								<span class="help-block"></span>
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="txt-center">
				<a href="index.html" class="ml15 btn btn btn-info">返回首页</a>
				<a class="btn btn-blue" id="btnsubmit">提交</a>
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