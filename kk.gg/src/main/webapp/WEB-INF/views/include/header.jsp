<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>KKGG - 개발자 커뮤니티</title>

<meta property="og:title" content="KKGG - 개발자 커뮤니티" />
<meta property="og:type" content="website" />

<link rel="stylesheet" type="text/css"
	href="/css/reset.css"/>
<link rel="stylesheet" type="text/css"
	href="/css/gongmo.css"/>
<script src="<c:url value="/js/jquery-1.11.2.min.js"/>"></script>
<!-- 팝업 -->
<!-- 이벤트 레이어 팝업 -->
<style>
/* modal popup */
.black_overlay {
	position: fixed;
	top: 0%;
	left: 0%;
	width: 100%;
	height: 100%;
	background-color: black;
	z-index: 9999;
	-moz-opacity: 0.5;
	opacity: .50;
	filter: alpha(opacity = 50);
}

.white_content {
	position: fixed;
	top: 50%;
	left: 50%;
	margin-top: -100px;
	margin-left: -200px;
	width: 400px;
	z-index: 999999999999999;
	background-color: tr;
}

.evalpop_close {
	color: #000;
	text-align: right;
	text-decoration: none;
	font-size: 12px;
	overflow: hidden;
	background-color: #5d5250;
}

.evalpop_close a {
	color: #000;
	font-weight: bold;
	text-decoration: none;
	vertical-align: middle;
	border-left: 1px solid #fff;
	margin-left: 10px;
	padding: 0 10px;
}
</style>

<script language="JavaScript">
<!--
	//function setCookie( name, value, expiredays ) {
	//    var todayDate = new Date();
	//        todayDate.setDate( todayDate.getDate() + expiredays );
	//        document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
	//   }

/* 	function closeWin() {
		if (document.notice_form.chkbox.checked) {
			setCookie("maindiv", "done", 1);
		}
		document.all['evalpop'].style.visibility = "hidden";
		document.all['fade'].style.visibility = "hidden";
	} */
//-->
</script>


<script language="Javascript">
	
<%--
cookiedata = document.cookie;
if ( cookiedata.indexOf("maindiv=done") < 0 ){
    document.all['evalpop'].style.visibility = "visible";
    document.all['fade'].style.visibility = "visible";
    }
    else {
        document.all['evalpop'].style.visibility = "hidden";
        document.all['fade'].style.visibility = "hidden";
}
--%>
	$(document)
			.ready(
					function() {
						if ("${sessionScope.menu}" == '0'
								|| "${sessionScope.menu}" == '1'
								|| "${sessionScope.menu}" == '2'
								|| "${sessionScope.menu}" == '3'
								|| "${sessionScope.menu}" == '4'
								|| "${sessionScope.menu}" == '5') {
							<%--
							document.getElementById("evalpop").style.display = "none";
							document.getElementById("fade").style.display = "none";
							--%>
							document.getElementById("logInfo").style.display = "block";
						} else {
							<%--
							document.getElementById("evalpop").style.display = "block";
							document.getElementById("fade").style.display = "block";
							--%>
							document.getElementById("logInfo").style.display = "none";
						}
					});
</script>
<!-- 이벤트 레이어 팝업 -->



</head>
<body>

	<style>
.eval_tit {
	background-color: #9C89B8;
	padding: 5px 10px;
	overflow: hidden;
	color: white;
	font-size: 14px;
	border-radius: 10px 10px 0px 0px / 10px 10px 0px 0px;
}

.eval_tit a {
/* 	color: #fff; */
	font-weight: bold;
}

.p20 {
	padding: 20px;
}

</style>
	<form name="login_member01" method="post">
		<div id="evalpop" class="white_content" style="display:none">
			<div class="eval_tit">
				<form name="notice_form">
					KKGG 로그인 
					<%--<a href="javascript:closeWin();"
						onclick="document.getElementById('evalpop').style.display='none';document.getElementById('fade').style.display='none'"
						style="float: right;">창닫기 X</a> --%>
				</form>
			</div>

			<div class="list_cover02 p20" style="background-color: white; border-radius: 0px 0px 10px 10px / 0px 0px 10px 10px;">
				<table class="list_table02">
					<colgroup>
						<col width="80px">
						<col width="">
					</colgroup>
					<tr>
						<th scope="row">아이디</th>
						<td><input type="text" name="id" tabindex=1 class="txt w_90"></td>
						<td rowspan="2" class="btn_area">
							<a href="javascript:login()" class="btn_black" tabindex=3>로그인</a>
						</td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><input type="password" name="pwd" tabindex=2
							class="txt w_90"></td>
					</tr>
					<tr>
						<td colspan="3" style="text-align: center;"><a href="/userJoin"><span class="t_gray small">아직 KKGG 회원이 아니세요? 회원가입 ☞</span></a></td>
					</tr>
				</table>
			</div>
		</div>
		<div id="fade" style="display:none" class="black_overlay"></div>

		<div class="wrap">
			<div class="header">
				<div class="header_area">
					<div class="logo">
						<a href="#" target="_blank"></a>
					</div>
					<h1>
						<a href="/"><span class="bold t_notice" style="font-family: sans-serif;">KKGG</span></a>
					</h1>
						
					<div class="tel">
						<p class="t_gray" style="font-size: 15px; padding-top: 10px;">
							<a href="#">로그인</a>
							<a href="/userJoin" style="margin-left: 30px;">회원가입</a>
							<a href="#" style="margin-left: 30px;">마이페이지</a>
							<a href="#" style="margin-left: 30px;">고객센터</a>.
