<%--
  Created by IntelliJ IDEA.
  User: 10892
  Date: 17.12.3
  Time: 12:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
        * {
            padding: 0;
            margin: 0;
            text-decoration: none;
        }
        .tip{
            position: absolute;
            right: 15%;
            top:4%;
        }
    </style>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/js/font-awesome-4.7.0/css/font-awesome.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/js/bootstrap/3.3.5/css/bootstrap.css">
    <script src="${pageContext.request.contextPath}/statics/js/bootstrap/3.3.5/js/bootstrap.js"></script>
</head>
<body>
<div id="header2" style="width: 100%;height: 100px;border: 1px solid red;">
    <div style="margin-top: 1.4%;margin-left: 10%"><img src="${pageContext.request.contextPath}statics/image/logo-o.png" alt="" width="126" height="42">
    </div>
    <div class="tip" style="width: 300px"><div class="input-group">
        <span class="input-group-addon"><i class="fa fa-search" ></i></span>
        <input type="text" class="form-control" style="width: 295px;height: 40px">
        <span class="input-group-addon"><a href="">搜索</a></span>
    </div></div>
</div>
</body>
</html>