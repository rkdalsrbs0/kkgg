<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="topMenuId" value="1" scope="request"/>
<c:set var="categoryId" value="2" scope="request"/>
<c:set var="mgnb" value="1" scope="request"/>
<c:import url="/WEB-INF/jsp/include/header.jsp" />
<c:import url="/WEB-INF/jsp/policy/include/category.jsp" />
	<%--
	<div class="container">
		<h1>육아지원정보<p>보육/돌봄/교육 관련 육아지원 정보를 제공하는 기관의 주소 및 홈페이지를 확인하세요.</p></h1>
		
		<div class="tab" id="tab">
			<a class="on" href="#" onClick="show_tab(0);">서울</a>
			<a href="#" onClick="show_tab(1);">중부</a>
			<a href="#" onClick="show_tab(2);">부산</a>
			<a href="#" onClick="show_tab(3);">대구</a>
			<a href="#" onClick="show_tab(4);">광주</a>
			<a href="#" onClick="show_tab(5);">대전</a>
			<a href="#" onClick="show_tab(6);">제주</a>
		</div>
	<div id="tabcontent0" style="display:">
		<table class="list_table01">
			<tr>
				<th rowspan="2">기관명</th>
				<th rowspan="2">관할지역</th>
				<th>수행업무</th>
				<th rowspan="2">전화번호</th>
				<th rowspan="2">홈페이지</th>
			</tr>
			<tr>
				<th>주소</th>
			</tr>
			<tr>
				<td rowspan="2">기관A</td>
				<td rowspan="2">동대문구,종로구,중구</td>
				<td>어려움에 처해 도움이 필요하신 분들을 위해 원스탑 서비스를 제공</td>
				<td rowspan="2">000-0000-0000</td>
				<td rowspan="2"><a href="#">바로가기</a><br /><a href="#" class="copy">주소복사</a></td>
			</tr>
			<tr>
				<td>서울특별시 중구 삼일대로 363, 1~4층 (장교동)</td>
			</tr>
			<tr>
				<td rowspan="2">기관A</td>
				<td rowspan="2">동대문구,종로구,중구</td>
				<td>어려움에 처해 도움이 필요하신 분들을 위해 원스탑 서비스를 제공</td>
				<td rowspan="2">000-0000-0000</td>
				<td rowspan="2"><a href="#">바로가기</a><br /><a href="#" class="copy">주소복사</a></td>
			</tr>
			<tr>
				<td>서울특별시 중구 삼일대로 363, 1~4층 (장교동)</td>
			</tr>
		</table>

		<!-- UI Object -->
		<div class="paginate">
			<a href="#" class="pre">&lt;</a>
			<a href="#" class="frst">1</a>
			<strong>2</strong>
			<a href="#">3</a>
			<a href="#">4</a>
			<a href="#">5</a>
			<a href="#">6</a>
			<a href="#">7</a>
			<a href="#">8</a>
			<a href="#">9</a>
			<a href="#">10</a>
			<a href="#" class="next">&gt;</a>
		</div>
		<!-- //UI Object -->
	</div>
	<div id="tabcontent1" style="display: none;">
		<table class="list_table01">
			<tr>
				<th rowspan="2">기관명</th>
				<th rowspan="2">관할지역</th>
				<th>수행업무</th>
				<th rowspan="2">전화번호</th>
				<th rowspan="2">홈페이지</th>
			</tr>
			<tr>
				<th>주소</th>
			</tr>
			<tr>
				<td rowspan="2">기관A</td>
				<td rowspan="2">동대문구,종로구,중구</td>
				<td>어려움에 처해 도움이 필요하신 분들을 위해 원스탑 서비스를 제공</td>
				<td rowspan="2">000-0000-0000</td>
				<td rowspan="2"><a href="#">바로가기</a><br /><a href="#" class="copy">주소복사</a></td>
			</tr>
			<tr>
				<td>서울특별시 중구 삼일대로 363, 1~4층 (장교동)</td>
			</tr>
			<tr>
				<td rowspan="2">기관A</td>
				<td rowspan="2">동대문구,종로구,중구</td>
				<td>어려움에 처해 도움이 필요하신 분들을 위해 원스탑 서비스를 제공</td>
				<td rowspan="2">000-0000-0000</td>
				<td rowspan="2"><a href="#">바로가기</a><br /><a href="#" class="copy">주소복사</a></td>
			</tr>
			<tr>
				<td>서울특별시 중구 삼일대로 363, 1~4층 (장교동)</td>
			</tr>
		</table>

		<!-- UI Object -->
		<div class="paginate">
			<a href="#" class="pre">&lt;</a>
			<a href="#" class="frst">1</a>
			<strong>2</strong>
			<a href="#">3</a>
			<a href="#">4</a>
			<a href="#">5</a>
			<a href="#">6</a>
			<a href="#">7</a>
			<a href="#">8</a>
			<a href="#">9</a>
			<a href="#">10</a>
			<a href="#" class="next">&gt;</a>
		</div>
		<!-- //UI Object -->
	</div>
	<div id="tabcontent2" style="display: none;">
		<table class="list_table01">
			<tr>
				<th rowspan="2">기관명</th>
				<th rowspan="2">관할지역</th>
				<th>수행업무</th>
				<th rowspan="2">전화번호</th>
				<th rowspan="2">홈페이지</th>
			</tr>
			<tr>
				<th>주소</th>
			</tr>
			<tr>
				<td rowspan="2">기관A</td>
				<td rowspan="2">동대문구,종로구,중구</td>
				<td>어려움에 처해 도움이 필요하신 분들을 위해 원스탑 서비스를 제공</td>
				<td rowspan="2">000-0000-0000</td>
				<td rowspan="2"><a href="#">바로가기</a><br /><a href="#" class="copy">주소복사</a></td>
			</tr>
			<tr>
				<td>서울특별시 중구 삼일대로 363, 1~4층 (장교동)</td>
			</tr>
			<tr>
				<td rowspan="2">기관A</td>
				<td rowspan="2">동대문구,종로구,중구</td>
				<td>어려움에 처해 도움이 필요하신 분들을 위해 원스탑 서비스를 제공</td>
				<td rowspan="2">000-0000-0000</td>
				<td rowspan="2"><a href="#">바로가기</a><br /><a href="#" class="copy">주소복사</a></td>
			</tr>
			<tr>
				<td>서울특별시 중구 삼일대로 363, 1~4층 (장교동)</td>
			</tr>
		</table>

		<!-- UI Object -->
		<div class="paginate">
			<a href="#" class="pre">&lt;</a>
			<a href="#" class="frst">1</a>
			<strong>2</strong>
			<a href="#">3</a>
			<a href="#">4</a>
			<a href="#">5</a>
			<a href="#">6</a>
			<a href="#">7</a>
			<a href="#">8</a>
			<a href="#">9</a>
			<a href="#">10</a>
			<a href="#" class="next">&gt;</a>
		</div>
		<!-- //UI Object -->
	</div>
	<div id="tabcontent3" style="display: none;">
		<table class="list_table01">
			<tr>
				<th rowspan="2">기관명</th>
				<th rowspan="2">관할지역</th>
				<th>수행업무</th>
				<th rowspan="2">전화번호</th>
				<th rowspan="2">홈페이지</th>
			</tr>
			<tr>
				<th>주소</th>
			</tr>
			<tr>
				<td rowspan="2">기관A</td>
				<td rowspan="2">동대문구,종로구,중구</td>
				<td>어려움에 처해 도움이 필요하신 분들을 위해 원스탑 서비스를 제공</td>
				<td rowspan="2">000-0000-0000</td>
				<td rowspan="2"><a href="#">바로가기</a><br /><a href="#" class="copy">주소복사</a></td>
			</tr>
			<tr>
				<td>서울특별시 중구 삼일대로 363, 1~4층 (장교동)</td>
			</tr>
			<tr>
				<td rowspan="2">기관A</td>
				<td rowspan="2">동대문구,종로구,중구</td>
				<td>어려움에 처해 도움이 필요하신 분들을 위해 원스탑 서비스를 제공</td>
				<td rowspan="2">000-0000-0000</td>
				<td rowspan="2"><a href="#">바로가기</a><br /><a href="#" class="copy">주소복사</a></td>
			</tr>
			<tr>
				<td>서울특별시 중구 삼일대로 363, 1~4층 (장교동)</td>
			</tr>
		</table>

		<!-- UI Object -->
		<div class="paginate">
			<a href="#" class="pre">&lt;</a>
			<a href="#" class="frst">1</a>
			<strong>2</strong>
			<a href="#">3</a>
			<a href="#">4</a>
			<a href="#">5</a>
			<a href="#">6</a>
			<a href="#">7</a>
			<a href="#">8</a>
			<a href="#">9</a>
			<a href="#">10</a>
			<a href="#" class="next">&gt;</a>
		</div>
		<!-- //UI Object -->
	</div>
	<div id="tabcontent4" style="display: none;">
		<table class="list_table01">
			<tr>
				<th rowspan="2">기관명</th>
				<th rowspan="2">관할지역</th>
				<th>수행업무</th>
				<th rowspan="2">전화번호</th>
				<th rowspan="2">홈페이지</th>
			</tr>
			<tr>
				<th>주소</th>
			</tr>
			<tr>
				<td rowspan="2">기관A</td>
				<td rowspan="2">동대문구,종로구,중구</td>
				<td>어려움에 처해 도움이 필요하신 분들을 위해 원스탑 서비스를 제공</td>
				<td rowspan="2">000-0000-0000</td>
				<td rowspan="2"><a href="#">바로가기</a><br /><a href="#" class="copy">주소복사</a></td>
			</tr>
			<tr>
				<td>서울특별시 중구 삼일대로 363, 1~4층 (장교동)</td>
			</tr>
			<tr>
				<td rowspan="2">기관A</td>
				<td rowspan="2">동대문구,종로구,중구</td>
				<td>어려움에 처해 도움이 필요하신 분들을 위해 원스탑 서비스를 제공</td>
				<td rowspan="2">000-0000-0000</td>
				<td rowspan="2"><a href="#">바로가기</a><br /><a href="#" class="copy">주소복사</a></td>
			</tr>
			<tr>
				<td>서울특별시 중구 삼일대로 363, 1~4층 (장교동)</td>
			</tr>
		</table>

		<!-- UI Object -->
		<div class="paginate">
			<a href="#" class="pre">&lt;</a>
			<a href="#" class="frst">1</a>
			<strong>2</strong>
			<a href="#">3</a>
			<a href="#">4</a>
			<a href="#">5</a>
			<a href="#">6</a>
			<a href="#">7</a>
			<a href="#">8</a>
			<a href="#">9</a>
			<a href="#">10</a>
			<a href="#" class="next">&gt;</a>
		</div>
		<!-- //UI Object -->
	</div>
	<div id="tabcontent5" style="display: none;">
		<table class="list_table01">
			<tr>
				<th rowspan="2">기관명</th>
				<th rowspan="2">관할지역</th>
				<th>수행업무</th>
				<th rowspan="2">전화번호</th>
				<th rowspan="2">홈페이지</th>
			</tr>
			<tr>
				<th>주소</th>
			</tr>
			<tr>
				<td rowspan="2">기관A</td>
				<td rowspan="2">동대문구,종로구,중구</td>
				<td>어려움에 처해 도움이 필요하신 분들을 위해 원스탑 서비스를 제공</td>
				<td rowspan="2">000-0000-0000</td>
				<td rowspan="2"><a href="#">바로가기</a><br /><a href="#" class="copy">주소복사</a></td>
			</tr>
			<tr>
				<td>서울특별시 중구 삼일대로 363, 1~4층 (장교동)</td>
			</tr>
			<tr>
				<td rowspan="2">기관A</td>
				<td rowspan="2">동대문구,종로구,중구</td>
				<td>어려움에 처해 도움이 필요하신 분들을 위해 원스탑 서비스를 제공</td>
				<td rowspan="2">000-0000-0000</td>
				<td rowspan="2"><a href="#">바로가기</a><br /><a href="#" class="copy">주소복사</a></td>
			</tr>
			<tr>
				<td>서울특별시 중구 삼일대로 363, 1~4층 (장교동)</td>
			</tr>
		</table>

		<!-- UI Object -->
		<div class="paginate">
			<a href="#" class="pre">&lt;</a>
			<a href="#" class="frst">1</a>
			<strong>2</strong>
			<a href="#">3</a>
			<a href="#">4</a>
			<a href="#">5</a>
			<a href="#">6</a>
			<a href="#">7</a>
			<a href="#">8</a>
			<a href="#">9</a>
			<a href="#">10</a>
			<a href="#" class="next">&gt;</a>
		</div>
		<!-- //UI Object -->
	</div>
	<div id="tabcontent6" style="display: none;"> --%>
		<%--공란 --%>
		<div class="container">
		<h1>육아지원정보<p>보육/돌봄/교육 관련 육아지원 정보를 제공하는 기관의 주소 및 홈페이지를 확인하세요.</p></h1>
		
		<table class="list_table01">
			<tr>
				<th>사이트명</th>
				<th>지원정책 및 정보</th>
				<th>바로가기</th>
			</tr>
			<c:forEach var="item" items="${support}" varStatus="i">
				<c:set var="itemPage" value="${((i.count-1)/10)+1 }"/>
				<fmt:parseNumber var="itempageVal" value="${itemPage }" integerOnly="true" />
				<c:if test="${pageno==itempageVal }">
					<tr>
						<td>${item.title }</td>
						<td>${item.content }</td>
						<td><a href="${item.linkUrl }" target="_blank" class="add_txt">${item.linkUrl }</a></td>
					</tr>
				</c:if>
			</c:forEach>
		</table>

		<div class="paginate">
			<a href="/policy/supportInfo?pagenos=1" class="pre"><</a>
			<c:if test="${pageno!=1}">
				<a href="/policy/supportInfo?pagenos=${prev_pageno}">Previous</a>
			</c:if>
			
			<c:forEach var="i" begin="1" end="${page_eno}" step="1">
				<a href="/policy/supportInfo?pagenos=${i}">
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
				<a href="/policy/supportInfo?pagenos=${pageno+1 }">Next</a>
			</c:if>
			<a href="/policy/supportInfo?pagenos=${total_page }" class="next">></a>
		</div>
	</div>
<c:import url="/WEB-INF/jsp/include/footer.jsp" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript" src="js/lightbox-plus-jquery.min.js"></script>	
<script>
function show_tab(tabnum){
 var i;
 var d = new Array(7);
 var tm = document.getElementById("tab").getElementsByTagName("a");
 for(i=0; i<=6; i++){
  d[i] = document.getElementById("tabcontent"+i);
  d[i].style.display = "none";
  tm[i].className = "";
 };
  switch(tabnum){
   case 0:
    d[0].style.display = "";
	tm[0].className = "on";
    break;
   case 1:
    d[1].style.display = "";
	tm[1].className = "on";
    break;
   case 2:
    d[2].style.display = "";
	tm[2].className = "on";
    break;
   case 3:
    d[3].style.display = "";
	tm[3].className = "on";
    break;
   case 4:
    d[4].style.display = "";
	tm[4].className = "on";
    break;
   case 5:
    d[5].style.display = "";
	tm[5].className = "on";
    break;
   case 6:
    d[6].style.display = "";
	tm[6].className = "on";
    break;
  };
};

	$(function(){
		var bWidth = window.innerWidth;
		if(bWidth <= 699) {
			$(".add_txt ").html('바로가기');
		}
	});
</script>