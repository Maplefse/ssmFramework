<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>书架管理</title>
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
					<form role="form" class="form-horizontal" id="shelfInfo">
			<div class="form-group">
				<div class="col-sm-6">
					<input type="text" class="form-control" value="书房">
					<span class="help-block"></span>
				</div>
				<div class="col-sm-4">
					<a class="btn btn-info" href="index.html?shelf=01">查看图书</a>
					<span class="btn btn-turquoise edit" data-type="01">编辑</span>
					<span class="btn btn-gray delete" data-type="01">删除</span>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-6">
					<input type="text" class="form-control" value="客厅">
					<span class="help-block"></span>
				</div>
				<div class="col-sm-4">
					<a class="btn btn-info" href="index.html?shelf=02">查看图书</a>
					<span class="btn btn-turquoise edit" data-type="02">编辑</span>
					<span class="btn btn-gray delete" data-type="02">删除</span>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-6">
					<input type="text" class="form-control" value="卧室">
					<span class="help-block"></span>
				</div>
				<div class="col-sm-4">
					<a class="btn btn-info" href="index.html?shelf=03">查看图书</a>
					<span class="btn btn-turquoise edit" data-type="03">编辑</span>
					<span class="btn btn-gray delete" data-type="03">删除</span>
				</div>
			</div>
	</form>
					<form role="form" class="form-horizontal addshelf-box mt20">
						<span class="btn-addshelf">+ 添加书架</span>
						<div class="form-group mt20" id="addShelf">
						</div>
					</form>
				</div>
			</div>
					
					
				</div>
			</div>
				<div class="txt-center">
					<a href="index.html" class="ml15 btn btn btn-info">返回首页</a>
					<a class="btn btn-blue" id="btnsubmit">提交</a>
				</div>
			</div>
			</div>
		</div>

		<script id="shelfTemplate" type="text/x-handlebars-template">
		{{#each data}}
			<div class="form-group">
				<div class="col-sm-6">
					<input type="text" class="form-control" value="{{shelfName}}">
					<span class="help-block"></span>
				</div>
				<div class="col-sm-4">
					<a class="btn btn-info" href="index.html?shelf={{shelfType}}">查看图书</a>
					<span class="btn btn-turquoise edit" data-type="{{shelfType}}">编辑</span>
					<span class="btn btn-gray delete" data-type="{{shelfType}}">删除</span>
				</div>
			</div>
		{{/each}}
	</script>
	<script id="addTemplate" type="text/x-handlebars-template">
		<div class="col-sm-6">
			<input type="text" class="form-control" value="" placeholder="请输入书架名">
			<span class="help-block"></span>
		</div>
		<div class="col-sm-4">
			<span class="btn btn-info btnadd">添加</span>
		</div>
	</script>
	<script src="../static/asset/js/jquery-1.11.1.min.js"></script>
	<script src="../static/asset/js/handlebars.min.js"></script>
	<script src="../static/asset/js/resizeable.js"></script>
	<script src="../static/asset/js/joinable.js"></script>
	<script src="../static/asset/js/select2/select2.min.js"></script>
	<script src="../static/asset/js/jquery-ui/jquery-ui.min.js"></script>
	<script src="../static/asset/js/selectboxit/jquery.selectBoxIt.min.js"></script>
	<script src="../static/asset/js/multiselect/js/jquery.multi-select.js"></script>
	<script src="../static/asset/js/xenon-custom.js"></script>
	<script src="../static/js/common.js"></script>
	<script>
		$(document).ready(function ($) {
			var shelfTemplate = Handlebars.compile($("#shelfTemplate").html());
			$('.btn-addshelf').on('click', function () {
				var addTemplate = Handlebars.compile($("#addTemplate").html());
				$('#addShelf').html(addTemplate());
			});
			// 新增书架
			$('#addShelf').on('click', '.btnadd', function () {
				var shelfNm = $(this).find('input').val();
				/* 联调时从这里注释*/
				var resp = {
					"code": 1,
		            "msg": "查询成功",
		            "data": {
		            	"shelfType": "04",
		                "shelfName": "阳台"
		            }
				};
				$('#shelfInfo').append(shelfTemplate({
					data:[{
		            	"shelfType": resp.data.shelfType,
		                "shelfName": resp.data.shelfName
		            }]
				}));
				$('#addShelf').html('');
				return false;
				/* 联调时注释到这截止*/
				$.ajax({
		            url: '/book/bookShelfList', // 待修改
		            method: 'post',
		            data: {
		            	shelfNm: shelfNm
		            },
		            dataType: 'json',
		            success: function (resp) {
		                if (+resp.code === 1) {
		                    $('#shelfInfo').append(shelfTemplate({
								data:[{
					            	"shelfType": resp.data.shelfType,
					                "shelfName": resp.data.shelfName
					            }]
							}));
							$('#addShelf').html('');
		                }
		                else {
		                	alert(resp.msg)
		                }
		            }
		        });
			});
			// 删除书架
			$('#shelfInfo').on('click', '.delete', function (e) {
				var $this = $(e.target);
				var shelfType = $this.data('type');
				$this.parents('.form-group').remove(); // 联调时注释这一行
				$.ajax({
		            url: '/book/bookShelfList', // 待修改
		            method: 'post',
		            data: {
		            	shelfType: shelfType
		            },
		            dataType: 'json',
		            success: function (resp) {
		                if (+resp.code === 1) {
		                    $this.parents('.form-group').remove();
		                }
		                else {
		                	alert(resp.msg);
		                }
		            }
		        });
			});
			// 编辑书架
			$('#shelfInfo').on('click', '.edit', function (e) {
				var $this = $(e.target);
				var shelfType = $this.data('type');
				var shelfName = $this.parents('.form-group').find('input').val();
				$.ajax({
		            url: '/book/bookShelfList', // 待修改
		            method: 'post',
		            data: {
		            	shelfName: shelfName,
		            	shelfType: shelfType
		            },
		            dataType: 'json',
		            success: function (resp) {
		                if (+resp.code === 1) {
		                    alert('编辑成功');
		                }
		                else {
		                	alert(resp.msg);
		                }
		            }
		        });
			});
			// 获取书架
			function getShelf(defaultOption) {
		        var resp = {
		            "code": 1,
		            "msg": "查询成功",
		            "data": [
		                {
		                    "shelfType": "01",
		                    "shelfName": "书房"
		                },
		                {
		                    "shelfType": "02",
		                    "shelfName": "客厅"
		                },
		                {
		                    "shelfType": "03",
		                    "shelfName": "卧室"
		                }
		            ]
		        };
				$('#shelfInfo').html(shelfTemplate(resp));
		        return false;
		        
		        $.ajax({
		            url: '/book/bookShelfList',
		            method: 'get',
		            dataType: 'json',
		            success: function (resp) {
		                if (+resp.code === 1) {
							$('#shelfInfo').html(shelfTemplate(resp));
		                }
		            }
		        });
		    }
		    getShelf();
		});
	</script>
	</body>

</html>