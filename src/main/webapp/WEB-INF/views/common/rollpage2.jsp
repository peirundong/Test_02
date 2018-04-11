<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<body>

<div class="Pagination myself">
<c:if test="${param.currentPageNo > 1}">
	<a href="javascript:page_nav(document.forms[0],1);">首页</a>
	<span href="javascript:page_nav(document.forms[0],${param.currentPageNo-1});">上一页</span>
</c:if>
<c:if test="${param.currentPageNo < param.totalPageCount }">
	<a href="javascript:page_nav(document.forms[0],${param.currentPageNo+1 });">下一页</a>
	<a href="javascript:page_nav(document.forms[0],${param.totalPageCount });">尾页</a>
</c:if>
</div>

</body>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/rollpage.js"></script>
<script type="text/javascript" src="../../statics/js/core.min.js"></script>
<script type="text/javascript" src="../../statics/js/popup.min.js"></script>
</body>
</html>