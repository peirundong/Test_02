<%@ page import="pojo.HxSeeker" %><%--
  Created by IntelliJ IDEA.
  User: 10892
  Date: 17.12.3
  Time: 21:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html xmlns:wb="http://open.weibo.com/wb">
<head>
    <script type="text/javascript" async="" src="../../statics/js/conversion.js"></script>
    <script src="../../statics/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script>
    <style type="text/css"></style>
    <meta content="no-siteapp" http-equiv="Cache-Control">
    <link media="handheld" rel="alternate">
    <!-- end 云适配 -->
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
    <title>拉勾网-最专业的互联网招聘平台</title>
    <meta content="23635710066417756375" property="qc:admins">
    <meta name="description" content="拉勾网是3W旗下的互联网领域垂直招聘网站">
    <meta name="keywords"
          content="拉勾,拉勾网,拉勾招聘,拉钩, 拉钩网 ,互联网招聘,拉勾互联网招聘, 移动互联网招聘, 垂直互联网招聘, 微信招聘, 微博招聘, 拉勾官网, 拉勾百科,跳槽, 高薪职位, 互联网圈子, IT招聘, 职场招聘, 猎头招聘,O2O招聘, LBS招聘, 社交招聘, 校园招聘, 校招,社会招聘,社招">
    <meta content="QIQ6KC1oZ6" name="baidu-site-verification">

    <!-- <div class="web_root"  style="display:none">http://www.lagou.com</div> -->
    <script type="text/javascript">
        var ctx = "http://www.lagou.com";
        console.log(1);
    </script>
    <link href="http://www.lagou.com/images/favicon.ico" rel="Shortcut Icon">
    <link href="/statics/css/style.css" type="text/css" rel="stylesheet">
    <link href="/statics/css/external.min.css" type="text/css" rel="stylesheet">
    <link href="/statics/css/popup.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="/statics/js/jquery.1.10.1.min.js"></script>
    <script src="/statics/js/jquery.lib.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="/statics/js/ajaxfileupload.js"></script>
    <script src="/statics/js/additional-methods.js" type="text/javascript"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/css1.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/css2.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/btncss.css"/>
    <script src="${pageContext.request.contextPath}/statics/js/jquery-1.9.1.min.js"></script>
    <!--[if lte IE 8]>
    <script type="text/javascript" src="/statics/js/excanvas.js"></script>
    <![endif]-->
    <script type="text/javascript">
        var youdao_conv_id = 271546;
    </script>
    <script src="/statics/js/conv.js" type="text/javascript"></script>
    <script src="/statics/js/ajaxCross.json" charset="UTF-8"></script>
    <style>
        .resumeShow{
            padding: 30px;
            border-top:1px solid #e3e3e3;
        }

    </style>
</head>
<body  style="background: url('/statics/image/bg.png')">
<div id="body">
    <div id="header">
        <div class="wrapper">
            <a class="logo" href="index.html">
                <img width="229" height="43" alt="拉勾招聘-专注互联网招聘" src="/statics/Images/logo.png">
            </a>
            <ul id="navheader" class="reset">
                <li><a href="index.html">首页</a></li>
                <li><a href=""><%
                    HxSeeker hxSeeker=(HxSeeker)(session.getAttribute("hxSeeker"));%>
                    <%=hxSeeker.getSeekername() %>
                </a></li>
                <li class="current"><a rel="nofollow" href="#">应用中心</a></li>
                <li><a href="#">退出</a></li>
                <li></li>
            </ul>
        </div>
    </div><!-- end #header -->
