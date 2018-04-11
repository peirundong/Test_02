<%--
  Created by IntelliJ IDEA.
  User: ZhangJunJie
  Date: 2017/12/1
  Time: 18:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/companyheader.jsp"%>
<%@include file="common/companyleft.jsp"%>
        <div class="content">

            <div class="main03">
                <div class="main03_Pad" style="background-color: #B2BBD0">
                    <h1>个人简历</h1>

                    <ul class="mainForm">

                        <li class="msg"><span><font>* </font>姓名:</span>
                            <span style="text-align: left">${hxResume.seekername}</span>
                        </li>

                        <li class="msg"><span><font>* </font>性别</span>

                           <%--<span style="text-align: left">  <c:if test="${hxResume.sexid==0?'男':'女'}"></c:if></span>--%>
                           <%--<span style="text-align: left"> <c:if test="${hxResume.sexid==1}"> 女</c:if></span>--%>
                        <span style="text-align: left">
                            <c:choose>
                                <c:when test="${hxResume.sexid==0}">
                                    男
                                </c:when>
                                <c:otherwise>
                                    女
                                </c:otherwise>
                            </c:choose>
                        </span>
                        </li>

                        <li class="msg"><span><font>* </font>年龄</span>
                            <span style="text-align: left">${hxResume.age}</span>
                        </li>

                        <li class="msg"><span><font>* </font>期望职位:</span>
                            <span style="text-align: left">${hxResume.wantedindustry}</span>
                        </li>

                        <li class="msg"><span><font>* </font>工作经验:</span>
                            <span style="text-align: left">${hxResume.workexperience}年</span>
                        </li>

                        <li class="msg"><span><font>* </font>期望薪资</span>
                            <span style="text-align: left">${hxResume.wantedpay}</span>
                        </li>
                        <li class="msg"><span><font>* </font>学历</span>
                            <span style="text-align: left">${hxResume.valuename}</span>
                        </li>

                        <li class="msg"><span><font>* </font>常用简历</span>
                            <span style="text-align: left">
                                <c:if test="${hxResume.oftenuse==0}">不是</c:if>
                                <c:if test="${hxResume.oftenuse==1}">是</c:if>
                            </span>
                        </li>


                        <li class="msg"><span><font>* </font>国籍</span>
                            <span style="text-align: left">${hxResume.country}</span>
                        </li>

                        <li class="msg"><span><font>* </font>期望工作地</span>
                            <span style="text-align: left;width: 300px">${hxResume.merger_name}</span>
                        </li>


                        <li class="msg"><span><font>* </font>电子邮箱</span>
                            <span style="text-align: left">${hxResume.email}</span>
                        </li>

                        <li class="msg"><span><font>* </font>语言能力</span>
                            <span style="text-align: left">${hxResume.language}</span>
                        </li>

                        <li class="msg">
                            <span class="com-title"><font>* </font>擅长技能</span>
                            <span style="text-align: left">${hxResume.skill}</span>
                        </li>

                        <li class="msg">
                            <span class="com-title"><font>* </font>自我评价</span>
                            <span style="text-align: left;width: 300px">${hxResume.introduce}</span>
                        </li>

                        <li class="msg">
                            <span class="com-title"><font>* </font>备注</span>
                            <span style="text-align: left;,width: 200px;">${hxResume.remarks}</span>
                        </li>
                        <li style="padding-left: 230px">
                            <div>
                                <a href="http://www.bootcss.com/"
                                   class="button button-block button-rounded button-large">购买</a>

                            </div>
                        </li>

                        <li class="heig30"></li>

                    </ul>

                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="common/footer.jsp" %>
</body>
</html>