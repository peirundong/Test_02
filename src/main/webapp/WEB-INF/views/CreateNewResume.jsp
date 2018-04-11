<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 10892
  Date: 17.11.3
  Time: 14:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">

    <title>创建简历</title>
    <meta content="always" name="referrer" />

    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8" />
    <link href="http://www.lagou.com/images/favicon.ico" rel="Shortcut Icon">
    <link href="../../statics/css/style.css" type="text/css" rel="stylesheet">
    <link href="../../statics/css/external.min.css" type="text/css" rel="stylesheet">
    <link href="../../statics/css/popup.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="../../statics/js/jquery.1.10.1.min.js"></script>
    <script src="../../statics/js/jquery.lib.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="../../statics/js/ajaxfileupload.js"></script>
    <script src="../../statics/js/additional-methods.js" type="text/javascript"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/css1.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/css2.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/btncss.css" />
    <script src="${pageContext.request.contextPath}/statics/js/jquery-1.9.1.min.js"></script>



    <style>
        *{
            padding: 0;
            margin: 0;
        }

    </style>

</head>
<body>
<div id="body">
    <div id="header"></div><!-- end #header -->
    <div id="container">

        <div class="sidebar">
            <a class="btn_create" href="personalCenter.html">个人中心</a>
            <dl class="company_center_aside">
                <dt><a href="">我的简历</a></dt>

            </dl>
            <dl class="company_center_aside">
                <dt><a href="">我的收藏</a></dt></dt>
            </dl>
            <dl class="company_center_aside">
                <dt><a href="">已投简历</a></dt>
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

                <h1>创建简历</h1>
                <ul class="mainForm">

                    <li class="msg">
                        <input type="hidden"  value="0" name="type"/>
                        <input type="hidden" value="True" name="iseditemail"/>
                        <input type="hidden" value="1" name="langerId" />
                        <input type="hidden" value="1"  name="email2"/>
                        <span><font>* </font>姓名</span><div class="wid350">
                        <input type="text" class="wid350"  name="username" maxlength="50" value="" id="username" mzpmodule="resumeChEnFac" tiptext="" lang="en"/>
                    </div>
                        <em id="txtError_username" class=""></em></li>
                    <li class="msg"><span><font>* </font>性别</span>
                        <div class="radio_group_container">
                            <span class="widcheck">
                                    <input type="radio" value="1" name="gender" />
                                <label style="width: auto; cursor: pointer;" bind_hidden="gender">男</label></span>
                            <span class="widcheck">
                                <input type="radio" value="2" name="gender" />
                                <label style="width: auto; cursor: pointer;" bind_hidden="gender">女</label></span>
                        </div>
                        <em id="txtError_gender"></em>

                    </li>


                    <li class="msg"><span><font>* </font>期望职位</span><div class="wid350">
                        <input  type="text" value="" id="post" name="post" maxlength="11"/>

                    </div>
                        <em id="post1" class="post1"></em>
                    </li>

                    <li class="msg"><span><font>* </font>工作经验</span><div class="wid350">
                        <input  type="text" value="" id="experience" name="experience" maxlength="11"/>

                    </div>
                        <em id="experience1" class="experience1"></em>
                    </li>
                    <li class="msg"><span><font>* </font>期望薪资</span><div class="wid350">
                        <input  type="text" value="" id="pay" name="pay" maxlength="11"/>
                    </div>
                        <em id="pay1" class="pay1"></em>
                    </li>
                    <li class="msg"><span><font>* </font>学历</span><div class="wid350">
                        <input  type="text" value="" id="education" name="education" maxlength="11" />
                    </div>
                        <em id="education1" class="education1"></em>
                    </li>

                    <li class="msg"><span><font>* </font>常用简历</span>
                        <div class="radio_group_container">
                            <span class="widcheck">
                                    <input type="radio" value="0" name="gender" />
                                <label style="width: auto; cursor: pointer;" bind_hidden="gender">是</label></span>
                            <span class="widcheck">
                                <input type="radio" value="1" name="gender" />
                                <label style="width: auto; cursor: pointer;" bind_hidden="gender">不是</label></span>
                        </div>
                        <em id="txtError_gender1"></em>

                    </li>


                    <li class="msg"><span><font>* </font>国籍</span><div class="wid350 elePosion">

                        <input type="text" id="hukou_selete" class="new_position3">

                        <i class="backSel click_i3"></i>
                    </div>
                        <em id="conError_hukou" class="txt_new"></em>
                    </li>
                    <li class="msg"><span><font>* </font>期望工作地点</span><div class="wid350 elePosion">
                        <span>
                            <%--<select>--%>
                            <%--<c:forEach var="" items="">--%>
                                <%--<option></option>--%>
                            <%--</c:forEach>--%>

                        <%--</select></span>--%>
                        <%--<span><select>--%>
                            <%--<c:forEach var="" items="">--%>
                                <%--<option></option>--%>
                            <%--</c:forEach>--%>

                        <%--</select></span>--%>
                        <%--<span><select>--%>
                            <%--<c:forEach var="" items="">--%>
                                <%--<option></option>--%>
                            <%--</c:forEach>--%>

                        <%--</select>--%>
                        </span>

                        <i class="backSel click_i3"></i>
                    </div>
                        <em id="conError_residence" class="txt_new"></em>
                    </li>


                    <li class="msg"><span><font>* </font>电子邮箱</span><div class="wid350">
                        <input type="text"  id="emailshow" name="emailshow" value="" onchange="javascript:$('#email1').val(this.value)" />
                        <input type="hidden" id="email1"   name="email1" value="" />
                    </div>
                        <em id="conError_emailshowmessage"></em></li>

                    <li class="msg"><span><font>* </font>语言能力</span><div class="wid350">
                        <input  type="text" value="" id="language" name="language" maxlength="11"/>

                    </div>
                        <em id="language1" class="language1"></em>
                    </li>

                    <li class="msg">
                        <span class="com-title"><font>* </font>擅长技能</span>
                        <div class="self-wrap">
                            <textarea class="self-content" id="txtIntrodSelf" maxlength="500"></textarea>
                        </div>
                        <em id="word"></em></li>

                    <li class="msg">
                        <span class="com-title"><font>* </font>自我评价</span>
                        <div class="self-wrap">
                            <textarea class="self-content" id="txtIntrodSelf1" maxlength="500"></textarea>
                        </div>
                        <em id="me"></em></li>

                    <li class="msg">
                        <span class="com-title"><font>* </font>备注</span>
                        <div class="self-wrap">
                            <textarea class="self-content" id="txtIntrodSelf2" maxlength="500"></textarea>
                        </div>
                        <em id="bei"></em></li>
                    <br>
                    <li style="padding-left: 150px">
                        <div class="btn">
                            <button type="submit" value="提交" class="button button-pill button-primary">提交</button>
                            <button name="rest" value="重置" class="button button-pill button-primary">重置</button>
                            <button onclick="window.close();" value="关闭" class="button button-pill button-primary">关闭</button>

                        </div>

                    </li>

                    <li class="heig30"></li>
                </ul>

            </div>
        </div>
    </form>
</div>
        </div><!-- end .content -->
        <br>
        <div id="footer" > <%@include file="common/footer.jsp"%></div>
    </div>
</div>
</body>
</html>