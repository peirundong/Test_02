<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html xmlns:wb="http://open.weibo.com/wb">
<head>
    <script type="text/javascript" async="" src="../../statics/js/conversion.js"></script>
    <script src="style/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script>
    <style type="text/css"></style>
    <meta content="no-siteapp" http-equiv="Cache-Control">
    <link media="handheld" rel="alternate">
    <link href="http://www.lagou.com/images/favicon.ico" rel="Shortcut Icon">
    <link href="../../statics/css/style.css" type="text/css" rel="stylesheet">
    <link href="../../statics/css/external.min.css" type="text/css" rel="stylesheet">
    <link href="../../statics/css/popup.css" type="text/css" rel="stylesheet">
    <link rel="stylesheet" href="../../statics/bootstrap/css/bootstrap.css">
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
    <link href="../../statics/css/style.css" type="text/css" rel="stylesheet">
    <link href="../../statics/css/external.min.css" type="text/css" rel="stylesheet">
    <link href="../../statics/css/popup.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="../../statics/js/jquery.1.10.1.min.js"></script>
    <script src="../../statics/js/jquery.lib.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="../../statics/js/ajaxfileupload.js"></script>
    <script src="../../statics/js/additional-methods.js" type="text/javascript"></script>
    <!--[if lte IE 8]>
    <script type="text/javascript" src="../../statics/js/excanvas.js"></script>
    <![endif]-->
    <script type="text/javascript">
        var youdao_conv_id = 271546;
    </script>
    <script src="../../statics/js/conv.js" type="text/javascript"></script>
    <script src="../../statics/js/ajaxCross.json" charset="UTF-8"></script>
    <style>
        .companyTitle {
            list-style: none;
            float: left;
            padding: 0 170px;
        }

        .companyTitle2 {
            list-style: none;
            float: right;
            padding: 0 20px;
        }
    </style>
</head>
<body>
<div id="body">
    <%@include file="common/companyheader.jsp" %>
    <%@include file="common/companyleft.jsp" %>

    <div class="content">
        <dl class="company_center_content">
            <dt>
            <h1>
                <em></em>
                公司已公布招聘岗位
            </h1>
            </dt>
            <dd>
                <div class="ccc_tr">共有<span><%=company.getCompanyRecruitCount()%></span> 个招聘</div>
                <form action="/sys/queryList"
                      method="get" id="jobForm">
                    <input type="hidden" value="" name="id">
                    <input type="hidden" value="create" name="preview">
                    <input type="hidden" value="25927" name="companyId">
                    <input type="hidden" value="c29d4a7c35314180bf3be5eb3f00048f" name="resubmitToken">
                    <table class="btm">
                        <tbody>
                        <tr>
                            <td width="25"><span class="redstar">*</span></td>
                            <td width="85">工作地点</td>
                            <td>市</td>
                            <td><div class="col-md-6 col-sm-6 col-xs-12">
                                <select id="cat1"  class="form-control" style="width: 100px">
                                    <c:if test="${hxAreasList != null }">
                                        <option value="">--请选择--</option>
                                        <c:forEach var="hxAreas" items="${hxAreasList}">
                                            <option
                                                    <c:if test="${hxAreas.id== queryCategoryLevel1 }">selected="selected"</c:if>
                                                    value="${hxAreas.id}">${hxAreas.name}</option>
                                        </c:forEach>
                                    </c:if>
                                </select>
                            </div></td>
                            <td>区</td>
                            <td>
                                    <div class="form-group">
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <select  id="cat2" class="form-control" style="width: 87.5px;">
                                                <option value="">--请选择--</option>
                                            </select>
                                        </div>
                                    </div>
                            </td>
                            <td>县</td>
                            <td>
                                    <div class="form-group">

                                        <div class="col-md-6 col-sm-6 col-xs-12" style="width: 120px">
                                            <select id="cat3" name="cat3" class="form-control">
                                                <option value="">--请选择--</option>
                                            </select>
                                        </div>
                                    </div>
                            </td>
                        </tr>
                        <tr>
                            <td width="25"><span class="redstar">*</span></td>
                            <td width="85">职位分类</td>
                            <td>方向</td>
                            <td>
                                    <div class="form-group">
                                        <div class="col-md-6 col-sm-6 col-xs-12" style="width: 120px">
                                            <select style="width: 120px" id="cat4" class="form-control" >
                                                <option value="">--请选择--</option>
                                                <c:forEach var="positions" items="${positionsList}">
                                                    <option name="industryname"
                                                            <c:if test="${positions.parentno== queryCategoryLevel1 }">selected="selected"</c:if>
                                                            value="${positions.industryno}">${positions.industryname}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                            </td>
                            <td>类型</td>
                            <td>

                                    <div class="form-group">
                                        <div class="col-md-6 col-sm-6 col-xs-12"style="width: 120px">
                                            <select name="cat5" id="cat5" class="form-control">
                                                <option value="">--请选择--</option>
                                            </select>
                                        </div>
                                    </div>

                            </td>
                        </tr>
                        </tbody>
                    </table>

                    <table class="btm">
                        <tbody>

                        <tr>
                            <td>
                                <button type="submit" class="btn btn-default btn-lg">
                                    <span class="" aria-hidden="true">查询</span>
                                </button>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </form>
            </dd>
        </dl>
        <dl class="company_center_content">
            <div>
                <c:forEach var="HxCompanyRecruit" items="${resumeFailList }" varStatus="status">
                    <li data-id="1686182" class="onlineResume">
                        <div class="resumeShow">
                            <div class="resumeIntro">
                                <h3 class="unread">
                                    <a target="_blank" title="预览jason的简历"
                                       href="resumeView.html?deliverId=1686182">
                                            ${HxCompanyRecruit.industryname}
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
                                    薪资:${HxCompanyRecruit.salaryMin}-${HxCompanyRecruit.salaryMax}<br>
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
                                    详情
                                </a>
                            </div>
                        </div>
                    </li>
                </c:forEach>
                </ul>
            </div>

            <script src="../../statics/js/core.min.js" type="text/javascript"></script>
            <script src="../../statics/js/popup.min.js" type="text/javascript"></script>

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
            <div class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"
                 id="ui-datepicker-div"></div>
            <script src="../../statics/js/jquery.1.10.1.min.js"></script>
            <script src="../../statics/bootstrap/js/bootstrap.js"></script>
            <script src="../../statics/js/sanjichaxun.js"></script>
        </dl>
    </div>
</div>
</div>
</div>
            <%@include file="common/footer.jsp" %>

</body>
</html>