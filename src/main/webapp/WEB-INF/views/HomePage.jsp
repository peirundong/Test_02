<%--
  Created by IntelliJ IDEA.
  User: 10892
  Date: 17.11.3
  Time: 14:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="UTF-8" />
    <title>我的网站</title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no" />
    <meta name="copyright" content="Copyright dedecms51.com 版权所有" />
    <link href="${pageContext.request.contextPath}/statics/Content/bootstrap.min.css" rel="stylesheet" />

    <link href="${pageContext.request.contextPath}/statics/Content/index.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/Content/buttons.css">
    <script src="${pageContext.request.contextPath}/statics/Scripts/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/statics/Scripts/index.min.js"></script>
</head>

<body>
<header>
    <div class="words" style="margin-left: -170px;margin-top: -9px;"> <a href="/sys/CompanyLogin.html" class="button button-glow button-border button-rounded button-primary">企业用户</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="/sys/SeekerLogin.html" class="button button-glow button-border button-rounded button-primary">个人用户</a></div>
    <nav class="menu">
        <ul class="list-inline">
            <li class="active"><a>首页</a></li>
            <li><a>业务</a></li>
            <li><a>案例</a></li>
            <li><a>客户</a></li>
            <li><a>品质</a></li>
            <li><a>增值</a></li>
            <li><a>关于</a></li>
            <li><a>联系</a></li>
        </ul>
    </nav>
    <div class="hotline">
        <a href="" title=""><span>联系我们</span></a><u></u>
    </div>
    <div class="menu-icon">
        <a href="tel:150-2021-7966" title="点击直拨网站建设热线"><span class="glyphicon glyphicon-earphone"></span></a>
        <span class="glyphicon glyphicon-th-large"></span>
    </div>
</header>

<div class="welcome"><p><u>Loading . . .</u></p></div>

<section class="video">
    <div class="swiper-container">
        <div class="swiper-wrapper">
            <div class="swiper-slide nth1">
                <div class="box">
                    <div class="left"></div>
                    <div class="right">
                        <span>家媒体报道</span><i></i>
                        <p>千里之行始于足下<br />专注于人才的发掘与推荐</p>
                    </div>
                </div>
            </div>
            <div class="swiper-slide nth2">
                <div class="box">
                    <span>程序员，也醉了</span><i></i>
                    <p>设计最优化算法推荐<br />我们还能奋斗一晚</p>
                </div>
            </div>
            <div class="swiper-slide nth3">
                <div class="box">
                    <div class="top">技术派，论研发</div>
                    <div class="mid"></div>
                    <div class="bottom">我说，业界没有最好的技术，只有最棒的技术开发者<br />为您提供更好的使用体验</div>
                </div>
            </div>
            <div class="swiper-slide nth4">
                <div class="box">
                    <div class="top"><span>先入为主，布局未来</span><i></i></div>
                    <div class="bottom">全面接入<u>企业</u>与<u>电商</u><br />抢占推荐席位<br />只为给您<u>最好的</u>体验</div>
                </div>
            </div>
        </div>
    </div>
    <div class="innerBox">
        <div class="news">
            <span>NEWS :</span>
            <a href="/a/news/" title="更多文章动态" class="more" target="_blank">more</a>
            <ul>
                <li><a href="" target="_blank" title="毕业等于失业，为何工作这么难找">毕业等于失业，为何工作这么难找...</a></li>
                <li><a href="" target="_blank" title="国家推行大学生援助，为何还不落实">国家推行大学生援助，为何还不落实...</a></li>
                <li><a href="" target="_blank" title="钱都砸去哪里了，为什么你的简历没有回复">钱都砸去哪里了，为什么你的简历没有回复...</a></li>
                <li><a href="" target="_blank" title="不是所有招聘网站都合格">不是所有招聘网站都合格...</a></li>
                <li><a href="" target="_blank" title="江苏小李成功找到工作">江苏小李成功找到工作...</a></li>

            </ul>
        </div>
        <div class="guide"></div>
        <a class="movedown"></a>
    </div>
</section>

<section class="business">
    <div class="box">
        <div class="caption">
            <i></i><span>我们能做什么</span>
            <br class="clear" />
        </div>
        <ul class="items list-inline">
            <li class="pc">
                <i></i><strong>多家企业入驻</strong>
                <p>高材生，有办法<br />品牌offer带回家</p>
            </li>
            <li class="mobi">
                <i></i><strong>流畅的用户体验</strong>
                <p>聘请多位工程师<br />为您带来良好的体验</p>
            </li>
            <li class="sys">
                <i></i><strong>多设备同步消息</strong>
                <p>让您无缝衔接<br />随时随地查看招聘信息</p>
            </li>
            <li class="app">
                <i></i><strong>APP应用程序</strong>
                <p>基于微信开发<br />掌控智能终端时代</p>
            </li>
            <li class="host">
                <i></i><strong>投放简历更加便捷</strong>
                <p>我们不只提供工作资源<br />更加注重用户体验</p>
            </li>
        </ul>
    </div>
