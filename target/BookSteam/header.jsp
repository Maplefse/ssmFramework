<%--
  Created by IntelliJ IDEA.
  User: 13717
  Date: 2021/3/31
  Time: 9:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<div class="topbar-console">
    <div class="tobar-head fl">
        <a href="#" class="topbar-logo fl">
            <span><img src="Images/logo.png" width="20" height="20"/></span>
        </a>
        <a href="index.html" class="topbar-home-link topbar-btn text-center fl"><span>管理控制台</span></a>
    </div>
</div>
<div class="topbar-info">
    <ul class="fr">
        <li class="fl dropdown topbar-notice topbar-btn">
            <a href="${pageContext.request.contextPath}/SubscribeTest?pass=-1" class="dropdown-toggle">
                <span class="icon-notice"></span>
                <span class="topbar-num have" name="pageMsgNum" id="pageMsgNum">0</span>
                <!--have表示有消息，没有消息去掉have-->
            </a>
        </li>
        <!-- 					<li class="fl topbar-info-item strong">
        <div class="dropdown">
            <a href="#" class="dropdown-toggle topbar-btn">
            <span class="fl">工单服务</span>
            <span class="icon-arrow-down"></span>
            </a>
            <ul class="dropdown-menu">
                <li><a href="#">我的工单</a></li>
                <li><a href="#">提交工单</a></li>
            </ul>
        </div>
        </li>
         -->
        <li class="fl topbar-info-item">
            <div class="dropdown">
                <a href="#" class="topbar-btn">
                    <span class="fl text-normal">帮助与文档</span>
                    <span class="icon-arrow-down"></span>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="#">模板开发手册</a></li>
                    <li><a href="#">某某数据字典</a></li>
                </ul>
            </div>
        </li>
        <li class="fl topbar-info-item">
            <div class="dropdown">
                <a href="#" class="topbar-btn">
                    <span class="fl text-normal">小朱</span>
                    <span class="icon-arrow-down"></span>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="login.jsp">退出</a></li>
                </ul>
            </div>
        </li>
    </ul>
</div>

<script>
    $(function(){
        getMsgNum();
    });
    /*function getMsgNum(){

        $.ajax({
            url:'hintb',
            type:'post',
            dataType:'json',
            data:"pageMsgNum=" + $("#pageMsgNum").text(),
            timeout:30000,
            success:function(data, textStatus){

                if(data && data.msgNum){
                    //请求成功，刷新数据
                    $("#pageMsgNum").text(data.msgNum);
                    //这个是用来和后台数据作对比判断是否发生了改变
                }
                if(textStatus == "success"){
                    //成功之后，再发送请求，递归调用
                    getMsgNum();
                }
            },
            error:function(XMLHttpRequest, textStatus, errorThrown){
                if(textStatus == "timeout"){
                    //有效时间内没有响应，请求超时，重新发请求
                    getMsgNum();
                }else{
                    // 其他的错误，如网络错误等
                    getMsgNum();
                }
            }
        });
    }*/

</script>


