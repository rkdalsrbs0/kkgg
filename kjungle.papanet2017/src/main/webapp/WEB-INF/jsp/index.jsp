<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<c:import url="/WEB-INF/jsp/include/header.jsp" />
	<div class="main_slider">
		<ul class="bxslider">
			<c:choose>
				<c:when test="${fn:length(bannerList) != 0}">
					<c:forEach var="item" items="${bannerList}" varStatus="i">
						<li>
							<a href="${item.linkUrl }"><img src="/imgPreview.do?id=${item.fileId }&type=banner" title="${item.title }" alt="${item.idx }"/></a>
						</li>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<li>
						<a href="#"><img src="/img/main_roll01.png" title="제목" alt="슬라이드이미지"/></a>
					</li>
				</c:otherwise>
			</c:choose>
		</ul>
	</div>
	
	<div class="container_all">
		<div class="container_main">
			<div class="main_list">
				<div class="main_list_title">
					<img src="img/bullet_main01.png">
					<p>정책 제대로 알기</p>
					<a href="/policy/policyKnow"><img src="img/bullet_main_more.png"></a>
				</div>
				<ul class="thumb_list">
					<c:forEach var="item" items="${policyKnow}" varStatus="i">
						<li>
							<a 
								<c:choose>
									<c:when test="${item.contentsType eq '1'}">
										href="javascript:multiView('${item.idx }')" class="multi"
									</c:when>
									<c:when test="${item.contentsType eq '2' }">
										href="javascript:movieView('${item.idx }')" class="movie"
									</c:when>
									<c:otherwise>
										href="/contents/${item.idx }" 
									</c:otherwise>
								</c:choose>
								>
								<c:choose>
									<c:when test="${item.contentsType eq '1'}">
										<i class="multi">여러장</i>
									</c:when>
									<c:when test="${item.contentsType eq '2' }">
										<i class="movie">동영상</i>
									</c:when>
									<c:otherwise>
									</c:otherwise>
								</c:choose>
								<img src="/imgPreview.do?id=${item.thumbFid}&type=">
								<p>${item.title }</p>
								<span class="thumb_date">${item.startDate}</span>
							</a>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>

	<div class="container_main">
		<div class="main_list">
			<div class="main_list_title">
				<img src="img/bullet_main02.png">
				<p>아빠 맞춤형 육아정보</p>
				<a href="/custom/bringUp"><img src="img/bullet_main_more.png"></a>
			</div>
			<ul class="thumb_list">
				<c:forEach var="item" items="${custom}" varStatus="i">
					<li>
						<a 
							<c:choose>
								<c:when test="${item.contentsType eq '1'}">
									href="javascript:multiView('${item.idx }')" class="multi"
								</c:when>
								<c:when test="${item.contentsType eq '2' }">
									href="javascript:movieView('${item.idx }')" class="movie"
								</c:when>
								<c:otherwise>
									href="/contents/${item.idx }" 
								</c:otherwise>
							</c:choose>
							>
							<c:choose>
								<c:when test="${item.contentsType eq '1'}">
									<i class="multi">여러장</i>
								</c:when>
								<c:when test="${item.contentsType eq '2' }">
									<i class="movie">동영상</i>
								</c:when>
								<c:otherwise>
								</c:otherwise>
							</c:choose>
							<img src="/imgPreview.do?id=${item.thumbFid}&type=">
							<p>${item.title }</p>
							<span class="thumb_date">${item.startDate}</span>
						</a>
					</li>
				</c:forEach>
			</ul>
		</div>
	</div>
	
	<div class="container_all">
		<div class="container_main">
			<div class="main_list">
				<div class="main_list_title">
					<img src="img/bullet_main03.png">
					<p>아빠 심리지원</p>
					<a href="/mind/mentoring"><img src="img/bullet_main_more.png"></a>
				</div>
				<ul class="thumb_list">
					<c:forEach var="item" items="${mind}" varStatus="i">
					<li>
						<a 
							<c:choose>
								<c:when test="${item.contentsType eq '1'}">
									href="javascript:multiView('${item.idx }')" class="multi"
								</c:when>
								<c:when test="${item.contentsType eq '2' }">
									href="javascript:movieView('${item.idx }')" class="movie"
								</c:when>
								<c:otherwise>
									href="/contents/${item.idx }" 
								</c:otherwise>
							</c:choose>
							>
							<c:choose>
								<c:when test="${item.contentsType eq '1'}">
									<i class="multi">여러장</i>
								</c:when>
								<c:when test="${item.contentsType eq '2' }">
									<i class="movie">동영상</i>
								</c:when>
								<c:otherwise>
								</c:otherwise>
							</c:choose>
							<img src="/imgPreview.do?id=${item.thumbFid}&type=">
							<p>${item.title }</p>
							<span class="thumb_date">${item.startDate}</span>
						</a>
					</li>
				</c:forEach>
				</ul>
			</div>
		</div>
	</div>

	<div class="container_main">
		<ul class="main_banner01">
			<li><a href="#"><img src="img/main_banner01.png"></a></li>
			<li><a href="#"><img src="img/main_banner01.png"></a></li>
			<li><a href="#"><img src="img/main_banner01.png"></a></li>
			<li><a href="#"><img src="img/main_banner01.png"></a></li>
			<li><a href="#"><img src="img/main_banner01.png"></a></li>
		</ul>
	</div>

	<div class="container_main">
		<ul class="main_banner">
			<li><a href="#"><img src="img/main_banner01.png"></a></li>
			<li><a href="#"><img src="img/main_banner01.png"></a></li>
			<li><a href="#"><img src="img/main_banner01.png"></a></li>
			<li><a href="#"><img src="img/main_banner01.png"></a></li>
			<li><a href="#"><img src="img/main_banner01.png"></a></li>
		</ul>
		<a href="#" class="move left">left</a>
		<a href="#" class="move right">right</a>
	</div>

	<div class="main_list_area">
		<div class="faq_main">
			<p><strong>자주묻는</strong> 질문<a href="/ask/faq?pagenos=1">more</a></p>
			<ul>
				<c:forEach var="item" items="${faqList}" varStatus="i">
					<li><a href="/ask/faq?pagenos=1">Q. ${item.title }</a></li>
				</c:forEach>
			</ul>
		</div>
		<div class="data_main">
			<p><strong>자료실</strong><a href="/ask/scrap?pagenos=1">more</a></p>
			<ul>
				<c:forEach var="item" items="${articleList}" varStatus="i">
					<li>
						<a href="/ask/scrap/view/${item.idx }?type=normal&search=">
							[${(item.articleType eq '0' ? '보도' : '')}${(item.articleType eq '1' ? '통계' : '')}${(item.articleType eq '2' ? '기사' : '')}]  ${item.title }
						</a>
					</li>
				</c:forEach>
			</ul>
		</div>
	</div>
<c:import url="/WEB-INF/jsp/include/footer.jsp" />

<!-- bxSlider Javascript file -->
<script src="js/jquery.bxslider.js"></script>
<!-- bxSlider CSS file -->
<link href="css/jquery.bxslider.css" rel="stylesheet" />
<script>
$(function(){
	$('.bxslider').bxSlider({
	  mode:'horizontal', //default : 'horizontal', options: 'horizontal', 'vertical', 'fade'
	  speed:1000, //default:500 이미지변환 속도
	  pause:5000,//롤링속도
	  pager: true,      // 현재 위치 페이징 표시 여부 설정
	  auto: false, //default:false 자동 시작
	  captions: true, // 이미지의 title 속성이 노출된다.
	  autoControls: false, //default:false 정지,시작 콘트롤 노출, css 수정이 필요
	});
});
</script>
</body>
</html>