<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/seekerhader.jsp"%>
<%@include file="common/seekerleft.jsp"%>
<div class="content">
        <div class="main03">
            <div class="main03_Pad" style="background-color: #FAFAFA">
                <h1>公司简介</h1>
                <ul class="mainForm">

                    <li class="msg">
                        <p>
                        <span style="color: red">公司名称</span>
                        <span class="">${hxinfo1.companyname}</span>
                        </p>
                    </li>
                    <li class="msg">
                        <p>
                        <span style="color: red">公司账号</span>
                        <span class="">${hxinfo1.companyaccount}</span>
                        </p>

                    </li>
                    <li class="msg">
                        <p>
                        <span style="color: red">公司电话</span>
                        <span class="">${hxinfo1.companyphone}</span>
                        </p>
                    </li>
                    <li class="msg">
                        <p>
                        <span style="color: red">公司邮箱</span>
                        <span class="">${hxinfo1.companyemail}</span>
                        </p>
                    </li>
                    <li class="msg">
                        <p>
                        <span style="color: red">公司地址</span>
                        <span class="">${hxinfo1.merger_name}</span>
                        </p>
                    </li>
                    <li class="msg">
                        <p>
                        <span style="color: red">创建时间</span>
                        <span class="">${hxinfo1.companyregtime}</span>
                        </p>
                    </li>
                    <li class="msg">
                        <p>
                        <span style="color: red">公司详情</span>
                        <span class="">${hxinfo1.companyinformation}</span>
                        </p>
                    </li>
                    <li style="height: 300px"></li>
                    <li style="padding-left: 340px">
                        <button class="button button-rounded" type="button" onclick="javascript:history.go(-1);">返回</button>
                    </li>

                </ul>
            </div>
        </div>
</div>
</div>
<%@include file="common/footer.jsp"%>
</body>
</html>