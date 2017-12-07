<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="topMenuId" value="3" scope="request"/>
<c:set var="categoryId" value="3" scope="request"/>
<c:set var="mgnb" value="3" scope="request"/>
<c:import url="/WEB-INF/jsp/include/header.jsp" />
<c:import url="/WEB-INF/jsp/mind/include/category.jsp" />
	<div class="container">
		<div class="contents_view">
			<div class="contents_view_center">
				<div class="title">${contents.title }</div>
				<div class="date01">${contents.startDate }</div>
				<div class="homepage">
					<c:choose>
						<c:when test="${contents.linkUrl ne null }">
						홈페이지  <a href="${contents.linkUrl }" target="_blank"><span>${contents.linkUrl }</span></a>
						<a href="javascript:contentCopyURI()" class="add_copy">주소복사</a>
					</c:when>
					<c:otherwise>
						<span>등록된 주소가 없습니다.</span>
					</c:otherwise>
					</c:choose>
				</div>
			</div>
			<div class="meeting_view">
				<div class="padd_left"><img src="/imgPreview.do?id=${contents.thumbFid }&type="></div>
				<p>
					${contents.content }
				</p>
			</div>
		</div>
		<div class="share">
			<a href="javascript:void(0)" class="btn_share">공유</a>
			<div class="share_more">
				<a href="#" onclick="return sendSNS('fa');"><img src="/img/share_facebook.png" alt="페이스북"></a>
				<a href="javascript:kakaoLink('${contents.idx }');"><img src="/img/share_kakaotalk.png" alt="카카오톡"></a>
				<a href="#" onclick="return sendSNS('blog');"><img src="/img/share_blog.png" alt="블로그"></a>
				<a href="#" onclick="return sendSNS('kakaostory');"><img src="/img/share_kakaostory.png" alt="카카오스토리"></a>
				<a href="#" onclick="return sendSNS('line');"><img src="/img/share_line.png" alt="라인"></a>
				<a href="#" onclick="return sendSNS('tw');"><img src="/img/share_twitter.png" alt="트위터"></a>
				<a href="javascript:contentCopyURI()"><img src="/img/share_copy.png" alt="주소복사"></a>
			</div>
		</div>
	</div>
<c:import url="/WEB-INF/jsp/include/footer.jsp" />