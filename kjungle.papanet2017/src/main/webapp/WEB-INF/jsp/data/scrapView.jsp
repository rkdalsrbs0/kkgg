<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="topMenuId" value="5" scope="request"/>
<c:set var="mgnb" value="5" scope="request"/>
<c:import url="/WEB-INF/jsp/include/header.jsp" />
<div class="container">
	<div class="lnb">
		<div class="lnb_top">
			<img src="/img/ico_lnb01.png">
			<p>자료실</p>
		</div>
		<div class="lnb_menu">
			<a href="/ask/faq?pagenos=1">자주 묻는 질문</a>
			<a href="/ask/scrap?pagenos=1" class="on">관련기사</a>
		</div>
	</div>

	<div class="lnb_body">
		<div class="contents_view02">
			<div class="title">${article.title }</div>
			<div class="date">${article.createdAt }</div>
			<p>
				${article.content }
			</p>
			<table class="list_table04">
				<tr>
					<th style="width:20%;">첨부파일</th>
					<td><a href="/fileDownload?fileId=${article.fileId }">${article.saveNm }</a></td>
				</tr>
			</table>
			<div class="btn_area02">
				<a href="/ask/scrap?pagenos=1">목록</a>
			</div>
			<table class="list_table04">
				<tr>
					<th class="bg_white" style="width:20%;">다음글</th>
					<td>
						<c:choose>
							<c:when test="${next eq null }">
								다음글이 없습니다.
							</c:when>
							<c:otherwise>
								<a href="/ask/scrap/view/${next.idx }?type=${display}&search=${search}">${next.title }</a>
							</c:otherwise>
						</c:choose>
					</td>
				</tr>
				<tr>
					<th class="bg_white" style="width:20%;">이전글</th>
					<td>
						<c:choose>
							<c:when test="${pre eq null }">
								이전글이 없습니다.
							</c:when>
							<c:otherwise>
								<a href="/ask/scrap/view/${pre.idx }?type=${display}&search=${search}">${pre.title }</a>
							</c:otherwise>
						</c:choose>
					</td>
				</tr>
			</table>
		</div>
	</div>
</div>
<c:import url="/WEB-INF/jsp/include/footer.jsp" />
