<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="topMenuId" value="5" scope="request"/>
<c:set var="mgnb" value="5" scope="request"/>
<c:import url="/WEB-INF/jsp/include/header.jsp" />
	<div class="container">
		<div class="lnb">
			<div class="lnb_top">
				<img src="/img/ico_lnb01.png">
				<p>자료실</p>
			</div>
			<div class="lnb_menu">
				<a href="/ask/faq?pagenos=1" class="on">자주 묻는 질문</a>
				<a href="/ask/scrap?pagenos=1">관련기사</a>
			</div>
		</div>

		<div class="lnb_body">
			<div class="search_area">
				<form name="search_form">
					<input type="text" class="txt02 w_long" name="search" placeholder="제목 또는 내용을 입력하세요." value="${search }" onkeydown="searchEnterkey();"><a href="javascript:search();" class="btn_search">검색</a>
				</form>
			</div>
			<input type="hidden" name="categoryCnt" id="categoryCnt" value="${fn:length(categoryList) }">
			<div class="tab" id="tab">
			
				<a class="${(param.categoryId eq null ? 'on' : '')}" href="/ask/faq?pagenos=1">전체</a>
				<c:forEach var="item" items="${categoryList}" varStatus="i">
					<a href="/ask/faq?categoryId=${item.idx }&pagenos=1" class="${(param.categoryId eq item.idx ? 'on' : '')}">${item.categoryType }</a>
				</c:forEach>
				
			</div>
			
			<div id="tabcontent0" style="display:">
				<!-- UI Object -->
				<div class="faq">
					<ul>
						<c:forEach var="item" items="${faqList}" varStatus="i">
						<c:set var="itemPage" value="${((i.count-1)/10)+1 }"/>
						<fmt:parseNumber var="itempageVal" value="${itemPage }" integerOnly="true" />
						<c:if test="${pageno==itempageVal }">
							<li class="article hide">
								<p class="q"><a href="#a1" class="trigger">Q:${item.title }</a></p>
								<p class="a" style="overflow:hidden; padding-top:10px; margin-top:0px; padding-bottom:10px; margin-bottom:0px;">
								A: <c:set var="cont" value='${fn:replace(item.content, "<p>", "")}'/>
									<c:set var="cont" value='${fn:replace(cont, "</p>", "")}'/>
									<c:out value="${cont }"/>
								</p>
							</li>
						</c:if>
						</c:forEach>
					</ul>
				</div>
				<!-- //UI Object -->
				<c:choose>
					<c:when test="${search eq null }">
							<c:choose>
								<c:when test="${param.categoryId eq null }">
									<div class="paginate">
										<a href="/ask/faq?pagenos=1" class="pre"><</a>
										<c:if test="${pageno!=1}">
											<a href="/ask/faq?pagenos=${prev_pageno}">Previous</a>
										</c:if>
										
										<c:forEach var="i" begin="1" end="${page_eno}" step="1">
											<a href="/ask/faq?pagenos=${i}">
												<c:choose>
													<c:when test="${pageno==i}">
														<strong>${i}</strong>
													</c:when>
													<c:otherwise>
														${i}
													</c:otherwise>
												</c:choose>
											</a>
										</c:forEach>
										<c:if test="${pageno<total_page}">
											<a href="/ask/faq?pagenos=${pageno+1 }">Next</a>
										</c:if>
										<a href="/ask/faq?pagenos=${total_page }" class="next">></a>
									</div>
								</c:when>
								<c:otherwise>
									<div class="paginate">
										<a href="/ask/faq?pagenos=1&categoryId=${param.categoryId }" class="pre"><</a>
										<c:if test="${pageno!=1}">
											<a href="/ask/faq?pagenos=${prev_pageno}&categoryId=${param.categoryId }">Previous</a>
										</c:if>
										
										<c:forEach var="i" begin="1" end="${page_eno}" step="1">
											<a href="/ask/faq?pagenos=${i}&categoryId=${param.categoryId }">
												<c:choose>
													<c:when test="${pageno==i}">
														<strong>${i}</strong>
													</c:when>
													<c:otherwise>
														${i}
													</c:otherwise>
												</c:choose>
											</a>
										</c:forEach>
										<c:if test="${pageno<total_page}">
											<a href="/ask/faq?pagenos=${pageno+1 }&categoryId=${param.categoryId }">Next</a>
										</c:if>
										<a href="/ask/faq?pagenos=${total_page }&categoryId=${param.categoryId }" class="next">></a>
									</div>
								</c:otherwise>		
							</c:choose>
						</c:when>
						<c:otherwise>
							<div class="paginate">
								<a href="/ask/faq?search=${search }&pagenos=1" class="pre"><</a>
								<c:if test="${pageno!=1}">
									<a href="/ask/faq?search=${search }&pagenos=${prev_pageno}">Previous</a>
								</c:if>
								
								<c:forEach var="i" begin="1" end="${page_eno}" step="1">
									<a href="/ask/faq?search=${search }&pagenos=${i}">
										<c:choose>
											<c:when test="${pageno==i}">
												<strong>${i}</strong>
											</c:when>
											<c:otherwise>
												${i}
											</c:otherwise>
										</c:choose>
									</a>
								</c:forEach>
								<c:if test="${pageno<total_page}">
									<a href="/ask/faq?search=${search }&pagenos=${pageno+1 }">Next</a>
								</c:if>
								<a href="/ask/faq?search=${search }&pagenos=${total_page }" class="next">></a>
							</div>
						</c:otherwise>
					</c:choose>
			</div>
		</div>
	</div>
<c:import url="/WEB-INF/jsp/include/footer.jsp" />
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script> 
<script type="text/javascript">
jQuery(function(){
	
	var article = $('.faq .article');
	article.addClass('hide');
	article.find('.a').slideUp(100);
	
	$('.faq .article .trigger').click(function(){
		var myArticle = $(this).parents('.article:first');
		if(myArticle.hasClass('hide')){
			article.addClass('hide').removeClass('show'); // 아코디언 효과를 원치 않으면 이 라인을 지우세요
			article.find('.a').slideUp(100); // 아코디언 효과를 원치 않으면 이 라인을 지우세요
			myArticle.removeClass('hide').addClass('show');
			myArticle.find('.a').slideDown(100);
		} else {
			myArticle.removeClass('show').addClass('hide');
			myArticle.find('.a').slideUp(100);
		}
	});
	
	$('.faq .hgroup .trigger').click(function(){
		var hidden = $('.faq .article.hide').length;
		if(hidden > 0){
			article.removeClass('hide').addClass('show');
			article.find('.a').slideDown(100);
		} else {
			article.removeClass('show').addClass('hide');
			article.find('.a').slideUp(100);
		}
	});
	
	
});
</script>
<script>
var frmObj = document.search_form;

function searchEnterkey(){
	 if (window.event.keyCode == 13) {
		frmObj.action="/ask/faq/search"
		frmObj.submit();
	 }
}
function search(){
	frmObj.action="/ask/faq/search"
	frmObj.submit();
}
</script>