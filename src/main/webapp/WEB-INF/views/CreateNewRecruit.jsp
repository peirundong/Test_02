<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
    <script type="text/javascript" async="" src="../../statics/js/conversion.js"></script>
    <script src="../../statics/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script>
    <style type="text/css"></style>
    <meta content="no-siteapp" http-equiv="Cache-Control">
    <link media="handheld" rel="alternate">
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
    <title>发布新职位</title>

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
    <link rel="stylesheet" href="../../statics/css/ui.css">
    <link rel="stylesheet" href="../../statics/css/window.css">
</head>
<body>

<div id="body">
<%@include file="common/companyheader.jsp"%>
<%@include file="common/companyleft.jsp"%>
        <div class="content">
            <dl class="company_center_content">
                <dt>
                <h1>
                    <em></em>
                    发布新职位
                </h1>
                </dt>
                <dd>
                    <form action="/sys/submit.html" method="post" id="jobForm">
                        <input type="hidden" value="" name="id">
                        <table class="btm">
                            <tbody>
                            <tr>
                                <td><span class="redstar">*</span></td>
                                <td>职位名称</td>
                                <td>
                                    <input type="text" placeholder="请输入职位名称，如：产品经理" value="" name="position"
                                           id="position">
                                </td>
                            </tr>
                            </tbody>
                        </table>

                        <table class="btm">
                            <tbody>
                            <tr>
                                <td><span class="redstar">*</span></td>
                                <td>月薪范围</td>
                                <td>
                                    <div class="salary_range">
                                        <div>
                                            <input type="text" placeholder="最低月薪" value="" id="salaryMin"
                                                   name="salaryMin">
                                            <span>k</span>
                                        </div>
                                        <div>
                                            <input type="text" placeholder="最高月薪" value="" id="salaryMax"
                                                   name="salaryMax">
                                            <span>k</span>
                                        </div>
                                        <span>只能输入整数，如：9</span>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td><span class="redstar">*</span></td>
                                <td>招聘结束</td>
                                <td>
                                    <input type="text" placeholder="请输入时间 例如：2001-10-10" value="" name="endtime"
                                           id="endtime">
                                </td>
                            </tr>
                            </tbody>
                        </table>

                        <table class="btm">
                            <tbody>
                            <tr>
                                <td><span class="redstar">*</span></td>
                                <td>学历要求</td>
                                <!--<h3><span>(最高月薪不能大于最低月薪的2倍)</span></h3> -->
                                <td>
                                    <input type="hidden" id="education" value="" name="valuename">
                                    <input type="button" value="请选择学历要求" id="select_education"
                                           class="selectr selectr_380">
                                    <div class="boxUpDown boxUpDown_380 dn" id="box_education" style="display: none;">
                                        <ul>
                                            <c:forEach var="dictionary" items="${dictionarylist}" varStatus="status">
                                            <li value="${dictionary.typevalueid}">
                                                ${dictionary.valuename}
                                            </li>
                                            </c:forEach>
                                        </ul>
                                    </div>
                                </td>
                            </tr>
                            </tbody>
                        </table>

                        <table class="btm">
                            <tbody>

                            <tr>
                                <td><span class="redstar">*</span></td>
                                <td>工作地址</td>
                                <td>
                                    <input type="text" placeholder="请输入详细的工作地址" value="" name="detaddress"
                                           class="input_520" id="detaddress">
                                    <%--<input type="hidden" value="" name="positionLng" id="lng">--%>
                                    <%--<input type="hidden" value="" name="positionLat" id="lat">--%>
                                    <div class="work_place f14">我们将在职位详情页以地图方式精准呈现给用户 <a id="mapPreview"
                                                                                         href="javascript:;">预览地图</a>
                                    </div>
                                </td>
                            </tr>
                            </tbody>
                        </table>

                        <table>
                            <tbody>
                            <tr>
                                <td width="25"><span class="redstar">*</span></td>
                                <td colspan="2">
                                    接收简历邮箱： <span id="receiveEmailVal">admin@admin.com</span>
                                    <%--<input type="text" value="admin@admin.com" id="receiveEmail" name="email">--%>
                                </td>
                            </tr>
                            <tr>
                                <td width="25"></td>
                                <td colspan="2">
                                    需求人数
                                    <input type="text" value="" id="needs" name="needs">
                                    <!-- <span class="error" id="beError" style="display:none"></span> -->
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <textarea class="selfDescription s_textarea" name="positiondesc"
                                              placeholder="职位描述："></textarea>
                                    <div class="word_count">你还可以输入 <span>500</span>字</div>
                                </td>
                            </tr>
                            <tr>
                                <td width="25"></td>
                                <td colspan="2">
                                    <input type="submit" value="发布"  class="btn_32">
                                    <input type="reset" value="重置"  class="btn_32">
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </form>
                </dd>
            </dl>
        </div><!-- end .content -->
        <script src="../../statics/js/jquery.tinymce.js" type="text/javascript"></script>
        <script src="../../statics/js/jobs.min.js" type="text/javascript"></script>
        <div class="clear"></div>
        <input type="hidden" value="c29d4a7c35314180bf3be5eb3f00048f" id="resubmitToken">
        <a rel="nofollow" title="回到顶部" id="backtop" style="display: none;"></a>
    </div><!-- end #container -->
</div><!-- end #body -->


<div id="footer">
    <%@include file="common/footer.jsp" %>
</div>


<script src="../../statics/js/core.min.js" type="text/javascript"></script>
<script src="../../statics/js/popup.min.js" type="text/javascript"></script>
</body>
</html>