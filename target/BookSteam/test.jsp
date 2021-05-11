<%--
  Created by IntelliJ IDEA.
  User: 13717
  Date: 2021/3/30
  Time: 23:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
${}
</body>
<script type="text/javascript" src="Js/jquery-1.7.2.min.js"></script>
<%--<script type="text/javascript">
    var PATH = "${pageContext.request.contextPath}";
    alert(PATH)
    var websocket = null;
    // 连接websocket
    if (window['WebSocket']) {
        alert("创建链接");
        websocket = new WebSocket("ws://" + window.location.host + PATH + '/websocket');
    }else {
        websocket = new new SockJS(PATH + '/websocket/socketjs');
    }
    websocket.onopen = function(event) {
        console.log('open', event);
    };
    websocket.onmessage = function(event) {
        console.log('message', event.data);
        $('div[message] > ul').append('<li>' + event.data + '</li>');
    };
</script>--%>
</html>
