<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="common/companyheader.jsp"%>
<%@include file="common/companyleft.jsp" %>
<div class="content">
    <dl class="company_center_content">
        <dt>
        <h1>
            <em></em>
            未通过审核<span>（共1份）</span>
        </h1>
        </dt>
        <dd style="text-align: left">
            <form action="${pageContext.request.contextPath}/sys/recruitmentNoPass.html" method="get">
                <input type="hidden" name="pageIndex" value="1">
                <div class="filter_actions ">
                    <label class="checkbox">
                        <input type="checkbox">
                        <i></i>
                    </label>
                    <span>全选</span>
                    <a id="resumeDelAll" href="javascript:;">删除</a>
                </div><!-- end .filter_actions -->
                <ul class="reset resumeLists">
                    <c:forEach var="HxCompanyRecruit" items="${resumeFailList }"  varStatus="status">
                        <li data-id="1686182" class="onlineResume">
                            <label class="checkbox">
                                <input type="checkbox">
                                <i></i>
                            </label>
                            <div class="resumeShow">
                                <div class="resumeIntro">
                                    <h3 class="unread">
                                        <a target="_blank" title="预览jason的简历"
                                           href="resumeView.html?deliverId=1686182">
                                                ${HxCompanyRecruit.position}
                                        </a>
                                        <em></em>
                                    </h3>
                                    <span class="fr">发布时间：${HxCompanyRecruit.publishtime}</span>
                                    <div>
                                        职位需求:${HxCompanyRecruit.positiondesc}<br>
                                        学历要求:<c:if test="${HxCompanyRecruit.educationid==0}">小学及以下</c:if>
                                        <c:if test="${HxCompanyRecruit.educationid==1}">高中/中专</c:if>
                                        <c:if test="${HxCompanyRecruit.educationid==2}">大学本科</c:if>
                                        <c:if test="${HxCompanyRecruit.educationid==3}">研究生</c:if>
                                        <c:if test="${HxCompanyRecruit.educationid==4}">硕士</c:if>
                                        <c:if test="${HxCompanyRecruit.educationid==5}">博士</c:if>
                                        <c:if test="${HxCompanyRecruit.educationid==6}">博士后</c:if>
                                        <br>
                                        薪资:${HxCompanyRecruit.salaryMin}--${HxCompanyRecruit.salaryMax}<br>
                                        需求人数: ${HxCompanyRecruit.needs}<br>
                                    </div>
                                    <div class="jdpublisher">
				                                        <span>
				                                        	截止时间：<a title="随便写" target="_blank"
                                                                    href="http://www.lagou.com/jobs/149594.html">${HxCompanyRecruit.endtime}</a>
				                                       						                                        </span>
                                    </div>
                                </div>
                                <div class="links">
                                    <a data-resumename="jason的简历" data-positionname="随便写" data-deliverid="1686182"
                                       data-positionid="149594" data-resumekey="1ccca806e13637f7b1a4560f80f08057"
                                       data-forwardcount="1" class="resume_forward" href="javascript:void(0)">
                                        转发
                                        <span>(1人)</span>
                                    </a>
                                    <a class="resume_del" href="/sys/delAFailedJobById.html?recruitid=${HxCompanyRecruit.recruitid}">删除</a>
                                </div>
                            </div>
                        </li>
                    </c:forEach>
                </ul><!-- end .resumeLists -->
                <c:import url="common/rollpage.jsp">
                    <c:param name="totalCount" value="${totalCount}"/>
                    <c:param name="currentPageNo" value="${currentPageNo}"/>
                    <c:param name="totalPageCount" value="${totalPageCount}"/>
                </c:import>
            </form>
        </dd>
    </dl><!-- end .company_center_content -->
</div><!-- end .content -->

