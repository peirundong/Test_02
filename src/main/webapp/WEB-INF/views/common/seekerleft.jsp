<%--
  Created by IntelliJ IDEA.
  User: 10892
  Date: 17.12.3
  Time: 22:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="container">
    <div class="sidebar">
        <a class="btn_create" href="/sys/jianli.html">个人中心</a>
        <dl class="company_center_aside">
            <dt><a href="/sys/Resume/MyResume.html">我的简历</a></dt>

        </dl>
        <dl class="company_center_aside">
            <dt><a href="/sys/connpage.html">我的收藏</a></dt>
            </dt>
        </dl>
        <dl class="company_center_aside">
            <dt><a href="/sys/Resume/Resume_InterviewSeeker.html">已投简历</a></dt>
        </dl>
        <dl class="company_center_aside">

            <dt><a href="/sys/resumeNotification.html?seekerid=<%=hxSeeker.getSeekerid() %>">投递反馈</a></dt>
        </dl>
        <div class="subscribe_side mt20">
            <div class="f14">想收到更多更好的简历？</div>
            <div class="f18 mb10">就用汇贤招聘加速助手</div>
            <div>咨询：<a class="f16" href="mailto:jessica@lagou.com">*********.com</a></div>
            <div class="f18 ti2em">1111111</div>
        </div>
        <div class="subscribe_side mt20">
            <div class="f14">加入互联网HR交流群</div>
            <div class="f18 mb10">跟同行聊聊</div>
            <div class="f24">11111111</div>
        </div>
    </div><!-- end .sidebar -->
