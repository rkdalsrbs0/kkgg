<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="topMenuId" value="4" scope="request"/>
<c:set var="mgnb" value="3" scope="request"/>
<c:import url="/WEB-INF/jsp/include/header.jsp" />
<head>
	<script>
		if("${content.viewLocation}" != 7 && "${content.viewLocation}" != 8){
			console.log('${content.viewLocation ne "7" }');
			alert("잘못된 접근입니다.");
			history.go(-1);
		}
	</script>
</head>
<div class="container">
		<div class="lnb">
			<div class="lnb_top">
				<img src="/img/ico_lnb01.png">
				<p>아빠육아생생사례</p>
			</div>
			<div class="lnb_menu">
				<a href="/sample/foreignList/1" class="${(content.viewLocation == '7' ? 'on' : '')}">해외 아빠육아 정책사례</a>
				<a href="/sample/experienceList/1" class="${(content.viewLocation == '8' ? 'on' : '')}">아빠육아휴직 경험기</a>
			</div>
		</div>
		<div class="lnb_body">
			<div class="contents_view02">
				<div class="title">${content.title }</div>
				<div class="date">${content.startDate }</div>
				<p>
					${content.content }
				</p>
				<table class="list_table04">
					<tr>
						<th style="width:20%;">첨부파일</th>
						<td><a href="/fileDownload?fileId=${content.fileId }">${content.saveNm }</a></td>
					</tr>
				</table>
				<div class="btn_area02">
					<c:choose>
						<c:when test="${content.viewLocation eq '7' }">
							<a href="/sample/foreignList/1">목록</a>
						</c:when>
						<c:when test="${content.viewLocation eq '8' }">
							<a href="/sample/experienceList/1">목록</a>
						</c:when>
					</c:choose>
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
									<a href="/sample/view/${next.idx }?type=${display}&search=${search}">${next.title }</a>
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
									<a href="/sample/view/${pre.idx }?type=${display}&search=${search}">${pre.title }</a>
								</c:otherwise>
							</c:choose>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
<c:import url="/WEB-INF/jsp/include/footer.jsp" />