<!------------------------------------- 弹窗lightbox ----------------------------------------->
<div style="display:none;">
    <!--通知面试弹窗-->
    <div style="overflow:auto;" class="popup" id="noticeInterview">
        <form id="noticeInterviewForm">
            <table width="100%" class="f16">
                <tbody>
                <tr>
                    <td width="20%" align="right" class="c9">收件人</td>
                    <td width="80%">
                        <span class="c9" id="receiveEmail"></span>
                        <input type="hidden" value="" name="email">
                    </td>
                </tr>
                <tr>
                    <td align="right"><span class="redstar">*</span>主题</td>
                    <td>
                        <input type="text" placeholder="公司：职位名称面试通知" name="subject">
                    </td>
                </tr>
                <tr>
                    <td align="right"><span class="redstar">*</span>面试时间</td>
                    <td>
                        <input type="text" id="datetimepicker" name="interTime" class="hasDatepicker">
                    </td>
                </tr>
                <tr>
                    <td align="right"><span class="redstar">*</span>面试地点</td>
                    <td>
                        <input type="text" name="interAdd">
                    </td>
                </tr>
                <tr>
                    <td align="right">联系人</td>
                    <td>
                        <input type="text" name="linkMan">
                    </td>
                </tr>
                <tr>
                    <td align="right"><span class="redstar">*</span>联系电话</td>
                    <td>
                        <input type="text" name="linkPhone">
                    </td>
                </tr>
                <tr>
                    <td valign="top" align="right">补充内容</td>
                    <td>
                        <textarea name="content"></textarea>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="发送" class="btn">
                        <a class="emailPreview" href="javascript:;">预览</a>
                    </td>
                </tr>
                </tbody>
            </table>
            <input type="hidden" value="" name="name">
            <input type="hidden" value="" name="positionName">
            <input type="hidden" value="" name="companyName">
            <input type="hidden" value="" name="deliverId">
        </form>
    </div><!--/#noticeInterview-->

    <!--预览通知面试弹窗-->
    <div class="popup" id="noticeInterviewPreview">
        <div class="f18">拉勾网：产品经理面试通知</div>
        <div class="c9">发给：<span>vivi@lagou.com</span></div>
        <div id="emailText"></div>
        <input type="button" value="提交" class="btn fl">
        <a title="通知面试" class="inline fl cboxElement" href="#noticeInterview">返回修改</a>
    </div><!--/#noticeInterviewPreview-->

    <!--通知面试成功弹窗-->
    <div class="popup" id="noticeInterviewSuccess">
        <table width="100%" class="f16">
            <tbody>
            <tr>
                <td align="center" class="f16">
                    面试通知已发送成功<br>
                    该简历已进入“已通知面试简历”列表
                </td>
            </tr>
            <tr>
                <td align="center">
                    <input type="button" value="确认" class="btn">
                </td>
            </tr>
            </tbody>
        </table>
    </div><!--/#noticeInterviewSuccess-->

    <!--转发简历弹窗-->
    <div class="popup" id="forwardResume">
        <form id="forwardResumeForm">
            <table width="100%" class="f16">
                <tbody>
                <tr>
                    <td width="20%" align="right">收件人</td>
                    <td width="80%">
                        <input type="text" placeholder="最多可添加两个邮箱，用“；”隔开" id="recipients" name="recipients">
                        <span id="forwardResumeError" style="display:none" class="beError"></span>
                    </td>
                </tr>
                <tr>
                    <td align="right">主题</td>
                    <td>
                        <input type="text" value="" name="title">
                    </td>
                </tr>
                <tr>
                    <td valign="top" align="right">正文</td>
                    <td>
                        <textarea name="content"></textarea>
                        <span style="display:none;" class="beError error"></span>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="发送" class="btn">
                        <a class="emial_cancel" href="javascript:;">取消</a>
                    </td>
                </tr>
                </tbody>
            </table>
            <input type="hidden" value="" name="resumeKey">
            <input type="hidden" value="" name="positionId">
            <input type="hidden" value="" name="deliverId">
        </form>
    </div><!--/#forwardResume-->

    <!--转发简历成功弹窗-->
    <div class="popup" id="forwardResumeSuccess">
        <table width="100%" class="f16">
            <tbody>
            <tr>
                <td align="center" class="f16">简历已转发成功</td>
            </tr>
            <tr>
                <td align="center">
                    <input type="button" value="确认" class="btn">
                </td>
            </tr>
            </tbody>
        </table>
    </div><!--/#forwardResumeSuccess-->

    <!--确认不合适弹窗-->
    <div style="height:400px;" class="popup" id="confirmRefuse">
        <form id="refuseMailForm">
            <table width="100%">
                <tbody>
                <tr>
                    <td>
                        <div class="refuse_icon">
                            <h3>确认这份简历不合适吗？</h3>
                            <span>确认后，系统将自动发送以下内容至用户邮箱</span>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
	             		<textarea name="content">非常荣幸收到您的简历，在我们仔细阅读您的简历之后，却不得不很遗憾的通知您：
您的简历与该职位的定位有些不匹配，因此无法进入面试。

但您的信息已录入我司人才储备库，当有合适您的职位开放时我们将第一时间联系您，希望在未来我们有机会成为一起拼搏的同事；
再次感谢您对我们的信任，祝您早日找到满意的工作。</textarea>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" value="确认不合适" class="btn">
                        <a class="emial_cancel" href="javascript:;">取消</a>
                    </td>
                </tr>
                </tbody>
            </table>
            <input type="hidden" value="" name="deliverId">
        </form>
    </div><!--/#confirmRefuse-->

    <!--拒绝email成功弹窗-->
    <div class="popup" id="refuseMailSuccess">
        <table width="100%" class="f16">
            <tbody>
            <tr>
                <td align="center" class="f16">
                    不合适通知已发送成功<br>
                    该简历已进入“不合适简历”列表
                </td>
            </tr>
            <tr>
                <td align="center">
                    <input type="button" value="确认" class="btn">
                </td>
            </tr>
            </tbody>
        </table>
    </div><!--/#refuseMailSuccess-->
</div>
<!------------------------------------- end ----------------------------------------->
<script src="style/js/jquery.ui.datetimepicker.min.js" type="text/javascript"></script>
<script src="../../statics/js/received_resumes.min.js" type="text/javascript"></script>
<%--单条删除的样式--%>
<script>
    $(".resume_del").bind("click",function(){var a=$(this),b=a.parents("li").attr("data-id"),c=$("#resubmitToken").val();return confirm("确定要删除该条招聘信息吗？")?($.ajax({type:"POST",url:ctx+"/corpResume/delete.json",data:{deliverIds:b,resubmitToken:c},dataType:"json"}).done(function(a){$("#resubmitToken").val(a.resubmitToken),a.success?top.location.href=top.location.href:alert(a.msg)}),void 0):!1});
</script>
<script>
</script>
<div class="clear"></div>
<input type="hidden" value="9421e33d3091428796fec127b07b6c5b" id="resubmitToken">
<a rel="nofollow" title="回到顶部" id="backtop"></a>
</div><!-- end #container -->
</div><!-- end #body -->

<script src="../../statics/js/core.min.js" type="text/javascript"></script>
<script src="../../statics/js/popup.min.js" type="text/javascript"></script>

<!-- -->

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
<%@include file="common/footer.jsp" %>
</body>
</html>