<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/WEB-INF/views/include/header.jsp" />
<div class="container">
		<div class="outline_tit">서비스 안내</div>
		<div class="outline_txt">
			<ul>
				<li>요청하신 페이지는 권한이 있어야 접근하실 수 있습니다.</li>
				<li>로그인하신 후에 이용하세요.</li>
				<li>로그인을 하신 후에도 이 페이지가 출력되면 회원등급 권한이 없는 경우입니다.</li>
			</ul>
		</div>
			<div class="btn_area mt30">
				<a href="/" class="btn_gray">돌아가기</a> 
			</div>
	</div>
<c:import url="/WEB-INF/views/include/footer.jsp" />