<!-- 						</p> -->
					</div>
				</div>
					
				<div class="gnb_area">
					<ul class="gnb">
						<li class="${(requestScope.topMenuId == '4' ? 'on' : '')}">
						<a href="#">프로그래밍 언어</a>
						<div class="sub">
							<ul style="padding-right: 350px;">
								<li><a href="#">C</a></li>
								<li><a href="#">JAVA</a></li>
								<li><a href="#">JAVASCRIPT</a></li>
								<li><a href="#">NODE.JS</a></li>
								<li><a href="#">SWIFT</a></li>
								<li><a href="#">Go</a></li>
								<li><a href="#">TypeScript</a></li>
								<li><a href="#">PYTHON</a></li>
								<li><a href="#">PHP</a></li>
							</ul>
						</div>	
						</li>
						<li class="${(requestScope.topMenuId == '4' ? 'on' : '')}">
						<a href="#">프레임워크</a>
						<div class="sub">
							<ul style="padding-right: 570px;">
								<li><a href="#">SPRING</a></li>
							</ul>
						</div>	
						</li>
						<li class="${(requestScope.topMenuId == '4' ? 'on' : '')}">
						<a href="#">프론트엔드</a>
						<div class="sub">
							<ul style="padding-right: 130px;">
								<li><a href="#">Bootstrap</a></li>
								<li><a href="#">Foundation</a></li>
								<li><a href="#">CSS</a></li>
							</ul>
						</div>	
						</li>
						<li class="${(requestScope.topMenuId == '4' ? 'on' : '')}">
						<a href="#">백엔드</a>
						<div class="sub">
							<ul style="padding-right: 70px;">
								<li><a href="#">Symfony</a></li>
								<li><a href="#">Zend</a></li>
								<li><a href="#">Laravel</a></li>
								<li><a href="#">Rails</a></li>
								<li><a href="#">Sinatra</a></li>
								<li><a href="#">Play</a></li>
								<li><a href="#">Spark</a></li>
								<li><a href="#">Express</a></li>
								<li><a href="#">Hapi</a></li>
								<li><a href="#">Sails.js</a></li>
								<li><a href="#">AWS Lambda</a></li>
								<li><a href="#">Jekyll</a></li>
								<li><a href="#">Octopress</a></li>
							</ul>
						</div>	
						</li>
						<li class="${(requestScope.topMenuId == '4' ? 'on' : '')}">
						<a href="#">CMS</a>
						<div class="sub">
							<ul>
								<li><a href="#">WordPress</a></li>
								<li><a href="#">Drupal 8</a></li>
							</ul>
						</div>	
						</li>
						<li class="${(requestScope.topMenuId == '4' ? 'on' : '')}">
						<a href="#">데이터베이스</a>
						<div class="sub">
							<ul style="padding-right: 70px;">
								<li><a href="#">Redis</a></li>
								<li><a href="#">RethinDB</a></li>
								<li><a href="#">MySQL/MariaDB</a></li>
								<li><a href="#">PostgreSQL</a></li>
								<li><a href="#">MongoDB</a></li>
								<li><a href="#">Oracle</a></li>
							</ul>
						</div>	
						</li>
						<li class="${(requestScope.topMenuId == '4' ? 'on' : '')}">
						<a href="#">모바일 앱</a>
						<div class="sub">
							<ul style="padding-left: 470px;">
								<li><a href="#">lonic</a></li>
								<li><a href="#">React Native</a></li>
								<li><a href="#">Meteor</a></li>
							</ul>
						</div>	
						</li>
						<li class="${(requestScope.topMenuId == '4' ? 'on' : '')}">
						<a href="#">에디터와 도구</a>
						<div class="sub">
							<ul style="padding-left: 570px;">
								<li><a href="#">Atom</a></li>
								<li><a href="#">Visual Studio Code</a></li>
								<li><a href="#">NPM</a></li>
								<li><a href="#">GIT</a></li>
								<li><a href="#">ECLIPSE</a></li>
							</ul>
						</div>	
						</li>
					</ul>
				</div>
				<div id="logInfo" class="eval_id" style="width: 400px;">
						<span style="font-weight: bold;">ID: ${sessionScope.id} 
						<c:choose>
								<c:when test="${sessionScope.menu eq '0'}">
								(아이디어)
								</c:when>
								<c:when test="${sessionScope.menu eq '2'}">
								(디자인)
								</c:when>
								<c:when test="${sessionScope.menu eq '4'}">
								(에세이)
								</c:when>
								<c:when test="${sessionScope.menu eq '5'}">
								(관리자)
								</c:when>
							</c:choose>
						</span>      
						<a href="/logout" class="btn_black" style="margin-left: 30px; font-size: 15px; width: 57px; padding: 5px; background: #444; color: #fff; border: 1px solid #444;">로그아웃</a>
						<c:if test="${sessionScope.menu eq '5'}">
							<a href="/evaluation" class="btn_black" style="margin-left: 30px; font-size: 15px; width: 57px; padding: 5px; background: #444; color: #fff; border: 1px solid #444;">심사결과</a>
						</c:if>
					</div>
			</div>
	</form>
	<script>
		var frmObj = document.login_member01;

		function login() {
			frmObj.action = "/login";
			frmObj.submit();
		}
	</script>