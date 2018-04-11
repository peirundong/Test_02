<%@ page import="org.apache.ibatis.annotations.Param" %>
<%@ page import="java.lang.reflect.Parameter" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <script type="text/javascript">

    </script>
    <style type="text/css">
        body {
            padding: 0;
            margin: 0;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="Pagination">
    <div class="Pagination myself">
        <c:if test="${param.currentPageNo > 1}">
            <a href="javascript:page_nav(document.forms[0],1);" title="0">首页</a>
            <a href="javascript:page_nav(document.forms[0],${param.currentPageNo-1});">上一页 </a>
        </c:if>
        <%
            //总数局16条
            //每页5个
            int totalPageCount = (int)session.getAttribute("totalPageCount");
            for (int i = 1; i <= totalPageCount; i++) {
        %>
            <a href="javascript:page_nav(document.forms[0],<%=i%>);">
                <%=i%>
            </a>
        <%
            }
        %>
        <c:if test="${param.currentPageNo < param.totalPageCount }">
            <a href="javascript:page_nav(document.forms[0],${param.currentPageNo+1});">下一页 </a>
            <a href="javascript:page_nav(document.forms[0],${param.totalPageCount });">尾页</a>
        </c:if>
    </div>
</div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/rollpage.js"></script>
</html>