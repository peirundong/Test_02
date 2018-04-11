<%@ page import="pojo.HxSeeker" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="common/seekerhader.jsp"%>
<%@include file="common/seekerleft.jsp"%>
<div class="content">
            <div class="main03_Pad" style="background-color: #FAFAFA">
                <h1>招聘信息详情</h1>
                <ul class="mainForm">

                    <li class="msg">
                        <p>
                        <span class="span1"  style="color: red">公司名称</span>
                        <span style="text-align: left">${Hxinfo.companyname}</span >
                        </p>
                    </li>
                    <li class="msg">
                        <p>
                        <span class="span1"  style="color: red">电话</span>
                        <span  style="text-align: left">${Hxinfo.companyphone}</span>
                        </p>
                    </li>
                    <li class="msg">
                        <p>
                        <span class="span1"  style="color: red">岗位</span>
                        <span style="text-align: left">${Hxinfo.position}</span>
                        </p>
                    </li>

                    <li class="msg">
                        <p>
                        <span class="span1"  style="color: red">公司地址</span>
                        <span  style="text-align: left">${Hxinfo.merger_name}</span>
                        </p>
                    </li>
                    <li class="msg">
                        <p>
                        <span class="span1"  style="color: red">学历要求</span>
                        <span style="text-align: left">${Hxinfo.valuename}</span>
                        </p>
                    </li>
                    <li class="msg">
                        <p>
                        <span class="span1"  style="color: red">薪水</span>
                        <span style="text-align: left">${Hxinfo.salaryMin}-${Hxinfo.salaryMax}</span>
                        </p>
                    </li>

                    <li style="height: 100px"></li>
                    <li style="padding-left: 140px">

                        <button  id = "tous"   class="button  button-primary  button-rounded" onclick="aaa(${Hxinfo.recruitid },${seeker.seekerid})">投简历</button>
                        <button class="button button-rounded" type="button" onclick="javascript:history.go(-1);">返回</button>
                    </li>
                    <li style="height: 140px"></li>
                </ul>
            </div>
        </div>
</div>
<script src="/statics/js/jquery-1.9.1.min.js"></script>
<script  src="../../statics/js/Recruit_info.js" type="text/javascript"></script>
<%@include file="common/footer.jsp"%>
</body>
</html>
