<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="topMenuId" value="3" scope="request"/>
<c:import url="/WEB-INF/views/include/header.jsp" />
<form name="work_View" method="post" onsubmit="return false;">
<input type="hidden" name="idx"/>
<input type="hidden" name="valuer"/>
<div class="container">
		<h2>디자인 부문</h2>
		<p class="pb20">※ ${workSize }${searchSize}개</p>
		<div class="list_cover03">
			<table class="list_table03">
				<colgroup>
					<col width="100px">
					<col width="">
					<col width="">
					<col width="">
					<col width="">
					<col width="">
					<col width="100px">
				</colgroup>
				<tr>
					<th>번호</th>
					<th>접수번호</th>
					<th>대상</th>
					<th>평가일</th>
					<th>작품파일</th>
					<th>평가하기</th>
					<th>평가여부</th>
				</tr>
				<c:if test="${fn:length(workList) != 0}">
					<c:forEach var="i" begin="0" end="${fn:length(workList)-1 }" step="1" varStatus="status">
						<tr>
							<td>${status.count}</td>
							<td>${workList[i].receiptIdx }</td>
							<td>
							<c:choose>
								<c:when test="${workList[i].receiptClf eq '0'}">
								청소년(개인)
								</c:when>
								<c:when test="${workList[i].receiptClf eq '1'}">
								청소년(팀)
								</c:when>
								<c:when test="${workList[i].receiptClf eq '2'}">
								대학생(개인)
								</c:when>
								<c:when test="${workList[i].receiptClf eq '3'}">
								대학생(팀)
								</c:when>
								<c:when test="${workList[i].receiptClf eq '4'}">
								일반인(개인)
								</c:when>
								<c:otherwise>
								일반인(팀)
								</c:otherwise>
							</c:choose>
							</td>
							<td>${workList[i].evalDate }<c:if test="${workList[i].evalDate eq null}">평가 안함</c:if></td>
							<td><a href="/fileDownload?fileId=${workList[i].fileIdx}&receiptIdx=${workList[i].receiptIdx}" class="btn_post">다운로드</a></td>
							<td><a href="javascript:view('${workList[i].idx }', '${workList[i].valuer }')" class="t_green bold">평가하기</a></td>
							<c:choose>
								<c:when test="${workList[i].evalDate eq null}">
									<td>미완료</td>
								</c:when>
								<c:otherwise>
									<td class="t_notice">완료</td>
								</c:otherwise>
							</c:choose>
						</tr>
						
					</c:forEach>
				</c:if>
				<!-- 
				<c:if test="${fn:length(searchList) != 0}">
					<c:forEach var="i" begin="0" end="${fn:length(searchList)-1 }" step="1" varStatus="status">
						<c:set var="searchPage" value="${(i/10)+1 }"/>
						<fmt:parseNumber var="searchVal" value="${searchPage }" integerOnly="true" />
						<c:if test="${pageno==searchVal }">
						<tr>
							<td>${fn:length(searchList)-status.count+1}</td>
							<td>${searchList[i].receiptIdx }</td>
							<td>
							<c:choose>
								<c:when test="${searchList[i].receiptClf eq '0'}">
								청소년(개인)
								</c:when>
								<c:when test="${searchList[i].receiptClf eq '1'}">
								청소년(팀)
								</c:when>
								<c:when test="${searchList[i].receiptClf eq '2'}">
								대학생(개인)
								</c:when>
								<c:when test="${searchList[i].receiptClf eq '3'}">
								대학생(팀)
								</c:when>
								<c:when test="${searchList[i].receiptClf eq '4'}">
								일반인(개인)
								</c:when>
								<c:otherwise>
								일반인(팀)
								</c:otherwise>
							</c:choose>
							</td>
							<td>${searchList[i].evalDate }<c:if test="${searchList[i].evalDate eq null}">평가 안함</c:if></td>
							<td><a href="/fileDownload?fileId=${searchList[i].fileIdx}&receiptIdx=${searchList[i].receiptIdx}" class="btn_post">다운로드</a></td>
							<td><a href="javascript:view('${searchList[i].idx }', '${searchList[i].valuer }')" class="t_green bold">평가하기</a></td>
							<c:choose>
								<c:when test="${searchList[i].evalDate eq null}">
									<td>미완료</td>
								</c:when>
								<c:otherwise>
									<td class="t_notice">완료</td>
								</c:otherwise>
							</c:choose>
						</tr>
						</c:if>
						
					</c:forEach>
				</c:if>
				-->
			</table>
		</div>
		<!-- 
		<div class="board_option">
			<div class="board_search">
				<select>
					<option>제목</option>
				</select> 
				<input type="text" name="search" class="txt"> <a href="javascript:search()">검색</a>
			</div>
		</div>
		<c:if test="${fn:length(workList) != 0}">
			<div class="paginate">
				<a href="/poster/1"><</a>
				<a href="/poster/${prev_pageno}">Previous</a>
				<c:forEach var="i" begin="${page_sno}" end="${page_eno}" step="1">
					<a href="/poster/${i}">
						<c:choose>
							<c:when test="${pageno==i}">
								<strong>${i}</strong>
							</c:when>
							<c:otherwise>
								${i}
							</c:otherwise>
						</c:choose>
					</a>
				</c:forEach>
				<c:if test="${pageno<total_page}">
					<a href="/poster/${pageno+1 }">Next</a>
				</c:if>
				<a href="/poster/${total_page }">></a>
			</div>
		</c:if>
		
		<c:if test="${fn:length(searchList) != 0}">
			<div class="paginate">
				<a href="/poster/${search}/1"><</a>
				<a href="/poster/${search}/${prev_pageno}">Previous</a>
				<c:forEach var="i" begin="${page_sno}" end="${page_eno}" step="1">
					<a href="/poster/${search }/${i}">
						<c:choose>
							<c:when test="${pageno==i}">
								<strong>${i}</strong>
							</c:when>
							<c:otherwise>
								${i}
							</c:otherwise>
						</c:choose>
					</a>
				</c:forEach>
				<c:if test="${pageno<total_page}">
					<a href="/poster/${search }/${pageno+1 }">Next</a>
				</c:if>
				<a href="/poster/${search }/${total_page }">></a>
			</div>
		</c:if>
		-->
	</div>
	</form>
<c:import url="/WEB-INF/views/include/footer.jsp" />
<script>
$(document).ready(function(){
	var scrlNum = $(this).scrollTop();
	var history = sessionStorage.getItem('scrollDesign');
	$(this).scrollTop(history);
});

$(window).on("beforeunload", function(){
	var scrlNum = $(this).scrollTop();
	sessionStorage.setItem('scrollDesign', scrlNum);
});

var frmObj = document.work_View;
	
	function view(idx, valuer){
		frmObj.idx.value = idx;
		frmObj.valuer.value = valuer;
		frmObj.action ="/poster/view";
		frmObj.submit();
	}
	
	function search(){
		frmObj.action="/poster/search"
		frmObj.submit();
	}
</script>