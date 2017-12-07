<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<div class="submenu">
		<a href="/policy/leaveInfo" class="${(requestScope.categoryId == '1' ? 'on' : '')}"><img src="/img/menu_icon0101.png">육아휴직정보</a>
		<a href="/policy/supportInfo?pagenos=1" class="${(requestScope.categoryId == '2' ? 'on' : '')}"><img src="/img/menu_icon0102_on.png">육아지원정보</a>
		<a href="/policy/policyKnow" class="${(requestScope.categoryId == '3' ? 'on' : '')}"><img src="/img/menu_icon0103.png">정책제대로 알기</a>
	</div>