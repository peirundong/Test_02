<%--
  Created by IntelliJ IDEA.
  User: 东魏
  Date: 2017/12/1
  Time: 17:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <script id="allmobilize" charset="utf-8" src="../../statics/js/allmobilize.min.js"></script>
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="alternate" media="handheld"  />
    <!-- end 云适配 -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>公司登录-拉勾网-最专业的互联网招聘平台</title>
    <meta property="qc:admins" content="23635710066417756375" />
    <meta content="拉勾网是3W旗下的互联网领域垂直招聘网站,互联网职业机会尽在拉勾网" name="description">
    <meta content="拉勾,拉勾网,拉勾招聘,拉钩, 拉钩网 ,互联网招聘,拉勾互联网招聘, 移动互联网招聘, 垂直互联网招聘, 微信招聘, 微博招聘, 拉勾官网, 拉勾百科,跳槽, 高薪职位, 互联网圈子, IT招聘, 职场招聘, 猎头招聘,O2O招聘, LBS招聘, 社交招聘, 校园招聘, 校招,社会招聘,社招" name="keywords">
    <meta name="baidu-site-verification" content="QIQ6KC1oZ6" />
    <link rel="Shortcut Icon" href="h/images/favicon.ico">
    <link rel="stylesheet" href="../../statics/css/style.css">
    <script src="../../statics/js/jquery.1.10.1.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="../../statics/js/jquery.lib.min.js"></script>
    <script type="text/javascript" src="../../statics/js/core.min.js"></script>
    <script type="text/javascript" src="../../statics/js/conv.js"></script>
    <script type="text/javascript" src="../../statics/js/day.js"></script>
</head>
<body id="login_bg">
<div class="login_wrapper">
    <div class="login_header">
        <a href="/sys/index"><img src="../../statics/Images/logo_white.png" width="285" height="62" alt="拉勾招聘" /></a>
        <div id="cloud_s"><img src="../../statics/Images/cloud_s.png" width="81" height="52" alt="cloud" /></div>
        <div id="cloud_m"><img src="../../statics/Images/cloud_m.png" width="136" height="95" alt="cloud" /></div>
    </div>
    <div class="login_box">
        <form id="loginForm" action="/sys/CompanyDoLogin.html" method="post">
            <p><input type="hidden" id="companysalt" value="9b207beb1e014a93bc852b7ba450db27" />

            <p>
            <label>账号：</label>
            <input type="text" id="companyaccount" class="inputs" name="companyaccount"
                      tabindex="1" placeholder="请输入您的账号" /></p>

            <p>
                <label>密码：</label>
                <input type="password" id="companypwd" class="inputs" name="companypwd"
                      tabindex="2" placeholder="请输入密码"/></p>
            <%--<input type="text" id="addressid" class="inputs" name="addressid" tabindex="2" placeholder="地址id" />--%>
            <%--<input type="text" id="companytypeid" class="inputs" name="companytypeid" tabindex="2" placeholder="公司类型id" />--%>

            <p><label class="registerJianJu" for="checkbox">
                <input type="checkbox" id="checkbox" name="checkbox" checked
                       class="checkbox valid" />我已阅读并同意<a href="h/privacy.html"
                                                          target="_blank">《拉勾用户协议》</a>
            </label></p>
            <input type="submit" id="submitLogin"  value="登 &nbsp; &nbsp; 录" />
            <input type="button" id="submitReturn" onclick="location.href='/sys/CompanyRegister.html'" value="注 &nbsp; &nbsp; 册" />
        </form>
    </div>
    <div class="login_box_btm"></div>
</div>
</body>
</html>