<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/header1.jsp"%>


<div id="container">

    <div class="sidebar">
        <div id="options" class="greybg">
            <dl >
                <dt>月薪范围 <em ></em></dt>
                <dd >
                    <div><a href="${pageContext.request.contextPath }/sys/xinziss?name=erk">2k以下</a></div>
                    <div><a href="${pageContext.request.contextPath }/sys/xinziss?name=erwuk">2k-5k</a></div>
                    <div><a href="${pageContext.request.contextPath }/sys/xinziss?name=shik">5k-10k</a></div>
                    <div><a href="${pageContext.request.contextPath }/sys/xinziss?name=shiwuk"> 10k-15k</a></div>
                    <div><a href="${pageContext.request.contextPath }/sys/xinziss?name=shiwuerk">15k-25k</a></div>
                    <div><a href="${pageContext.request.contextPath }/sys/xinziss?name=wushik">25k-50k</a></div>
                    <div><a href="${pageContext.request.contextPath }/sys/xinziss?name=wushiks">50k以上</a></div>
                </dd>
            </dl><!--月薪范围-->
            <dl >
                <dt>最低学历 <em ></em></dt>
                <dd >
                    <div>不限</div>
                    <div><a href="${pageContext.request.contextPath }/sys/xuelis?name=dazhuan">大专</a></div>
                    <div><a href="${pageContext.request.contextPath }/sys/xuelis?name=benke">本科</a></div>
                    <div><a href="${pageContext.request.contextPath }/sys/xuelis?name=shuoshi">硕士</a></div>
                    <div><a href="${pageContext.request.contextPath }/sys/xuelis?name=boshi">博士</a></div>
                </dd>
            </dl><!--学历-->
            <dl >
                <dt>发布时间 <em ></em></dt>
                <dd >
                    <div>今天</div>
                    <div>3天内</div>
                    <div>一周内</div>
                    <div>一月内</div>
                </dd>
            </dl><!--发布时间-->
        </div>
    </div>

    <div class="content">

        <div id="search_box">

            <form id="searchForm" name="searchForm" action="${pageContext.request.contextPath }/sys/pagesearch" method="post">

                <ul id="searchType">
                    <li data-searchtype="1" class="type_selected">职位</li>
                    <%--<li data-searchtype="4">公司</li>--%>
                </ul>
                <div class="searchtype_arrow"></div>
                <input type="text" id="search_input" name = "zhiweis"  tabindex="1"   placeholder="请输入职位名称，如：产品经理"  />

                <input type="hidden" name="pageIndexs" value="1"/>
                <input type="submit" id="search_button" value="搜索" />
            </form>
        </div><%--搜索框--%>
        <style>
            .ui-autocomplete{width:488px;background:#fafafa !important;position: relative;z-index:10;border: 2px solid #91cebe;}
            .ui-autocomplete-category{font-size:16px;color:#999;width:50px;position: absolute;z-index:11; right: 0px;/*top: 6px; */text-align:center;border-top: 1px dashed #e5e5e5;padding:5px 0;}
            .ui-menu-item{ *width:439px;vertical-align: middle;position: relative;margin: 0px;margin-right: 50px !important;background:#fff;border-right: 1px dashed #ededed;}
            .ui-menu-item a{display:block;overflow:hidden;}
        </style>
        <script type="text/javascript" src="/statics/js/search.min.js"></script>
        <dl class="hotSearch">
            <dt>热门搜索：</dt>
            <dd><a href="list.htmlJava?labelWords=label&city=全国">Java</a></dd>
            <dd><a href="list.htmlPHP?labelWords=label&city=全国">PHP</a></dd>
            <dd><a href="list.htmlAndroid?labelWords=label&city=全国">Android</a></dd>
            <dd><a href="list.htmliOS?labelWords=label&city=全国">iOS</a></dd>
            <dd><a href="list.html前端?labelWords=label&city=全国">前端</a></dd>
            <dd><a href="list.html产品经理?labelWords=label&city=全国">产品经理</a></dd>
            <dd><a href="list.htmlUI?labelWords=label&city=全国">UI</a></dd>
            <dd><a href="list.html运营?labelWords=label&city=全国">运营</a></dd>
            <dd><a href="list.htmlBD?labelWords=label&city=全国">BD</a></dd>
            <dd><a href="list.html?gx=实习&city=全国">实习</a></dd>
        </dl>			<div class="breakline"></div>
        <dl class="workplace" id="workplaceSelect">
            <dt class="fl">工作地点：</dt>
            <dd >
                <a href="javascript:;" class="current">全国</a>
                |
            </dd>
            <dd >
                <a href="javascript:;" >北京</a>
                |
            </dd>
            <dd >
                <a href="javascript:;" >上海</a>
                |
            </dd>
            <dd >
                <a href="javascript:;" >广州</a>
                |
            </dd>
            <dd >
                <a href="javascript:;" >深圳</a>
                |
            </dd>
            <dd >
                <a href="javascript:;" >成都</a>
                |
            </dd>
            <dd >
                <a href="javascript:;" >杭州</a>
                |
            </dd>
            <dd >
                <a href="javascript:;" >武汉</a>
                |
            </dd>
            <dd >
                <a href="javascript:;" >南京</a>
                |
            </dd>
            <dd  class="more" >
                <a href="javascript:;" >其他</a>
                <div class="triangle citymore_arrow"></div>
            </dd>
            <dd id="box_expectCity" class="searchlist_expectCity dn">
                <span class="bot"></span>
                <span class="top"></span>
                <dl>
                    <dt>ABCDEF</dt>
                    <dd>
                        <span>北京</span>
                        <span>长春</span>
                        <span>成都</span>
                        <span>重庆</span>
                        <span>长沙</span>
                        <span>常州</span>
                        <span>东莞</span>
                        <span>大连</span>
                        <span>佛山</span>
                        <span>福州</span>
                    </dd>
                </dl>
                <dl>
                    <dt>GHIJ</dt>
                    <dd>
                        <span>贵阳</span>
                        <span>广州</span>
                        <span>哈尔滨</span>
                        <span>合肥</span>
                        <span>海口</span>
                        <span>杭州</span>
                        <span>惠州</span>
                        <span>金华</span>
                        <span>济南</span>
                        <span>嘉兴</span>
                    </dd>
                </dl>
                <dl>
                    <dt>KLMN</dt>
                    <dd>
                        <span>昆明</span>
                        <span>廊坊</span>
                        <span>宁波</span>
                        <span>南昌</span>
                        <span>南京</span>
                        <span>南宁</span>
                        <span>南通</span>
                    </dd>
                </dl>
                <dl>
                    <dt>OPQR</dt>
                    <dd>
                        <span>青岛</span>
                        <span>泉州</span>
                    </dd>
                </dl>
                <dl>
                    <dt>STUV</dt>
                    <dd>
                        <span>上海</span>
                        <span>石家庄</span>
                        <span>绍兴</span>
                        <span>沈阳</span>
                        <span>深圳</span>
                        <span>苏州</span>
                        <span>天津</span>
                        <span>太原</span>
                        <span>台州</span>
                    </dd>
                </dl>
                <dl>
                    <dt>WXYZ</dt>
                    <dd>
                        <span>武汉</span>
                        <span>无锡</span>
                        <span>温州</span>
                        <span>西安</span>
                        <span>厦门</span>
                        <span>烟台</span>
                        <span>珠海</span>
                        <span>中山</span>
                        <span>郑州</span>
                    </dd>
                </dl>
            </dd>
        </dl><%--地点筛选--%>

        <ul class="hot_pos reset">
           <%-- <form action="${pageContext.request.contextPath }/sys/mainlistpage.html">--%>
                <c:if test="${recruitList != null }">
                    <c:forEach var="recruit" items="${recruitList}">
                        <li class="clearfix">
                                <%--<div class="hot_pos_l">--%>
                            <div class="mb10">
                                <a href="" target="_blank">${recruit.position}></a>
                                &nbsp;
                                <span class="c9"><a href="">【${recruit.name}】</a></span>
                            </div>
                            <span><em class="c7">月薪： </em>${recruit.salaryMin}-${recruit.salaryMax}</span>
                            <span>发布日期:${recruit.publishtime}</span>
                        </li>
                        &nbsp;&nbsp;&nbsp;
                    </c:forEach>
                </c:if>
        </ul>


      <input type="hidden" id="totalPageCount" value="${totalPageCount}"/>
        <c:import url="common/rollpage2.jsp">
            <c:param name="totalCount" value="${totalCount}"/>
            <c:param name="currentPageNo" value="${currentPageNo}"/>
            <c:param name="totalPageCount" value="${totalPageCount}"/>
        </c:import>

    </div>

    <script>
        $(function(){
            /***************************
             * 分页
             */
            /*$('.Pagination').pager({
             currPage: 1,
             pageNOName: "pn",
             form: "searchForm",
             pageCount: 30,
             pageSize:  5
             });*/

            $(".workplace dd").not('.more').children('a').click(function(){
                $('#lc').val(1);
                editForm("cityInput" , $(this).html());
            });

            $("#box_expectCity dd span").click(function(){
                $('#lc').val(1);
                editForm("cityInput" , $(this).html());
            });

            $('#options dd div').click(function(){
                var firstName = $(this).parents('dl').children('dt').text();
                var fn = $.trim(firstName);
                if (fn=="月薪范围"){
                    editForm("yxInput" , $(this).html());
                }
                else if(fn=="工作经验"){
                    editForm("gjInput" , $(this).html());
                }
                else if(fn=="最低学历"){
                    editForm("xlInput" , $(this).html());
                }
                else if(fn=="工作性质"){
                    editForm("gxInput" , $(this).html());
                }
                else if(fn=="发布时间"){
                    editForm("stInput" , $(this).html());
                }
            });

            $('#selected ul').delegate('li span.select_remove','click',function(event){
                var firstName = $(this).parent('li').find('strong').text();
                var fn = $.trim(firstName);
                if (fn=="月薪范围")
                    editForm("yxInput" , "");
                else if(fn=="工作经验")
                    editForm("gjInput" , "");
                else if(fn=="最低学历")
                    editForm("xlInput" , "");
                else if(fn=="工作性质")
                    editForm("gxInput" , "");
                else if(fn=="发布时间")
                    editForm("stInput" , "");
            });

            /* search结果飘绿	*/
            (function($) {
                var searchVal = $('#search_input').val();
                var reg = /\s/g;
                searchVal = searchVal.replace(reg, "").split("");

                var resultL = '';
                var resultR = '';
                $('.hot_pos li').each(function(){
                    resultL = $('.hot_pos_l a',this).text().split("");
                    $.each(resultL,function(i,v){
                        if($.inArray(v.toLowerCase(),searchVal) != -1 || $.inArray(v.toUpperCase(),searchVal) != -1){
                            resultL[i] = '<span>'+ v +'</span>';
                        }
                    });
                    $('.hot_pos_l a',this).html(resultL.join(''));

                    resultR = $('.hot_pos_r .mb10 a',this).text().split("");
                    $.each(resultR,function(i,v){
                        if($.inArray(v.toLowerCase(),searchVal) != -1 || $.inArray(v.toUpperCase(),searchVal) != -1){
                            resultR[i] = '<span>'+ v +'</span>';
                        }
                    });
                    $('.hot_pos_r .mb10 a',this).html(resultR.join(''));
                });

            })(jQuery);

            //didi tip
            if($.cookie('didiTip') != 1 && false){
                $('#tip_didi').show();
            }
            $('#tip_didi a').click(function(){
                $(this).parent().remove();
                $.cookie('didiTip',1,{ expires: 30, path: '/'});
            });

        });

        function editForm(inputId,inputValue){
            $("#"+inputId).val(inputValue);
            var keyword = $.trim($('#search_input').val());
            var reg =  /[`~!@\$%\^\&\*\(\)_<>\?:"\{\},\\\/;'\[\]]/ig;
            var re = /#/g;
            var r = /\./g;
            var kw = keyword.replace(reg," ");

            if(kw == ''){
                $('#searchForm').attr('action','list.html所有职位').submit();
            }else{
                kw = kw.replace(re,'井');
                kw = kw.replace(r,'。');
                $('#searchForm').attr('action','list.html'+kw).submit();
            }
            //$("#searchForm").submit();
        }
    </script>

    <div class="clear"></div>
    <input type="hidden" id="resubmitToken" value="" />
    <a id="backtop" title="回到顶部" rel="nofollow"></a>
</div>
</div><!-- end #body -->
<div id="footer" style="margin-top: 150px"></div>

<script type="text/javascript" src="../../statics/js/core.min.js"></script>
<script type="text/javascript" src="../../statics/js/popup.min.js"></script>
<script type="text/javascript" src="../../statics/js/Seeker_HomePage.js"></script>
<%@include file="common/footer.jsp"%>
</body>
</html>




