<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta content="always" name="referrer" />
    <link href="http://www.lagou.com/images/favicon.ico" rel="Shortcut Icon">
    <link href="../../statics/css/style.css" type="text/css" rel="stylesheet">
    <link href="../../statics/css/external.min.css" type="text/css" rel="stylesheet">
    <link href="../../statics/css/popup.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="../../statics/js/jquery.1.10.1.min.js"></script>
    <script src="../../statics/js/jquery.lib.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="../../statics/js/ajaxfileupload.js"></script>
    <script src="../../statics/js/additional-methods.js" type="text/javascript"></script>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/statics/css/css2.css" />
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/statics/css/css1.css" />
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/statics/css/btncss.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/jquery-1.9.1.min.js"></script>
    <title>收藏</title>
    <style>
        *{
            padding: 0;
            margin: 0;
        }

    </style>

    </head>
<body>
<div id="container">

    <div class="sidebar">
        <a class="btn_create" href="/sys/jianli.html">个人中心</a>
        <dl class="company_center_aside">
            <dt><a href="/sys/jianliliebiao.html">我的简历</a></dt>

        </dl>
        <dl class="company_center_aside">
            <dt><a href="/sys/collections.html">我的收藏</a></dt></dt>
        </dl>
        <dl class="company_center_aside">
            <dt><a href="/sys/yitongjianliliebiao.html">已投简历</a></dt>
        </dl>
        <dl class="company_center_aside">
            <dt><a href="">个人信息</a></dt>
        </dl>
        <div class="subscribe_side mt20">
            <div class="f14">想收到更多更好的简历？</div>
            <div class="f18 mb10">就用拉勾招聘加速助手 </div>
            <div>咨询：<a class="f16" href="mailto:jessica@lagou.com">jessica@lagou.com</a></div>
            <div class="f18 ti2em">010-57286512</div>
        </div>
        <div class="subscribe_side mt20">
            <div class="f14">加入互联网HR交流群</div>
            <div class="f18 mb10">跟同行聊聊</div>
            <div class="f24">338167634</div>
        </div>            </div><!-- end .sidebar -->
    <div class="content">
        <div class="main">
    <form action="Add" method="post" name="frmMain" enctype="multipart/form-data">
        <div class="main03">
            <div class="main03_Pad">
                <h1>收藏</h1>
                <ul class="mainForm"style="padding-left: 200px">

                    <li class="msg">
                        <span><font>* </font>公司名称</span><div class="wid350">
                    </div>
                        <span class="">dsds</span>
                    </li>
                    <li class="msg">
                        <span><font>* </font>公司账号</span><div class="wid350">
                    </div>
                        <span class="">dsds</span>
                    </li>
                    <li class="msg">
                        <span><font>* </font>公司电话</span><div class="wid350">
                    </div>
                        <span class="">dsds</span>
                    </li>

                    <li class="msg">
                        <span><font>* </font>公司邮箱</span><div class="wid350">
                    </div>
                        <span class="">dsds</span>
                    </li>
                    <li class="msg">
                        <span><font>* </font>公司地址</span><div class="wid350">
                    </div>
                        <span class="">dsds</span>
                    </li>
                    <li class="msg">
                        <span><font>* </font>创建时间</span><div class="wid350">

                    </div>
                        <span class="">dsadasd</span>
                    </li>
                    <li class="msg">
                        <span><font>* </font>公司详情</span><div class="wid350">

                    </div>
                        <span class="">sdsd</span>
                    </li>

                    <li style="height: 100px"></li>
                    <li style="padding-left: 140px">
                        <button class="button  button-primary  button-rounded" type="submit">投简历</button>
                        <button class="button button-rounded">返回</button>
                    </li>
                    <li style="height: 140px"></li>
                </ul>

            </div>
        </div>
    </form>
</div>
    </div>
</div>

<%@include file="common/footer.jsp"%>
</body>
</html>