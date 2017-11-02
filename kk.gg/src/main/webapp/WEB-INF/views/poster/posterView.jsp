<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="topMenuId" value="3" scope="request"/>
<c:import url="/WEB-INF/views/include/header.jsp" />
	<form name="product_view">
	<input type="hidden" name="idx" value="${work.idx }"/>
	<input type="hidden" name="receiptIdx" value="${work.receiptIdx }"/>
	<input type="hidden" name="productName" value="${work.productName }"/>
	<input type="hidden" name="valuer" value="${sessionScope.id }"/>
	<div class="container">
		<h2>디자인부문 평가표</h2>
		<div class="section gray_box">
		<table class="list_table02">
		<colgroup>
			<col width="180px">
			<col width="">
		</colgroup>
			<tr>
				<th>제목</th>
				<td colspan="3">${work.productName }</td>
			</tr>
			<tr>
				<th>작품설명</th>
				<td colspan="3">${work.productDetail } </td>
			</tr>
			<tr>
				<th>세부부문</th>
				<td colspan="3">
					<c:choose>
						<c:when test="${work.receiptClf eq '0'}">
						청소년(개인)
						</c:when>
						<c:when test="${work.receiptClf eq '1'}">
						청소년(팀)
						</c:when>
						<c:when test="${work.receiptClf eq '2'}">
						대학생(개인)
						</c:when>
						<c:when test="${work.receiptClf eq '3'}">
						대학생(팀)
						</c:when>
						<c:when test="${work.receiptClf eq '4'}">
						일반인(개인)
						</c:when>
						<c:otherwise>
						일반인(팀)
						</c:otherwise>
					</c:choose>
				</td>
			</tr>
			<tr>
				<th>접수번호</th>
				<td colspan="3">${work.receiptIdx }</td>
			</tr>
		</table>
		</div>
		<div class="list_cover02 section">
		<table class="list_table02">
		<colgroup>
			<col width="200px">
			<col width="">
			<col width="100px">
			<col width="100px">
		</colgroup>
			<tr>
				<th class="center">심사항목</th>
				<td class="center">심사기준</td>
				<td class="center">배점</td>
				<td class="center">득점</td>
			</tr>
			<tr>
				<th class="t_green">주제적 합성</th>
				<td>
					<ul>
						<li>공모 주제에 적합한 작품인가?</li>
						<li>에너지절약 및 에너지신산업 주제에 대해 올바르게 이해한 작품인가?</li>
					</ul>
				</td>
				<td class="center"><span name="scorel1">20</span></td>
				<td class="center"><input type="text" name="score1" onkeydown="return keydownY(1, event)" value="<c:if test="${work.score1 eq null }">0</c:if >${work.score1}" min="0" max="20" class="txt w_50"></td>
			</tr>
			<tr>
				<th class="t_green">창의성및흥미도</th>
				<td>
					<ul>
							<li>작품의 소재 및 아이디어가 독창적이고 새로운 내용인가?</li>
							<li>작품 구성에 대해 대중의 공감을 형성할 수 있는가?</li>
							</ul>
							</td>
					  <td class="center"><span name="scorel2">20</span></td>
					  <td class="center"><input type="text" name="score2" onkeydown="return keydownY(2, event)" value="<c:if test="${work.score2 eq null }">0</c:if >${work.score2}" min="0" max="20" class="txt w_50"></td>
					</tr>
					<tr>
					  <th class="t_green">메세지 전달력</th>
					  <td>
						<ul>
							<li>전달하려는 메시지가 쉽고 명확하게 전달되었는가?</li>
							<li>전달하려는 메시지를 상징적으로 잘 표현하였는가?</li>
							<li>실제 대중캠페인에 활용할 경우 에너지에 대한 긍정적 메시지 전달이 가능한가?</li>
						</ul>
						</td>
					  <td class="center"><span name="scorel3">30</span></td>
					  <td class="center"><input type="text" name="score3" onkeydown="return keydownY(3, event)" value="<c:if test="${work.score3 eq null }">0</c:if >${work.score3}" min="0" max="30" class="txt w_50"></td>
					</tr>
					<tr>
					  <th class="t_green">작품성 및 완성도</th>
					  <td>
						<ul>
							<li>작품의 완성도가 높은가?</li>
							<li>색상, 구도가 뛰어나며 전체적으로 조화가 이루어졌는가?</li>
							<li>실제 대중캠페인에 활용할 수 있는가?</li>
						</ul>
						</td>
					  <td class="center"><span name="scorel4">30</span></td>
					  <td class="center"><input type="text" name="score4" onkeydown="return keydownY(4, event)" value="<c:if test="${work.score4 eq null }">0</c:if >${work.score4}" min="0" max="30" class="txt w_50"></td>
					</tr>
					<tr>
					  <th colspan="2">합계</th>
					  <td class="center">100</td>
					  <td class="center"><input type="text" id="total" class="txt w_50" readonly/></td>
					</tr>
				</table>
			</div>
			<div class="btn_area mt30">
				<a href="javascript:score()" class="btn_black">접수평가</a> 
			</div>

			<div class="list_cover02 section mt30">
				
				<div class="btn_area mt30 t_notice">
				※ 접수평가완료 후 특이사항이 있을 경우 작성해주시기 바랍니다
			</div>
				<table class="list_table02">
					<colgroup>
						<col width="200px">
						<col width="">
					</colgroup>
					<tr>
					  <th>종합의견</th>
					  <td><textarea name="totalScore" style="height:100px;">${work.totalScore }</textarea></td>
					</tr>
					<tr>
					  <th>평가자</th>
					  <td>소속 : <span class="bold">${sessionScope.id }</span> / 성명 : <span class="bold">${sessionScope.id }</span></td>
					</tr>
				</table>
			</div>
			<div class="btn_area mt30">
				<a href="javascript:total()" class="btn_black">종합의견평가 완료</a> 
				<a href="javascript:history.go(-1)" class="btn_gray">목록으로</a> 
			</div>
	</div>
	</form>
	<c:import url="/WEB-INF/views/include/footer.jsp" />
	<script>
	$(document).ready(function(){
		var value = parseInt($('[name="score1"]').val()) + parseInt($('[name="score2"]').val()) + parseInt($('[name="score3"]').val()) + parseInt($('[name="score4"]').val());
		document.getElementById("total").value = value;
	});
	
	 $(".w_50").keyup(function () {
        var value = parseInt(isNaN(parseInt($('[name="score1"]').val()))?"0":parseInt($('[name="score1"]').val()))
        	+ parseInt(isNaN(parseInt($('[name="score2"]').val()))?"0":parseInt($('[name="score2"]').val()))
        	+ parseInt(isNaN(parseInt($('[name="score3"]').val()))?"0":parseInt($('[name="score3"]').val()))
        	+ parseInt(isNaN(parseInt($('[name="score4"]').val()))?"0":parseInt($('[name="score4"]').val()))
        document.getElementById("total").value = value;
      }).keyup();
	 
	 function keydownY(num, event) {
		event = event || window.event;
		var keyID = (event.which) ? event.which : event.keyCode;
		if( ( keyID >=48 && keyID <= 57 ) || ( keyID >=96 && keyID <= 105 ) || keyID == 8 || keyID == 9 || keyID == 46 || keyID == 37 || keyID == 35 || keyID == 36 || keyID == 39 ) {
			 var value = parseInt($('[name="score'+num+'"]').val()+event.key);
			 if(value > parseInt($('span[name="scorel'+num+'"]').text())) {
				 $('[name="score'+num+'"]').val(event.key);
				 return false
			 }

			if($('[name="score'+num+'"]').val().startsWith("0")){
				$('[name="score'+num+'"]').val("0");
			}
			return true;
		} else {
			return false;
		}
	 }
	 
	 var frmObj = document.product_view;
	 //빈칸 체크
	 function valueCheck(){
			if(frmObj.score1.value == ""){ 
		    	alert("주체적 합성 득점을 입력해주세요..");
		    	frmObj.score1.focus();
		    	return false;
		    }
			if(frmObj.score2.value == ""){ 
		    	alert("창의성 및 흥미도 득점을 입력해 주세요.");
		    	frmObj.score2.focus();
		    	return false;
		    }
			if(frmObj.score3.value == ""){ 
		    	alert("메시지 전달력 득점을 입력해 주세요.");
		    	frmObj.score3.focus();
		    	return false;
		    }
			if(frmObj.score4.value == ""){ 
		    	alert("작품성 및 완성도 득점을 입력해 주세요.");
		    	frmObj.score4.focus();
		    	return false;
		    }
			
			//숫자판별
			if(isNaN(frmObj.score1.value)){ 
		    	alert("주체적 합성 득점을 숫자로 입력해주세요.");
		    	frmObj.score1.focus();
		    	return false;
		    }
			if(isNaN(frmObj.score2.value)){ 
		    	alert("창의성 및 흥미도 득점을 숫자로 입력해주세요.");
		    	frmObj.score2.focus();
		    	return false;
		    }
			if(isNaN(frmObj.score3.value)){ 
		    	alert("메시지 전달력 득점을 숫자로 입력해주세요.");
		    	frmObj.score3.focus();
		    	return false;
		    }
			if(isNaN(frmObj.score4.value)){ 
		    	alert("작품성 및 완성도 득점을 숫자로 입력해주세요.");
		    	frmObj.score4.focus();
		    	return false;
		    }
			//최대 배점
			if(parseInt(frmObj.score1.value) > 20){ 
		    	alert("주체적 합성의 최대 득점은 20점 입니다.");
		    	frmObj.score1.focus();
		    	return false;
		    }
			if(parseInt(frmObj.score2.value) > 20){ 
		    	alert("창의성 및 흥미도 득점의 최대 득점은 20점 입니다.");
		    	frmObj.score2.focus();
		    	return false;
		    }
			if(parseInt(frmObj.score3.value) > 30){ 
		    	alert("메시지 전달력 득점의 최대 득점은 30점 입니다.");
		    	frmObj.score3.focus();
		    	return false;
		    }
			if(parseInt(frmObj.score4.value) > 30){ 
		    	alert("작품성 및 완성도 득점의 최대 득점은 30점 입니다.");
		    	frmObj.score4.focus();
		    	return false;
		    }
			return true;
	 }
	 
	 
	 function score(){
		 if(valueCheck()){
			 var qSubmit = confirm("평가를 적용하시겠습니까?");
			 
			 if(qSubmit ==true){
				 frmObj.action="/poster/score"
				 frmObj.submit();
			 }else{
				 alert("취소되었습니다.");
				 location.reload();
			 }
	 	}
	 }
	 
	 function valueCheck2(){
		 if(frmObj.totalScore.value == ""){
			 alert("종합의견을 입력해주세요.");
			 frmObj.totalScore.focus();
			 return false;
		 }
		 return true;
	 }
	 
	 function total(){
		 if(valueCheck2()){
			 var qSubmit = confirm("종합의견을 반영하시겠습니까?");
			 
			 if(qSubmit ==true){
				 frmObj.action="/poster/total"
				 frmObj.submit();
			 }else{
				 alert("취소되었습니다.");
				 location.reload();
			 }
 		}
	 }
	</script>