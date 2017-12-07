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
				<a href="/ask/faq?pagenos=1">자주 묻는 질문</a>
				<a href="/ask/scrap?pagenos=1" class="on">관련기사</a>
			</div>
		</div>

		<div class="lnb_body">
			<div class="search_area">
				<form name="search_form">
					<input type="text" class="txt02 w_long" name="search" placeholder="제목 또는 내용을 입력하세요." value="${search }" onkeydown="searchEnterkey();"><a href="javascript:search();" class="btn_search">검색</a>
				</form>
			</div>
			
			<div class="list_type02">
				<dl>
					<dt class="l_no">번호</dt>
					<dt class="l_cate">구분</dt>
					<dt class="l_title">제목</dt>
					<dt class="l_file">첨부파일</dt>
					<dt class="l_date">등록일</dt>
					<dt class="l_count">조회수</dt>
				</dl>
			</div>

			<div class="list_type02">
				<c:forEach var="item" items="${articleList}" varStatus="i">
					<c:set var="itemPage" value="${((i.count-1)/10)+1 }"/>
					<fmt:parseNumber var="itempageVal" value="${itemPage }" integerOnly="true" />
					<c:if test="${pageno==itempageVal }">
						<a href="/ask/scrap/view/${item.idx }?type=${display}&search=${search}">
							<dl>
								<dd class="l_no">${fn:length(articleList)-i.count+1}</dd>
								<dd class="l_cate">
									${(item.articleType eq '0' ? '보도' : '')}
									${(item.articleType eq '1' ? '통계' : '')}
									${(item.articleType eq '2' ? '기사' : '')}
								</dd>
								<dd class="l_title">${item.title }</dd>
								<dd class="l_file">
									<c:if test="${item.fileId ne null && item.fileId ne '' && item.fileId ne 0}">
										<a href="/fileDownload?fileId=${item.fileId }"><img src="/img/ico_file.png"></a>
									</c:if>
								</dd>
								<dd class="l_date">${item.createdAt }</dd>
								<dd class="l_count">${item.viewCount }</dd>
							</dl>
						</a>
					</c:if>
				</c:forEach>
			</div>
			<c:choose>
				<c:when test="${search eq null }">
					<div class="paginate">
						<a href="/ask/scrap?pagenos=1" class="pre"><</a>
						<c:if test="${pageno!=1}">
							<a href="/ask/scrap?pagenos=${prev_pageno}">Previous</a>
						</c:if>
						
						<c:forEach var="i" begin="1" end="${page_eno}" step="1">
							<a href="/ask/scrap?pagenos=${i}">
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
							<a href="/ask/scrap?pagenos=${pageno+1 }">Next</a>
						</c:if>
						<a href="/ask/scrap?pagenos=${total_page }" class="next">></a>
					</div>
				</c:when>
				<c:otherwise>
					<div class="paginate">
						<a href="/ask/scrap?pagenos=1&search=${search }" class="pre"><</a>
						<c:if test="${pageno!=1}">
							<a href="/ask/scrap?pagenos=${prev_pageno}&search=${search }">Previous</a>
						</c:if>
						
						<c:forEach var="i" begin="1" end="${page_eno}" step="1">
							<a href="/ask/scrap?pagenos=${i}&search=${search }">
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
							<a href="/ask/scrap?pagenos=${pageno+1 }&search=${search }">Next</a>
						</c:if>
						<a href="/ask/scrap?pagenos=${total_page }&search=${search }" class="next">></a>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
<c:import url="/WEB-INF/jsp/include/footer.jsp" />
<script>
var frmObj = document.search_form;

function searchEnterkey(){
	 if (window.event.keyCode == 13) {
		frmObj.action="/ask/scrap/search"
		frmObj.submit();
	 }
}
function search(){
	frmObj.action="/ask/scrap/search"
	frmObj.submit();
}
</script>