<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="common/seekerhader.jsp" %>
<%@include file="common/seekerleft.jsp" %>
<div class="content">
    <dl class="company_center_content">
        <dt>
        <h1>
            <em></em>
            我的简历
        </h1>
        </dt>
        <dd>
            <ul class="reset resumeLists">
                <li>
                    <c:forEach var="resume" items="${resumeList }" varStatus="status">
                        <form method="get" action="${pageContext.request.contextPath }/sys/Resume/MyResume.html">
                            <input type="hidden" name="pageIndex" value="1"/>
                        <div class="resumeShow" style="height: 80px ;padding-top: 15px">
                            <a title="预览在线简历" target="_blank" class="resumeImg"
                               href="">
                                <label style="font-size: 23px"> ${resume.resumeid }</label>
                            </a>
                            <div class="resumeIntro">
                                <span class="fr">投递时间：${resume.delivery_time }</span>
                                <div style=" padding-top: 10px ;text-align: left">
                                    <tr>
                                        <td>
                                            <c:if test="${resume.sexid==0}">男</c:if>
                                            <c:if test="${resume.sexid==1}">女</c:if>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>|</td>
                                        <td>
                                                ${resume.age }岁
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>|</td>
                                        <td>${resume.workexperience }经验</td>
                                    </tr>
                                    <tr>
                                        <td>|</td>
                                        <td>
                                            <c:if test="${resume.educationid==0}">小学</c:if>
                                            <c:if test="${resume.educationid==1}">高中/中专</c:if>
                                            <c:if test="${resume.educationid==2}">本科</c:if>
                                            <c:if test="${resume.educationid==3}">研究生</c:if>
                                            <c:if test="${resume.educationid==4}">硕士</c:if>
                                            <c:if test="${resume.educationid==5}">博士</c:if>
                                        </td>
                                    </tr>
                                </div>
                                <div class="jdpublisher" style="text-align: left">
				                            <span>
				                               应聘职位：<a title="随便写" target="_blank"
                                                       href="">${resume.wantedindustry }</a>
				                            </span>
                                    <span>
                                                期望工资：<label style="color: orange">${resume.wantedpay }</label>
				                            </span>
                                </div>
                            </div>
                            <div class="links">
                                <a class="deResume" onclick="deleteResume(${resume.resumeid })">删除
                                </a>
                            </div>
                        </div>
                        </form>
                    </c:forEach>
                </li>
            </ul><!-- end .resumeLists -->

            <c:import url="common/rollpage.jsp">
            <c:param name="totalCount" value="${totalCount}"/>
            <c:param name="currentPageNo" value="${currentPageNo}"/>
            <c:param name="totalPageCount" value="${totalPageCount}"/>
            </c:import>
            <input hidden name="totalPageCount" value="${totalPageCount}">

        </dd>
    </dl><!-- end .company_center_content -->
</div>
<!-- end .content -->
<!------------------------------------- end ----------------------------------------->
<script src="/statics/js/jquery.ui.datetimepicker.min.js" type="text/javascript"></script>
<script src="/statics/js/received_resumes.min.js" type="text/javascript"></script>
<script>
</script>
<div class="clear"></div>
<input type="hidden" value="b4bc225f0d084ee5b8d045f9c98a49ff" id="resubmitToken">
<a rel="nofollow" title="回到顶部" id="backtop"></a>
</div><!-- end #container -->
</div><!-- end #body -->

<script src="/statics/js/core.min.js" type="text/javascript"></script>
<script src="/statics/js/popup.min.js" type="text/javascript"></script>

<div id="cboxOverlay" style="display: none;"></div>
<div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;">
    <div id="cboxWrapper">
        <div>
            <div id="cboxTopLeft" style="float: left;"></div>
            <div id="cboxTopCenter" style="float: left;"></div>
            <div id="cboxTopRight" style="float: left;"></div>
        </div>
        <div style="clear: left;">
            <div id="cboxMiddleLeft" style="float: left;"></div>
            <div id="cboxContent" style="float: left;">
                <div id="cboxTitle" style="float: left;"></div>
                <div id="cboxCurrent" style="float: left;"></div>
                <button type="button" id="cboxPrevious"></button>
                <button type="button" id="cboxNext"></button>
                <button id="cboxSlideshow"></button>
                <div id="cboxLoadingOverlay" style="float: left;"></div>
                <div id="cboxLoadingGraphic" style="float: left;"></div>
            </div>
            <div id="cboxMiddleRight" style="float: left;"></div>
        </div>
        <div style="clear: left;">
            <div id="cboxBottomLeft" style="float: left;"></div>
            <div id="cboxBottomCenter" style="float: left;"></div>
            <div id="cboxBottomRight" style="float: left;"></div>
        </div>
    </div>
    <div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div>
</div>
<div class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all" id="ui-datepicker-div"></div>
<%@include file="common/footer.jsp" %>
<script src="${pageContext.request.contextPath }/statics/ResumeJs/resumeList.js"></script>
</body>
</html>