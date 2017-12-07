<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<div class="submenu">
	<a href="/custom/bringUp" class="${(requestScope.categoryId == '1' ? 'on' : '')}"><img src="/img/menu_icon0201_on.png">건강하게 키우기</a>
	<a href="/custom/play" class="${(requestScope.categoryId == '2' ? 'on' : '')}"><img src="/img/menu_icon0202.png">재밌게 놀기</a>
	<a href="/custom/hug" class="${(requestScope.categoryId == '3' ? 'on' : '')}"><img src="/img/menu_icon0203.png">토닥토닥 껴안기</a>
</div>