</section>

<section class="cases">
    <div class="box">
        <div class="caption">
            <i></i><span>入住企业</span>
            <br class="clear" />
        </div>
        <div class="swiper-container items">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <a href="/a/cases/other/2015/0429/23.html" target="_blank">
                        <img src="/uploads/allimg/150429/1-1504291A0160-L.jpg" alt="万博法务网站建设项目" />
                        <p>网站设计<br /><strong>万博法务网站建设项目</strong><br />门户网站,红色</p></a>
                </div>
                <div class="swiper-slide">
                    <a href="/a/cases/media/2015/0429/22.html" target="_blank">
                        <img src="/uploads/allimg/150429/1-1504291649100-L.jpg" alt="中国影响力网站设计" />
                        <p>网站设计<br /><strong>中国影响力网站设计</strong><br />门户网站,蓝色,国有企业</p></a>
                </div>
                <div class="swiper-slide">
                    <a href="/a/cases/farming/2015/0429/21.html" target="_blank">
                        <img src="/uploads/allimg/150429/1-150429164J40-L.jpg" alt="北京粮食科技研究所网站" />
                        <p>网站设计<br /><strong>北京粮食科技研究所网站</strong><br />官方网站,企业网站,绿色</p></a>
                </div>

            </div>
        </div>
        <a href="/a/cases/" title="欣赏更多网站建设案例" class="more" target="_blank">MORE</a>
    </div>
</section>

<section class="clients">
    <div class="box">
        <div class="caption">
            <i></i><span>他们与汇贤长期合作</span>
            <br class="clear" />
        </div>
        <ul class="items list-inline">
            <li class="cctv"><span>CCTV影响力视频网站建设</span></li>
            <li class="unicom"><span>中国联通电信卡网站制作</span></li>
            <li class="tsinghua"><span>清华大学国际预科学院网站建设</span></li>
            <li class="cas"><span>中科院力学研究所网站设计</span></li>
            <li class="sipo"><span>国家知识产权局网站建设</span></li>
            <li class="apple"><span>中航苹果官方网站设计</span></li>
            <li class="das"><span>一汽大众汽车门户网站建设</span></li>
            <li class="hunantv"><span>湖南卫视全媒体网站建设</span></li>
            <li class="sino"><span>中环球船务官方网站制作</span></li>
            <li class="report"><span>中国报道信息门户网站建设</span></li>
            <li class="gedu"><span>环球雅思教育门户网站制作</span></li>
            <li class="bgg"><span>京粮集团网站建设</span></li>
            <li class="bsec"><span>北赛电工官方网站设计</span></li>
            <li class="huadan"><span>华丹乳业官方网站建设</span></li>
            <li class="zd"><span>中东集团网站制作</span></li>
        </ul>
    </div>
</section>

<section class="quality">
    <div class="box">
        <div class="caption">
            <i></i><span>不同媒介，同样精彩</span>
            <br class="clear" />
        </div>
        <div class="swiper-container items">
            <div class="swiper-wrapper">
                <div class="swiper-slide nth1">
                    <ul class="list-inline">
                        <li class="mobi"><span>响应式手机网站建设</span></li><li class="pad"><span>响应式平板网站建设</span></li><li class="pc"><span>响应式PC网站建设</span></li>
                    </ul>
                    <p>触及视觉灵魂的设计趋势<br />精心布局的用户体验<br />毫无顾忌地通过任何终端<br />呈现在客户的眼前</p>
                </div>
                <div class="swiper-slide nth2">
                    <ul class="list-inline">
                        <li class="ie"><span>兼容微软IE浏览器的网页设计</span></li><li class="chrome"><span>兼容谷歌Chrome浏览器的网站设计</span></li><li class="firefox"><span>兼容火狐Firefox浏览器的网页设计</span></li><li class="safari"><span>兼容苹果Safari浏览器的网站设计</span></li>
                    </ul>
                    <p>Html5 + CSS3 响应式布局<br />卓越的浏览器兼容性<br />因为高端，所以出众</p>
                </div>
                <div class="swiper-slide nth3">
                    <ul class="list-inline">
                        <li class="windows"><span>跨windows平台网站制作</span></li><li class="ios"><span>跨ios平台网站制作</span></li><li class="andriod"><span>跨andriod平台网站制作</span></li>
                    </ul>
                    <p>基于 B/S 架构的网站建设<br />无障碍的跨平台应用<br />无须用户下载安装即可使用<br />云端管理，轻松维护</p>
                </div>
            </div>
        </div>
        <a href="http://www.dedecms51.com" class="lookall" target="_blank">你以为看到了网站的全部？</a>
    </div>
</section>

