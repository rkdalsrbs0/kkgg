<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
<title>육아홀릭 - 아빠의 당당한 선택</title>
<meta property="og:title" content="육아홀릭 아빠의 당당한 선택 - 아빠넷" />
<meta property="og:type" content="website" />
<meta property="og:image" content="http://www.papanet4you.kr/img/logo.png" />
<meta property="og:site_name" content="http://www.papanet4you.kr" />
<meta property="og:url" content="http://www.papanet4you.kr" />
<meta property="og:description" content="고용노동부가 아빠들을 위해서 만든  육아+휴직정보 온라인 플랫폼"/>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" type="text/css" href="/css/reset.css" />
<link rel="stylesheet" type="text/css" href="/css/daddy.css" />

<!-- Global site tag (gtag.js) - Google Analytics -->
<!-- 구글 GA통계-->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-110670841-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-110670841-1');
</script>

<script type="text/javascript" src="/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="/js/daddy.js"></script>
<script type='text/javascript' src='/js/jquery.simplemodal.js'></script>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type='text/javascript' src='/js/contentsShow.js'></script>
<style>
.slide-pager { position:absolute!important; text-align: center; font-size: 18px!important; line-height:34px; border-radius:17px; font-weight: bold; color: #666;
   padding: 0 25px!important; display:inline-block; background:#000; right: 0!important;/*right:20px!important;*/ left:auto!important; top:10px!important; opacity:0.5; }
   img{margin-bottom: 0px;}
</style>
<script>
function openPage(url){
	var openPage = window.open("about:blank");
	openPage.location.href = url; 
}
</script>
</head>
<body>
<input type="hidden" id="slideCnt" value=""/>
<input type="hidden" id="videoUrl" value=""/>
<input type="hidden" id="cardNewsUrl" value=""/>
<div class="wrap">
	<div class="header">
		<div class="header_top">
			<div class="header_top_area">
				<div class="left"><a href="http://www.work.go.kr/jobcenter/index.do" target="_blank">고용센터 바로가기 <span>&gt</span></a></div>
				<div class="logo"><a href="/"><img src="/img/logo.png" alt="로고"></a></div>
				<div class="right"><img src="/img/facebook.png" alt="페이스북" onclick="openPage('https://www.facebook.com/papanet4you');" style="cursor: pointer;"/> <a href="#" class="menu">전체메뉴</a></div>
				<a href="#" class="btn_menu"><img src="/img/m_menu.png" alt="전체메뉴보기"></a>
				<div class="m_menu">
					<h1>전체메뉴 <a href="#" class="m_close"><img src="/img/m_menu_close.png" alt="전체메뉴닫기"></a></h1>
					<h2>아빠육아지원 정책정보</h2>
					<ul class="m_menu_dep menu3">
						<li><a href="/policy/leaveInfo">육아휴직정보</a></li>
						<li><a href="/policy/supportInfo?pagenos=1">육아지원정보</a></li>
						<li><a href="/policy/policyKnow">정책 제대로 알기</a></li>
					</ul>
					<h2>아빠 맞춤형 육아정보</h2>
					<ul class="m_menu_dep menu3">
						<li><a href="/custom/bringUp">건강하게 키우기</a></li>
						<li><a href="/custom/play">재밌게 놀기</a></li>
						<li><a href="/custom/hug">토닥토닥 껴안기</a></li>
					</ul>
					<h2>아빠심리지원</h2>
					<ul class="m_menu_dep menu3">
						<li><a href="/mind/mentoring">행복육아 멘토링</a></li>
						<li><a href="/mind/diary">아빠를 위한 그림일기</a></li>
						<li><a href="/mind/meeting">육아대디 모임</a></li>
					</ul>
					<h2>아빠육아 생생사례</h2>
					<ul class="m_menu_dep menu2">
						<li><a href="/sample/foreignList/1">해외 아빠육아 정책사례</a></li>
						<li><a href="/sample/experienceList/1">아빠육아휴직 경험기</a></li>
					</ul>
					<h2>자료실<span>자료 다운로드는 PC에서만 가능합니다.</span></h2>
					<ul class="m_menu_dep menu2">
						<li><a href="/ask/faq?pagenos=1">자주묻는 질문</a></li>
						<li><a href="/ask/scrap?pagenos=1">관련기사</a></li>
					</ul>
					<p>
						<a href="https://www.facebook.com/papanet4you" target="_blank"><img src="/img/m_menu_facebook.png" alt="페이스북"></a> 
						<a href="http://www.work.go.kr/jobcenter/index.do" target="_blank"><img src="/img/m_menu_link.png" alt="고용센터"></a>
					</p>
				</div>
			</div>
		</div>
			${(requestScope.mgnb == '1' ? '<div class="m_gnb">아빠육아지원 정책정보</div>' : '')}
			${(requestScope.mgnb == '2' ? '<div class="m_gnb">아빠맞춤형 육아정보</div>' : '')}
			${(requestScope.mgnb == '3' ? '<div class="m_gnb">아빠심리지원</div>' : '')}
			${(requestScope.mgnb == '4' ? '<div class="m_gnb">아빠육아생생사례</div>' : '')}
			${(requestScope.mgnb == '5' ? '<div class="m_gnb">자료실</div>' : '')}
		<div class="gnb_area">
			<ul class="gnb">
				<li>
					<a href="/policy/leaveInfo" class="${(requestScope.topMenuId == '1' ? 'on' : '')}">아빠육아지원 정책정보</a>
				</li>
				<li>
					<a href="/custom/bringUp" class="${(requestScope.topMenuId == '2' ? 'on' : '')}">아빠 맞춤형 육아정보</a>
				</li>
				<li>
					<a href="/mind/mentoring" class="${(requestScope.topMenuId == '3' ? 'on' : '')}">아빠심리지원</a>
				</li>
				<li>
					<a href="/sample/foreignList/1" class="${(requestScope.topMenuId == '4' ? 'on' : '')}">아빠육아생생사례</a>
				</li>
				<li class="last">
					<a href="/ask/faq?pagenos=1" class="${(requestScope.topMenuId == '5' ? 'on' : '')}">자료실</a>
				</li>
			</ul>
			<!-- 전체메뉴-->
			<div class="depth2">
				<div class="gnb2">
					<p>아빠육아지원 정책정보</p>
					<a href="/policy/leaveInfo">육아휴직 정보</a>
					<a href="/policy/supportInfo?pagenos=1">육아지원 정보</a>
					<a href="/policy/policyKnow">정책 제대로 알기</a>
				</div>
				<div class="gnb2">
					<p>아빠 맞춤형 육아정보</p>
					<a href="/custom/bringUp">건강하게 키우기</a>
					<a href="/custom/play">재밌게 놀기</a>
					<a href="/custom/hug">토닥토닥껴안기</a>
				</div>
				<div class="gnb2">
					<p>아빠심리지원</p>
					<a href="/mind/mentoring">행복육아 멘토링</a>
					<a href="/mind/diary">아빠를 위한 그림일기</a>
					<a href="/mind/meeting">육아대디모임</a>
				</div>
				<div class="gnb2">
					<p>아빠육아생생사례</p>
					<a href="/sample/foreignList/1">해외 아빠육아 정책사례</a>
					<a href="/sample/experienceList/1">아빠육아휴직 경험기</a>
				</div>
				<div class="gnb2">
					<p>자료실</p>
					<a href="/ask/faq?pagenos=1">자주 묻는 질문</a>
					<a href="/ask/scrap?pagenos=1">관련기사</a>
				</div>
				<div class="gnb2">
					<p><a href="http://www.work.go.kr/jobcenter/index.do" target="_blank">고용센터 바로가기 &gt</a></p>
					<p><a href="https://www.facebook.com/papanet4you" target="_blank">Facebook 바로가기 &gt</a></p>
				</div>
			</div>
			<!-- //전체메뉴-->
		</div>
	</div>
	
<div id="divpop" class="white_content">
	<div class="w3-content w3-display-container" id="cardNews">
	</div>
	
	<div class="share01">
		<a href="javascript:void(0)" class="btn_share01">공유</a>
	</div>
	<div class="share_more01">
		<a href="#" onclick="return cardSendSNS('fa');"><img src="/img/share_facebook.png" alt="페이스북"></a>
		<a href="javascript:cardKakaoLink();"><img src="/img/share_kakaotalk.png" alt="카카오톡"></a>
		<a href="#" onclick="return cardSendSNS('blog');"><img src="/img/share_blog.png" alt="블로그"></a>
		<a href="#" onclick="return cardSendSNS('kakaostory');"><img src="/img/share_kakaostory.png" alt="카카오스토리"></a>
		<a href="#" onclick="return cardSendSNS('line');"><img src="/img/share_line.png" alt="라인"></a>
		<a href="#" onclick="return cardSendSNS('tw');" ><img src="/img/share_twitter.png" alt="트위터"></a>
		<a href="javascript:cardCopyURI();" class="copy"><img src="/img/share_copy.png" alt="주소복사"></a>
	</div>
</div>
<div id="fade" class="black_overlay" onclick = "document.getElementById('divpop').style.visibility='hidden';document.getElementById('fade').style.visibility='hidden'">
	<a href="#" class="divpop_close"><img src="/img/layer_close.png" alt="닫기"></a>
</div>

<div id="divpop01" class="white_content01">
	<div style="position:relative">
  		<iframe id="main_frame" src="https://www.youtube.com/embed/UcJno_YaoL8" frameborder="0" gesture="media" allowfullscreen></iframe>
		<div class="movie_text" style="margin-top: -4px;">
			<p id="main_frame_title"></p>
			<span id="main_frame_content"></span>
		</div>
	</div>
	<div class="share01">
		<a href="javascript:void(0)" class="btn_share01">공유</a>
	</div>
	<div class="share_more01">
		<a href="#" onclick="return videoSendSNS('fa');"><img src="/img/share_facebook.png" alt="페이스북"></a>
		<a href="javascript:videoKakaoLink();"><img src="/img/share_kakaotalk.png" alt="카카오톡"></a>
		<a href="#" onclick="return videoSendSNS('blog');"><img src="/img/share_blog.png" alt="블로그"></a>
		<a href="#" onclick="return videoSendSNS('kakaostory');"><img src="/img/share_kakaostory.png" alt="카카오스토리"></a>
		<a href="#" onclick="return videoSendSNS('line');"><img src="/img/share_line.png" alt="라인"></a>
		<a href="#" onclick="return videoSendSNS('tw');"><img src="/img/share_twitter.png" alt="트위터"></a>
		<a href="javascript:videoCopyURI();" class="copy"><img src="/img/share_copy.png" alt="주소복사"></a>
	</div>
</div>
<div id="fade01" class="black_overlay" onclick = "document.getElementById('divpop01').style.visibility='hidden';document.getElementById('fade01').style.visibility='hidden'">
	<a href="#" class="divpop_close"><img src="/img/layer_close.png" alt="닫기"></a>
</div>