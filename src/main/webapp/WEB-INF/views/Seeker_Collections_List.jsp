<%@ page import="pojo.HxSeeker" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% HxSeeker Hs = (HxSeeker)session.getAttribute("seekInfos");%>
<%@include file="common/seekerhader.jsp"%>
<%@include file="common/seekerleft.jsp"%>
		<div class="content">
        <div class="clearfix">
            <div class="content_l">
            	<dl class="c_collections">
                    <dt>
                        <h1><em></em>我收藏的公司</h1></dt>

                    <dd>

						<c:forEach var="company" items="${companyList}">\
							<c:forEach var="a" items="${company}">
								<ul class="reset my_collections">
									<li data-id="133340">
										<a title="${a.companyname}" target="_blank" href="h/c/6636.html">
											<img alt="${a.companyname}" src="../../statics/Images/8e05f869fe0640318d62c562d6a9a322.jpg">
										</a>
										<div class="co_item">
											<h2 title="${a.companyname}">
												<a target="_blank" href="h/jobs/133340.html">
													<em>${a.companyname}</em>
												</a>
											</h2>
											<div class="co_cate">${a.companyemail}</div>
											<i></i>
											<a class="collectionCancel collection_link" id="deleteC"  href="javascript:;"
											   companyid=${a.companyid} companyname=${a.companyname}>
												取消收藏
												<span>已取消收藏</span>
											</a>
										</div>
									</li>
								</ul>
							</c:forEach>

						</c:forEach>
					</dd>

                </dl>
            </div>
       	</div>
		</div>
<script src="../../statics/js/collections.min.js"></script>
<script>
$(function(){
	$('.Pagination').pager({
	      currPage: 1,
	      pageNOName: "pageNo",
	      form: "collectionsForm",
	      pageCount: 1,
	      pageSize:  5
	});
});
</script>
			<div class="clear"></div>
			<input type="hidden" value="4c6ae41d8c254f91becdb5f9ef2d4394" id="resubmitToken">
	    	<a rel="nofollow" title="回到顶部" id="backtop"></a>
	    </div><!-- end #container -->
	</div><!-- end #body -->
	<div id="footer"></div>

<script src="../../statics/js/core.min.js" type="text/javascript"></script>
<script src="../../statics/js/popup.min.js" type="text/javascript"></script>
<script src="../../statics/js/Seeker_coll_list.js" type="text/javascript"></script>
<script type="text/javascript">
</script>

<%@include file="common/footer.jsp"%>

</body></html>