<section class="marketing">
    <div class="box">
        <div class="caption">
            <i></i><span>整合营销，抢占商机</span>
            <br class="clear" />
        </div>
        <ul class="items list-inline">
            <li class="se">
                <i></i><strong>搜索引擎</strong>
                <p>SEO 优化<br />搜索引擎竞价</p>
            </li>
            <li class="weixin">
                <i></i><strong>微信营销</strong>
                <p>公众账号 / 微网站<br />微盟 ( 微社区 )</p>
            </li>
            <li class="weibo">
                <i></i><strong>微博营销</strong>
                <p>企业蓝V认证<br />官方微博接入网站</p>
            </li>
            <li class="sms">
                <i></i><strong>消息推送</strong>
                <p>短信平台接口<br />Email 推送</p>
            </li>
            <li class="pay">
                <i></i><strong>在线支付</strong>
                <p>支付宝、银联<br />Paypal 接口</p>
            </li>
            <li class="bbs">
                <i></i><strong>论坛聚人</strong>
                <p>独立开发<br />会员打通</p>
            </li>
        </ul>
    </div>
</section>

<section class="aboutus">
    <ul class="menu"><li>思想</li><li>关于</li><li>荣誉</li></ul>
    <div class="swiper-container items">
        <div class="swiper-wrapper">
            <div class="swiper-slide nth1">
                <strong>厚积薄发</strong>
                <p>登上峰顶，不是为了饱览风光，是为了寻找更高的山峰<br />日出东方，告别了昨天的荣耀，将光芒照向更远的地方<br />一路上，我们更在意如何积累和沉淀</p>
                <u>下一秒，让你看，我们到底有多强</u>
            </div>
            <div class="swiper-slide nth2">
                <strong>织梦无忧论坛</strong>
                <p>成立于2008年，坐落于郑州高新技术开发区，是中国优秀的互联网服务提供商。自成立以来，专注于高端网站建设、移动互联应用、B/S架构系统研发、云服务器部署和运维，为企业客户的互联网应用提供一站式服务。</p>
                <p>我们始终坚持以客户需求为导向，为追求用户体验设计，提供有针对性的项目解决方案，织梦人将不断地超越自我，挑战险峰！</p>
            </div>
            <div class="swiper-slide nth3">
                <strong>放下荣誉，放眼未来</strong>
                <ul>
                    <li>2009年<u>-</u>荣获经开区创新企业</li>
                    <li>2010年<u>-</u>设计联盟评选为金牌设计企业</li>
                    <li>2010年<u>-</u>荣获经开区高新技术企业</li>
                    <li>2011年<u>-</u>成功注册 " 织梦 " 商标，树立品牌</li>
                    <li>2013年<u>-</u>已拥有自主知识产权，国家软件著作权达12项之多</li>
                </ul>
            </div>
        </div>
    </div>
    <table class="exp">
        <tr>
            <td><u>611</u>位企业客户信赖之选</td>
            <td><u>267</u>上市/集团企业设计作品</td>
            <td><u>2010</u>年度金牌设计企业</td>
            <td><u>12</u>项国家软件著作权</td>
            <td><u>96%</u>以上的客户续费率</td>
        </tr>
    </table>
</section>

<section class="contact">
    <div class="box">
        <div class="above">
            <div class="wechat"><img src="${pageContext.request.contextPath}/statics/Picture/wechat_code.jpg" width="140" height="140" alt="扫描关注织梦微信公众账号" /></div>
            <div class="left">
                <a href="tel:150-2021-7966" title="网站制作咨询热线" class="tel"></a>
                <p>中国<u>·</u>北京<u></u>昌平<br />联系电话：150-2021-7966 <br>地址：沙河玩家灯火 <br />邮编：000000</p>
            </div>
            <div class="right">
                Email：Service@summer0312.com<br /> Copyright 2008-2015<u></u>汇贤 版权所有<br />鲁ICP备 88888888 号<br />
            </div>
        </div>
    </div>
</section>

<div class="dock">
    <ul class="icons">
        <li class="up"><i></i></li>
        <li class="im">
            <i></i><p>网站建设咨询<br />在线沟通，请点我<a href="http://wpa.qq.com/msgrd?v=3&uin=108925289&site=qq&menu=yes" target="_blank">在线咨询</a></p>
        </li>
        <li class="tel">
            <i></i><p>网站热线：<br />150-2021-7966<br /></p>
        </li>
        <li class="wechat">
            <i></i><p><img src="${pageContext.request.contextPath}/statics/Picture/wechat_code.jpg" alt="扫描关注网站建设微信公众账号" /></p>
        </li>
        <li class="down"><i></i></li>
    </ul>
    <a class="switch"></a>
</div>

<script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "//hm.baidu.com/hm.js?a821a161aa4214f5ff5b8ca372960ebb";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
</body>
</html>