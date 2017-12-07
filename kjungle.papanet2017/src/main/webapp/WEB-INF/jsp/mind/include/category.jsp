<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<div class="submenu">
	<a href="/mind/mentoring" class="${(requestScope.categoryId == '1' ? 'on' : '')}"><img src="/img/menu_icon0301.png">행복육아 멘토링</a>
	<a href="/mind/diary" class="${(requestScope.categoryId == '2' ? 'on' : '')}"><img src="/img/menu_icon0302_on.png">아빠를 위한 그림일기</a>
	<a href="/mind/meeting" class="${(requestScope.categoryId == '3' ? 'on' : '')}"><img src="/img/menu_icon0303.png">육아대디 모임</a>
</div>