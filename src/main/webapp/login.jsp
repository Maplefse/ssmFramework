<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <link rel="stylesheet" href="static/asset/css/font-awesome.css">
    <link rel="stylesheet" href="static/asset/css/se7en-font.css">
    <link rel="stylesheet" href="static/asset/css/bootstrap.min.css">
    <link rel="stylesheet" href="static/css/reset.css">
    <link rel="stylesheet" href="static/css/global.css">
    <link rel="stylesheet" href="static/css/login.css">
    <script src="static/asset/js/jquery-1.11.1.min.js"></script>
</head>
<body>
    <div class="login">
        <form>
          <div class="form-group">
            <div class="input-group">
                <span class="input-group-addon">
                    <i class="icon-mobile-phone"></i>
                </span>
                <input class="form-control" placeholder="用户名/手机号" id="username" type="text">
            </div>
            <div class="help-block"></div>
          </div>
          <div class="form-group">
            <div class="input-group">
                <span class="input-group-addon">
                    <i class="icon-lock"></i>
                </span>
                <input class="form-control" placeholder="密码" type="password" id="password">
            </div>
            <div class="help-block"></div>
          </div>
          <a class="pull-right" href="#">忘记密码了？</a>
          <div class="text-left">
            <label class="checkbox"><input type="checkbox"><span>自动登录</span></label>
          </div>
          <div class="help-block" id="fromMsg"></div>
          <input class="btn btn-lg btn-primary btn-block" id="btnLogin" type="submit" value="登录">
        </form>
        <p>
           还没有账户？
        </p>
        <a class="btn btn-default-outline btn-block" href="signup.html">立即注册</a>
    </div>
    <script src="static/js/login.js"></script>
</body>
</html>