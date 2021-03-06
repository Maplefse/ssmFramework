<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>控制台</title>
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
	<link rel="stylesheet" href="../static/css/style.css">

	<script src="../static/asset/js/jquery-1.11.1.min.js"></script>
	<script src="../static/asset/js/handlebars.min.js"></script>
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
				<div class="panel panel-default">
				<div class="panel highlights list-unstyled" id="detail">
				</div>
			</div>	
			<div class="txt-center">
				<a  class="ml15 btn btn btn-info">编辑</a>
				<a  class="ml15 btn btn btn-info">开始阅读</a>
				<a href="index.html" class="ml15 btn btn btn-info">返回首页</a>
				
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
		
		<script id="detailTemplate" type="text/x-handlebars-template">
		<div class="row">
			<div class="entry-img col-sm-4">
				<img src="{{image}}" />
			</div>
			<div class="entry-description col-sm-8">
				<h3>{{bookTitle}}</h3>
				<p>{{tags}}</p>
				<p>{{author}} 著；</p>
				<p>{{translator}} 译；</p>
				<p>编号：{{bookId}}；<span class="ml15"></span> ISBN：{{isbn}}；</p>
				<p>出版社： {{press}} <span class="ml15"></span>出版时间：{{pubDate}}；</p>
				<p>豆瓣评分：{{rating}}；</p>
				<p>页数：{{pages}}；</p>
				<p>售价：￥{{price}}</p>
				<p>书架：{{shelfNm}}</p>
			</div>
			<div class="col-sm-12 mt20 ">
				<h2 class="panel-heading ">作者简介：</h2>
				<p class="panel-body">{{authorIntro}}</p>
				<div class="mt20"></div>
				<h2 class="mt20 panel-heading">内容简介：</h2>
				<p class="panel-body">{{summary}}</p>
			</div>
		</div>
	</script>
	<script src="../static/asset/js/resizeable.js"></script>
	<script src="../static/asset/js/joinable.js"></script>

	<script src="../static/asset/js/select2/select2.min.js"></script>
	<script src="../static/asset/js/jquery-ui/jquery-ui.min.js"></script>
	<script src="../static/asset/js/selectboxit/jquery.selectBoxIt.min.js"></script>
	<script src="../static/asset/js/multiselect/js/jquery.multi-select.js"></script>

	<script src="../static/asset/js/xenon-custom.js"></script>
	<script>
		$(document).ready(function ($) {
			// var resp = {
			//     "code": 1,
			//     "msg": "查询成功",
			//     "data": {
			//         "summary": "\r\n\r\n《必然》的作者凯文·凯利，被称为“硅谷精神之父”和“世界互联网教父”。前两部《失控》和《科技想要什么》在中国出版后，引起巨大反响。书中凯文·凯利对十二种必然的科技力量加以详细的阐述，并描绘出未来三十年这些趋势如何形成合力指引我们前行的方向。\r\n\r\n作者凯文·凯利基于过往从业经历和对未来趋势的敏锐观察对十二个关键词“形成”“知化”“流动”“屏读”“使用”“共享”“过滤”“重混”“互动”“追踪”“提问”“开始”一进行了深入浅出的论断，并结合现实生活中种种生动的案例，给我们指明了科技新物种不断变迁的12条道路。它们每一个都是一种正在发生的趋势。同时，生活中的种种迹象也表明这些趋势将持续至少三十年。\r\n\r\n书中对未来的展望趣味十足，充满画面感，比如书中说道“未来，你的薪水高低将取决于你能否和机器人默契配合。90%的同事将会是看不到的机器，而没有它们，你的大部分工作将无法完成。”今天我们对未来充满无限期待，用天马行空的想象力描述它，但真正伟大的东西远远超出我们的想象。未来令人是难以置信的，但是，我们须相信那些不可能之事，我们尚处在开始的开始。在不远的将来，我们会向哪些方向前行，必然而然。\r\n\r\n——亚马逊编辑简单的华丽\r\n\r\n《必然》不是一本科技著作，也不单纯是一本思想著作，而是一个人倾尽心力为未来30年人类命运做的一次掐算。读过《失控》的人都知道，凯文·凯利说对了此前的30年。\r\n\r\n你愿意相信他所猜想的后30年吗？\r\n\r\n你的创业创新在不在未来的风口上？\r\n\r\n你的职业规划在不在未来的潮流中？\r\n\r\n你的行动会不会得到那个“新物种”的认可？\r\n\r\n吹一句牛——率先看到这本书的读者，就是比其他人领先完成一次思想升级。",
			//         "image": "https://img1.doubanio.com/lpic/s29402699.jpg",
			//         "isEbook": "00",
			//         "author": "[美] 凯文·凯利",
			//         "catalog": "第1章形成\r\n第2章知化\r\n第3章流动\r\n第4章屏读\r\n第5章使用\r\n第6章共享\r\n第7章过滤\r\n第8章重混\r\n第9章互动\r\n第10章追踪\r\n第11章提问\r\n第12章开始",
			//         "isbn": "9787121272394",
			//         "translator": "周峰 / 董理 / 金阳",
			//         "authorIntro": "凯文·凯利 (Kevin Kelly)（1952~），《全球概览》（乔布斯最喜欢的杂志）的编辑和出版人，之后担任《连线》杂志主编，并在《纽约时报》、《经济学人》、《时代》、《科学》等重量级杂志发表多篇科技文章，为全球科技迷们狂热追随。凯文·凯利 (Kevin Kelly)已出版多部畅销书，其中《失控》、《科技想要什么》、《新经济新规则》在中国的科技爱好者中掀起热潮，作者数次被邀请来华，均引起轰动。",
			//         "rating": "8.5",
			//         "binding": "平装",
			//         "pubDate": "2016-1-1",
			//         "bookId": "1",
			//         "originTitle": "The Inevitable",
			//         "tags": " 未来   互联网   凯文凯利   趋势   人工智能 ",
			//         "shelfNm": "书房",
			//         "pages": "356",
			//         "price": "58",
			//         "press": "译言·东西文库／电子工业出版社",
			//         "bookTitle": "必然"
			//     }
			// };
			// var detailTemplate = Handlebars.compile($("#detailTemplate").html());
			// $('#detail').html(detailTemplate(resp.data));
			// return false;
			$.ajax({
		        url: '/book/bookDetailData',
		        method: 'get',
		        data: {
		        	bookId: location.search.split('=')[1]
		        },
		        dataType: 'json',
		        success: function (resp) {
		            if (+resp.code === 1) {
						var detailTemplate = Handlebars.compile($("#detailTemplate").html());
						$('#detail').html(detailTemplate(resp.data));
		            }
		        }
		    });
		});
	</script>
	</body>

</html>