<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="topMenuId" value="2" scope="request"/>
<c:set var="categoryId" value="2" scope="request"/>
<c:set var="mgnb" value="2" scope="request"/>
<c:import url="/WEB-INF/jsp/include/header.jsp" />
<c:import url="/WEB-INF/jsp/custom/include/category.jsp" />
	<input type="hidden" name="min" id="min" value="0"/>
	<input type="hidden" name="max" id="max" value="12"/>
<form name="change_form">
	<div class="container">
		<h2 class="right_select">
			아이도 건강하게, 나도 건강하게! 아빠가 알면 좋을 건강 상식
			<p>
				<select name="contentsType" id="contentsType" class="txt round" onchange="locationChange()">
					<option value="">전체</option>
					<option value="0"<c:if test="${contentsType eq '0'}">selected</c:if>>일반</option>
					<option value="1"<c:if test="${contentsType eq '1'}">selected</c:if>>카드뉴스</option>
					<option value="2"<c:if test="${contentsType eq '2'}">selected</c:if>>동영상</option>
				</select>
			</p>
		</h2>
</form>
		<ul class="thumb_list01">
			<c:forEach var="item" items="${contents}" varStatus="i">
				<li>
					<a 
						<c:choose>
							<c:when test="${item.contentsType eq '1'}">
								href="javascript:multiView('${item.idx }')" class="multi"
							</c:when>
							<c:when test="${item.contentsType eq '2' }">
								href="javascript:movieView('${item.idx }')" class="movie"
							</c:when>
							<c:otherwise>
								href="/contents/${item.idx }" 
							</c:otherwise>
						</c:choose>
						>
						<c:choose>
							<c:when test="${item.contentsType eq '1'}">
								<i class="multi">여러장</i>
							</c:when>
							<c:when test="${item.contentsType eq '2' }">
								<i class="movie">동영상</i>
							</c:when>
							<c:otherwise>
							</c:otherwise>
						</c:choose>
						<img src="/imgPreview.do?id=${item.thumbFid}&type=">
						<p>${item.title }</p>
						<span class="thumb_date">${item.startDate}</span>
					</a>
				</li>
			</c:forEach>
		</ul>
	<c:if test="${!empty contents }">
		<div class="more">
			<a href="javascript:more();">더보기<img src="/img/bullet_more.png" alt="더보기"></a>
		</div>
	</c:if>
	</div>
<c:import url="/WEB-INF/jsp/include/footer.jsp" />
<script>
$( document ).ready(function() {
   if("${moreDisplay}" == "none"){
	   $(".more").css("display","none");
   }
});

function more(){
	var min = parseInt($("#min").val())+12;
	var max = parseInt($("#max").val());
	$("#min").val(min);
	$("#max").val(max);
	
	$.ajax({
		type : "POST",
		url : "/custom/play",
		dataType : "text",
		data : "min="+min+"&max="+max,
		success : function(contents) {
			contents = JSON.parse(contents);
			console.log(contents.length);
			if(contents.length != 12){
				$(".more").css("display","none");
			}
			var html = "";
 			for(var i = 0; i < contents.length; i++) {
 				html += "<li>";
 				html += '<a ';
				if(contents[i].contentsType == 1){
					html += 'href="javascript:multiView(\''+contents[i].idx+'\')" class="multi"';
				}else if(contents[i].contentsType == 2){
					html += 'href="javascript:movieView(\''+contents[i].idx+'\')" class="movie"';
				}else{
					html += 'href="/contents/'+contents[i].idx+'"'
				}
				html += '>';
				if(contents[i].contentsType == 1){
					html += '<i class="multi">여러장</i>';	
				}else if(contents[i].contentsType == 2){
					html += '<i class="movie">동영상</i>';
				}else{}
				html += "<img src=\"/imgPreview.do?id="+contents[i].thumbFid+"&type=\"";
				html += '<p>'+contents[i].title+'</p>';
				html += '<span class="thumb_date">'+contents[i].startDate+'</span>';
				html += '</a>';
				html += '</li>';
 			}
			$('.thumb_list01 li:last').after(html);
			
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert(XMLHttpRequest.status + " 오류가 발생하였습니다.");
		}
	});
}

var frmObj = document.change_form;

function locationChange() {
	frmObj.action ="/custom/play";
	frmObj.submit();	
}
</script>