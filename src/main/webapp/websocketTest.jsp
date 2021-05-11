<%--
  Created by IntelliJ IDEA.
  User: 13717
  Date: 2021/3/30
  Time: 9:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>IoT日志监控</title>
</head>
<body>
<form action="message/send" method="post">
    <table>
        <tr>
            <td align="right">用户名:</td>
            <td><input name="username" type="text" style="width: 300px;"></td>
        </tr>
        <tr>
            <td align="right">内容:</td>
            <td><textarea name="message" style="width: 300px;"></textarea></td>
        </tr>
        <tr>
            <td colspan="2" align="center" ><input type="submit" /></td>
        </tr>
    </table>
</form>
</body>
<!--
websocket允许通过JavaScript建立与远程服务器的连接，从而实现客户端与服务器间双向的通信。在websocket中有两个方法：
       1、send() 向远程服务器发送数据
　　　　2、close() 关闭该websocket链接
-->

</html>

