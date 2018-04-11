<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@include file="common/companyheader.jsp"%>
    <%@include file="common/companyleft.jsp"%>
        <div class="content">
            <dl class="company_center_content">
                <dt>
                <h1>
                    <em></em>
                    购买简历
                </h1>
                </dt>
                <dd>
                    <form action="${pageContext.request.contextPath }/sys/search" method="get" id="filterForm">
                        <div class="filter_actions" style="height: 24px">
                            <label class="checkbox">
                                <input type="checkbox">
                                <i></i>
                            </label>
                            <span>全选</span>
                            <%--<a id="resumeRefuseAll" href="javascript:;">不合适</a>--%>
                            <div id="filter_btn" class="">筛选简历 <em class=""></em></div>
                        </div><!-- end .filter_actions -->
                        <div class="filter_options  dn " style="display: none;" >
                            <dl>
                                <dt>工作经验：</dt>
                                <dd>
                                    <a rel="" class="current" href="javascript:;">不限</a>
                                    <a rel="1" href="javascript:;">应届毕业生</a>
                                    <a rel="2" href="javascript:;">1-3年</a>
                                    <a rel="3" href="javascript:;">3-5年</a>
                                    <a rel="4" href="javascript:;">5-10年</a>
                                    <a rel="5" href="javascript:;">10年以上</a>
                                    <input type="hidden" value="" name="workexperience">
                                </dd>
                            </dl>
                            <dl>
                                <dt>最低学历：</dt>
                                <dd>
                                    <a rel="0" class="current" href="javascript:;">不限</a>
                                    <a rel="1" href="javascript:;">小学</a>
                                    <a rel="2" href="javascript:;">大专</a>
                                    <a rel="3" href="javascript:;">本科</a>
                                    <a rel="4" href="javascript:;">硕士</a>
                                    <a rel="5" href="javascript:;">博士</a>
                                    <input type="hidden" value="0" name="educationid">
                                </dd>
                            </dl>
                            <%--<input type="hidden" value="0" name="filterStatus" id="filterStatus">--%>
                            <%--<input type="hidden" value="" name="positionId" id="positionId">--%>
                        </div>
                        <ul class="reset resumeLists">
                            <li>
                                <c:forEach var="resume" items="${resumeList }" varStatus="status">
                                    <label class="checkbox">
                                        <input type="checkbox">
                                        <i></i>
                                    </label>
                                    <div class="resumeShow" style="height: 80px ;padding-top: 15px">
                                        <a title="预览在线简历" target="_blank" class="resumeImg"
                                           href="">
                                            <label style="font-size: 23px"> ${resume.resumeid }</label>
                                        </a>
                                        <div class="resumeIntro">
                                            <span class="fr">投递时间：2014-07-01 17:08</span>
                                            <div style=" padding-top: 10px">
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
                                                    <td>
                                                        <c:if test="${resume.workexperience==0}">应届毕业生</c:if>
                                                        <c:if test="${resume.workexperience>0}">${resume.workexperience }年经验</c:if>
                                                    </td>
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
                                            <div class="jdpublisher">
				                            <span>
				                               应聘职位：<a title="随便写" target="_blank"
                                                       href="">${resume.wantedindustry }</a>
				                            </span>
                                            <span>
                                                期望工资：<label style="color: orange" >${resume.wantedpay }</label>
				                            </span>
                                            </div>
                                        </div>
                                        <div class="links">
                                            <a data-deliverid="1686182" data-name="jason" data-positionid="149594"
                                               data-email="888888888@qq.com" class="resume_notice"
                                               href="javascript:void(0)">购买</a>
                                            <a data-deliverid="1686182" class="resume_refuse"
                                               href="/sys/particulars.html?resumeid=${resume.resumeid}">查看简历</a>
                                        </div>
                                    </div>
                                </c:forEach>
                            </li>
                        </ul><!-- end .resumeLists -->
                    </form>
                </dd>
            </dl><!-- end .company_center_content -->
        </div><!-- end .content -->
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

<!--  -->

<script type="text/javascript">
    $(function () {
        $('#noticeDot-1').hide();
        $('#noticeTip a.closeNT').click(function () {
            $(this).parent().hide();
        });
    });
    var index = Math.floor(Math.random() * 2);
    var ipArray = new Array('42.62.79.226', '42.62.79.227');
    var url = "ws://" + ipArray[index] + ":18080/wsServlet?code=314873";
    var CallCenter = {
        init: function (url) {
            var _websocket = new WebSocket(url);
            _websocket.onopen = function (evt) {
                console.log("Connected to WebSocket server.");
            };
            _websocket.onclose = function (evt) {
                console.log("Disconnected");
            };
            _websocket.onmessage = function (evt) {
                //alert(evt.data);
                var notice = jQuery.parseJSON(evt.data);
                if (notice.status[0] == 0) {
                    $('#noticeDot-0').hide();
                    $('#noticeTip').hide();
                    $('#noticeNo').text('').show().parent('a').attr('href', ctx + '/mycenter/delivery.html');
                    $('#noticeNoPage').text('').show().parent('a').attr('href', ctx + '/mycenter/delivery.html');
                } else {
                    $('#noticeDot-0').show();
                    $('#noticeTip strong').text(notice.status[0]);
                    $('#noticeTip').show();
                    $('#noticeNo').text('(' + notice.status[0] + ')').show().parent('a').attr('href', ctx + '/mycenter/delivery.html');
                    $('#noticeNoPage').text(' (' + notice.status[0] + ')').show().parent('a').attr('href', ctx + '/mycenter/delivery.html');
                }
                $('#noticeDot-1').hide();
            };
            _websocket.onerror = function (evt) {
                console.log('Error occured: ' + evt);
            };
        }
    };
    CallCenter.init(url);
</script>

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
<%@include file="common/footer.jsp"%>
</body>
</html>