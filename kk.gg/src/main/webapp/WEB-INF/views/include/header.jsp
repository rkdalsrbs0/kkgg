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
	top: 30%;
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

@import url(http://weloveiconfonts.com/api/?family=fontawesome);
@import url(http://fonts.googleapis.com/css?family=Open+Sans:400,700);
[class*="fontawesome-"]:before {
  font-family: 'FontAwesome', sans-serif;
}

* {
  box-sizing: border-box;
}

html {
  height: 100%;
}

body {
  color: #606468;
  font: 400 0.875rem/1.5 "Open Sans", sans-serif;
  margin: 0;
  min-height: 100%;
}

input {
  border: 0;
  color: inherit;
  font: inherit;
  margin: 0;
  outline: 0;
  padding: 0;
  -webkit-transition: background-color .3s;
          transition: background-color .3s;
}

.site__container {
  -webkit-box-flex: 1;
  -webkit-flex: 1;
      -ms-flex: 1;
          flex: 1;
  padding: 3rem 0;
}

.form--login {
  color: #606468;
}
.form--login label,
.form--login input[type="text"],
.form--login input[type="password"],
.form--login input[type="submit"] {
  border-radius: 0.25rem;
  padding: 1rem;
}
.form--login label {
  background-color: lightblue;
  border-bottom-right-radius: 0;
  border-top-right-radius: 0;
  padding-left: 1.25rem;
  padding-right: 1.25rem;
}
.form--login input[type="text"], .form--login input[type="password"] {
  background-color: ghostwhite;
  border-bottom-left-radius: 0;
  border-top-left-radius: 0;
}
.form--login input[type="text"]:focus, .form--login input[type="text"]:hover, .form--login input[type="password"]:focus, .form--login input[type="password"]:hover {
  background-color: cornsilk;
}
.form--login input[type="submit"] {
  background-color: mediumpurple;
  color: #eee;
  font-weight: bold;
  text-transform: uppercase;
}
.form--login input[type="submit"]:focus, .form--login input[type="submit"]:hover {
  background-color: blueviolet;
}
.form__field {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  margin-bottom: 1rem;
}
.form__input {
  -webkit-box-flex: 1;
  -webkit-flex: 1;
      -ms-flex: 1;
          flex: 1;
}

.align {
  -webkit-box-align: center;
  -webkit-align-items: center;
      -ms-flex-align: center;
          align-items: center;
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: horizontal;
  -webkit-box-direction: normal;
  -webkit-flex-direction: row;
      -ms-flex-direction: row;
          flex-direction: row;
}

.hidden {
  border: 0;
  clip: rect(0 0 0 0);
  height: 1px;
  margin: -1px;
  overflow: hidden;
  padding: 0;
  position: absolute;
  width: 1px;
}

.text--center {
  text-align: center;
}

.grid__container {
  margin: 0 auto;
  max-width: 20rem;
}

</style>
	<form name="login_member01" class="form form--login" method="post">
		<div id="evalpop" class="white_content" style="visibility: hidden;">
			<div class="eval_tit">
				로그인 
			</div>

			<div class="list_cover02 p20" style="background-color: lavender; border-radius: 0px 0px 10px 10px / 0px 0px 10px 10px;">
				<h1>
					<a href="/"><center class="bold t_notice" style="font-family: sans-serif;">KKGG</center></a>
				</h1>
				<div class="site__container">
    <div class="grid__container">
        <div class="form__field">
          <label class="fontawesome-user" for="login__username"><span class="hidden">아이디</span></label>
          <input id="login__username" type="text" class="form__input" placeholder="Username" required>
        </div>

        <div class="form__field">
          <label class="fontawesome-lock" for="login__password"><span class="hidden">비밀번호</span></label>
          <input id="login__password" type="password" class="form__input" placeholder="Password" required>
        </div>

        <div class="form__field">
          <input type="submit" value="LogIn" style="width: 350px;">
        </div>

      <p class="text--center">아직 KKGG 회원이 아니세요?? <a href="/userJoin">회원가입 ≫</a> <span class="fontawesome-arrow-right"></span></p>
    </div>

  </div>
			</div>
		</div>
		<div id="fade" class="black_overlay" style="visibility: hidden;" onclick="document.getElementById('evalpop').style.visibility='hidden';document.getElementById('fade').style.visibility='hidden'"></div>

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
							<a href="javascript:loginForm();">로그인</a>
							<a href="/userJoin" style="margin-left: 30px;">회원가입</a>
							<a href="#" style="margin-left: 30px;">고객센터</a>
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
			</div>
	</form>
	<script>
		var frmObj = document.login_member01;

		function login() {
			frmObj.action = "/login";
			frmObj.submit();
		}
		
		function loginForm(){
			document.all['evalpop'].style.visibility = "visible";
			document.all['fade'].style.visibility = "visible";
		}
	</script>