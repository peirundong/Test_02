
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="../../statics/js/Seeker_Center_Main.js">
<%@include file="common/seekerhader.jsp"%>
    <%--<input name="resumeinfo" class="input-text" type="hidden" value="${resumeinfo }">--%>
    <%--<input name="seekeinfo" class="input-text" type="hidden" value="${seekeinfo }">--%>
    <input name="reseekeinfo" class="input-text" type="hidden" value="${reseekeinfo }">
<link href="/statics/css/style.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="../../statics/js/jquery.1.10.1.min.js"></script>
<script src="/statics/js/jquery.lib.min.js" type="text/javascript"></script>
<%@include file="common/seekerleft.jsp"%>
        <div class="content">
            <div class="clearfix">
                <div class="content_l">
                    <div class="fl dn" id="resume_name">
                        <div class="nameShow fl">
                            <h1 title="${reseekeinfo.seekername }的简历">${reseekeinfo.seekername }的简历</h1>
                            <%--<span class="rename">重命名</span>--%>
                        </div>
                        <%--<form class="dn" action="${pageContext.request.contextPath }/sys/updatea" method="post">
                            <input type="text" value="${reseekeinfo.seekername }的简历" name="resumeName" class="nameEdit c9">
                            <input type="submit" value="保存">
                        </form>--%><!--修改个人姓名-->
                    </div><!--详情用户详细-->

                    <div class="profile_box" id="basicInfo">
                        <h2>基本信息</h2>
                        <span class="c_edit"></span>
                        <div class="basicShow">
                                                ${reseekeinfo.seekername }  <br>
            			            			${reseekeinfo.seekerphone } | ${reseekeinfo.seekeremail }<br>
            			</span>
                            <div class="m_portrait">
                                <div></div>
                                <img width="120" height="120" alt="jason" src="style/images/default_headpic.png">
                            </div>
                        </div><!--个人信息显示-->

                        <div class="basicEdit dn">
                            <div id="profileForm" class="saveA"  >
                                <form method="post" action="${pageContext.request.contextPath }/sys/updateb">
                                <table>
                                    <tbody>
                                    <tr>
                                        <td valign="top">
                                            <span class="redstar">*</span>
                                        </td> <!--姓名-->
                                        <td>
                                            <input type="text" placeholder="姓名" value="${reseekeinfo.seekername }" name="names" id="names">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td valign="top">
                                            <span class="redstar">*</span>
                                        </td><%--手机号码--%>
                                        <td colspan="3">
                                            <input type="text" placeholder="手机号码" value="${reseekeinfo.seekerphone }" name="tel" id="tel">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td valign="top">
                                            <span class="redstar">*</span>
                                        </td><%--邮箱--%>
                                        <td colspan="3">
                                            <input type="text" placeholder="接收面试通知的邮箱" value="${reseekeinfo.seekeremail }" name="email" id="emails">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            <input type="submit" value="保 存" class="btn_profile_save">
                                            <a class="btn_profile_cancel" href="javascript:;">取 消</a>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                                </form>
                            </div><!--基本信息-->
                            <div class="new_portrait">
                                <div class="portrait_upload" id="portraitNo">
                                    <span>上传自己的头像</span>
                                </div>
                                <div class="portraitShow dn" id="portraitShow">
                                    <img width="120" height="120" src="">
                                    <span>更换头像</span>
                                </div>
                                <input type="file" value="" title="支持jpg、jpeg、gif、png格式，文件小于5M" onchange="img_check(this,'h/resume/uploadPhoto.json','headPic');" name="headPic" id="headPic" class="myfiles">
                                <!-- <input type="hidden" id="headPicHidden" /> -->
                                <em>
                                    尺寸：120*120px <br>
                                    大小：小于5M
                                </em>
                                <span style="display:none;" id="headPic_error" class="error"></span>
                            </div><!--上传头像-->
                        </div><!--end .basicEdit-->
                        <input type="hidden" id="nameVal" value="${reseekeinfo.seekername }">
                        <input type="hidden" id="emailVal" value="${reseekeinfo.seekeremail }">
                        <input type="hidden" id="telVal" value="${reseekeinfo.seekerphone }">
                        <input type="hidden" id="pageType" value="1">
                    </div><!--基本信息框-->

                    <div class="profile_box" id="educationalBackground">
                        <h2>我的信息<span>（投递简历时必填）</span></h2>
                        <span class="c_add dn"></span>
                        <div class="educationalEdit dn">
                            <div class="educationalForm">
                                <form action="${pageContext.request.contextPath }/sys/inserta" method="post">
                                <table>
                                    <tbody>
                                    <tr>
                                        <td valign="top">
                                            <span class="redstar">*</span>
                                        </td><!--姓名-->
                                        <td>
                                            <input type="text" placeholder="姓名" value="" name="newname" id="name">
                                        </td>
                                        <td valign="top">
                                            <span class="redstar">*</span>
                                        </td><!--性别-->
                                        <td>
                                            <ul class="profile_radio clearfix reset">
                                                <li class="current" >
                                                    男<em></em>
                                                    <input type="radio" checked="checked" name="gender" value="男">
                                                </li>
                                                <li>
                                                    女<em></em>
                                                    <input type="radio" name="gender" value="女">
                                                </li>
                                            </ul>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td valign="top">
                                            <span class="redstar">*</span>
                                        </td><!--年龄-->
                                        <td>
                                            <input type="text" placeholder="年龄" value="" name="newage" id="age">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td valign="top">
                                            <span class="redstar">*</span>
                                        </td><!--邮箱-->
                                        <td>
                                            <input type="text" placeholder="邮箱" value="" name="newemail" id="email">
                                        </td>
                                        <td valign="top">
                                            <span class="redstar">*</span>
                                        </td><!--是否是常用邮箱-->
                                        <td>
                                            <ul class="profile_radio clearfix reset">
                                                是否是常用邮箱
                                                <li class="current">
                                                    是<em></em>
                                                    <input type="radio" checked="checked" name="radio" value="0">
                                                </li>
                                                <li>
                                                    否<em></em>
                                                    <input type="radio" name="radio" value="1">
                                                </li>
                                            </ul>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td colspan="3">
                                            <input type="submit" value="保 存" class="btn_profile_save">
                                            <a class="btn_profile_cancel" href="javascript:;">取 消</a>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                                </form>
                            </div><!--end .educationalForm-->
                        </div><!--end .educationalEdit-->
                        <div class="educationalAdd pAdd">
                            <span>添加我的信息</span>
                        </div><!--end .educationalAdd-->
                    </div><!--我的描述-->

                    <div class="profile_box" id="projectExperience">
                        <h2>我的优势</h2>
                        <span class="c_add dn"></span>
                        <div class="projectShow dn">
                            <ul class="plist clearfix">
                            </ul>
                        </div>
                        <div class="projectEdit dn">
                            <div class="projectForm">
                                <form action="${pageContext.request.contextPath }/sys/insertb" method="post">
                                <table>
                                    <tbody>
                                    <tr>
                                        <td valign="top">
                                            <span class="redstar">*</span>
                                        </td><!--学历-->
                                        <td>
                                                <ul class="profile_radio clearfix reset">
                                                    <li class="current" >
                                                        大专<em></em>
                                                        <input type="radio" name="xueli" value="1">
                                                    </li>
                                                    <li>
                                                        本科<em></em>
                                                        <input type="radio" name="xueli" value="2">
                                                    </li>
                                                    <li>
                                                        硕士<em></em>
                                                        <input type="radio" name="xueli" value="3">
                                                    </li>
                                                    <li>
                                                        博士<em></em>
                                                        <input type="radio" name="xueli" value="4">
                                                    </li>
                                                    <li>
                                                        其他<em></em>
                                                        <input type="radio" name="xueli" value="5">
                                                    </li>
                                                </ul>
                                        </td>
                                        <td valign="top">
                                            <span class="redstar">*</span>
                                        </td><!--国籍-->
                                        <td>
                                            <input type="text" placeholder="国籍，如：伊拉克" value="" name="guoji">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td valign="top">
                                            <span class="redstar">*</span>
                                        </td> <!--语言能力-->
                                        <td>
                                            <input type="text" placeholder="语言能力，例:日语" name="langele" class="thePost">
                                        </td>
                                        <td valign="top">
                                            <span class="redstar">*</span>
                                        </td> <!--工作经验-->
                                        <td>
                                            <input type="text" placeholder="该职位经验，例:10年" name="jinyan" class="thePost">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td valign="top"></td>
                                        <td colspan="3">
                                            <input type="submit" value="保 存" class="btn_profile_save">
                                            <a class="btn_profile_cancel" href="javascript:;">取 消</a>
                                        </td>
                                    </tr>
                                    </tbody></table>
                                <%--<input type="hidden" value="" class="projectId">--%>
                                </form>
                            </div><!--end .projectForm-->
                        </div>
                        <div class="projectAdd pAdd">
                            优秀的个人技能也可以为你的简历加分哦！<br>
                            <span>添加我的优势</span>
                        </div>
                    </div><!--我的优势-->

                    <div class="profile_box" id="expectJob">
                        <h2>期望工作</h2>
                        <span class="c_edit dn"></span>
                        <div class="expectShow dn">
                            <span></span>
                        </div>
                        <div class="expectEdit dn">
                            <div id="expectForm" >
                                <form action="${pageContext.request.contextPath }/sys/insertc" method="post">
                                <table>
                                    <tbody>
                                    <tr>
                                        <td>
                                            <input type="text" placeholder="期望职位，如：产品经理" value="" name="zhiwei" id="expectPosition">
                                        </td>
                                        <td>
                                            <input type="text" placeholder="期望薪资，如：9k" value="" name="xinzi" id="expectPosition1">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input type="text" placeholder="期望工作地点，如：北京" value="" name="addressA" id="expectPosition3">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <input type="submit" value="保 存" class="btn_profile_save">
                                            <a class="btn_profile_cancel" href="javascript:;">取 消</a>
                                        </td>
                                    </tr>
                                    </tbody></table>
                                </form>
                            </div>
                        </div>
                        <div class="expectAdd pAdd">
                            填写准确的期望工作能大大提高求职成功率哦…<br>
                            快来添加期望工作吧！
                            <span>添加期望工作</span>
                        </div>
                    </div><!--期望工作框-->

                    <div class="profile_box" id="worksShow">
                        <h2>自我描述</h2>
                        <span class="c_add dn"></span>
                        <div class="workShow dn">
                            <ul class="slist clearfix">
                            </ul>
                        </div>
                        <div class="workEdit dn">
                            <div class="workForm">
                                <form action="${pageContext.request.contextPath }/sys/insertd" method="post">
                                <table>
                                    <tbody>
                                    <tr>
                                        <td>
                                            <textarea maxlength="100" class="workDescription s_textarea" name="jineng" placeholder="详细说明你擅长的技能，能为你的简历加分哦！"></textarea>
                                            <div class="word_count">你还可以输入 <span>100</span> 字</div>
                                        </td>
                                    </tr><%--擅长技能--%>
                                    <tr>
                                        <td>
                                            <textarea maxlength="100" class="workDescription s_textarea" name="miaoshu" placeholder="对自己做一个与众不同的评价吧！"></textarea>
                                            <div class="word_count">你还可以输入 <span>100</span> 字</div>
                                        </td>
                                    </tr><%--自我评价--%>
                                    <tr>
                                        <td>
                                            <input type="submit" value="保 存" class="btn_profile_save">
                                            <a class="btn_profile_cancel" href="javascript:;">取 消</a>
                                        </td>
                                    </tr>
                                    </tbody></table>
                                <input type="hidden" class="showId" value="">
                                </form>
                            </div>
                        </div>
                        <div class="workAdd pAdd">
                            展示与众不同的你！<br>
                            <span>添加自我评价</span>
                        </div>
                    </div><!--自我评价-->
                    <input type="hidden" id="resumeId" value="268472">
                </div>
            </div>
        </div>
    </div>

    <input type="hidden" id="userid" name="userid" value="314873">


    <script src="../../statics/js/Chart.min.js" type="text/javascript"></script>
    <script src="../../statics/js/profile.min.js" type="text/javascript"></script>
    <!-- <div id="profileOverlay"></div> -->
    <div class="" id="qr_cloud_resume" style="display: none;">
        <div class="cloud">
            <img width="134" height="134" src="">
            <a class="close" href="javascript:;"></a>
        </div>
    </div>
    <script>
        $(function () {
            $.ajax({
                url: ctx + "/mycenter/showQRCode",
                type: "GET",
                async: false
            }).done(function (data) {
                if (data.success) {
                    $('#qr_cloud_resume img').attr("src", data.content);
                }
            });
            var sessionId = "resumeQR" + 314873;
            if (!$.cookie(sessionId)) {
                $.cookie(sessionId, 0, {expires: 1});
            }
            if ($.cookie(sessionId) &amp;&amp; $.cookie(sessionId) != 5) {
                $('#qr_cloud_resume').removeClass('dn');
            }
            $('#qr_cloud_resume .close').click(function () {
                $('#qr_cloud_resume').fadeOut(200);
                resumeQR = parseInt($.cookie(sessionId)) + 1;
                $.cookie(sessionId, resumeQR, {expires: 1});
            });
        });
    </script>
    <div class="clear"></div>
    <input type="hidden" value="97fd449bcb294153a671f8fe6f4ba655" id="resubmitToken">
</div><!-- end #container -->
</div><!-- end #body -->

<div id="footer"></div>
<script src="../../statics/js/core.min.js" type="text/javascript"></script>

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
<%@include file="common/footer.jsp"%>
</body>
</html>