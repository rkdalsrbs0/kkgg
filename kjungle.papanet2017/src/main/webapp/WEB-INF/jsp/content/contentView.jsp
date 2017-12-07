<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<c:choose>
		<c:when test="${content.viewLocation eq '0' }">
			<c:set var="topMenuId" value="1" scope="request"/>
			<c:set var="categoryId" value="3" scope="request"/>
			<c:set var="mgnb" value="1" scope="request"/>
			<c:import url="/WEB-INF/jsp/include/header.jsp" />
			<c:import url="/WEB-INF/jsp/policy/include/category.jsp" />
		</c:when>
		<c:when test="${content.viewLocation eq '1' }">
			<c:set var="topMenuId" value="2" scope="request"/>
			<c:set var="categoryId" value="1" scope="request"/>
			<c:set var="mgnb" value="2" scope="request"/>
			<c:import url="/WEB-INF/jsp/include/header.jsp" />
			<c:import url="/WEB-INF/jsp/custom/include/category.jsp" />
		</c:when>
		<c:when test="${content.viewLocation eq '2' }">
			<c:set var="topMenuId" value="2" scope="request"/>
			<c:set var="categoryId" value="2" scope="request"/>
			<c:set var="mgnb" value="2" scope="request"/>
			<c:import url="/WEB-INF/jsp/include/header.jsp" />
			<c:import url="/WEB-INF/jsp/custom/include/category.jsp" />
		</c:when>
		<c:when test="${content.viewLocation eq '3' }">
			<c:set var="topMenuId" value="2" scope="request"/>
			<c:set var="categoryId" value="3" scope="request"/>
			<c:set var="mgnb" value="2" scope="request"/>
			<c:import url="/WEB-INF/jsp/include/header.jsp" />
			<c:import url="/WEB-INF/jsp/custom/include/category.jsp" />
		</c:when>
		<c:when test="${content.viewLocation eq '4' }">
			<c:set var="topMenuId" value="3" scope="request"/>
			<c:set var="categoryId" value="1" scope="request"/>
			<c:set var="mgnb" value="3" scope="request"/>
			<c:import url="/WEB-INF/jsp/include/header.jsp" />
			<c:import url="/WEB-INF/jsp/mind/include/category.jsp" />
		</c:when>
		<c:when test="${content.viewLocation eq '5' }">
			<c:set var="topMenuId" value="3" scope="request"/>
			<c:set var="categoryId" value="2" scope="request"/>
			<c:set var="mgnb" value="3" scope="request"/>
			<c:import url="/WEB-INF/jsp/include/header.jsp" />
			<c:import url="/WEB-INF/jsp/mind/include/category.jsp" />
		</c:when>
		<c:otherwise>
			<c:import url="/WEB-INF/jsp/include/header.jsp" />
		</c:otherwise>
	</c:choose>
<head>
	<meta property="og:site_name" content="http://www.papanet4you.kr/contents/${content.idx }" />
	<meta property="og:url" content="http://www.papanet4you.kr/contents/${content.idx }" />
</head>
	<div class="container">
		<div class="contents_view">
			<!-- <div class="padd"><img src="/imgPreview.do?id=${content.thumbFid}&type=" style="height: 500px;"></div> -->
			<div class="title">${content.title }</div>
			<div class="date">${content.startDate }</div>
			<p>
				${content.content }
			</p>
			<div class="root">
				&lt 참고자료 :   &nbsp;&nbsp;&nbsp;<img src="/img/root_logo.png" alt="고용노동부"> &gt
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