<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="topMenuId" value="1" scope="request"/>
<c:set var="categoryId" value="1" scope="request"/>
<c:import url="/WEB-INF/jsp/include/header.jsp" />
<c:import url="/WEB-INF/jsp/policy/include/category.jsp" />

	<div class="container">
		<div class="tab03">
			<a href="/policy/leaveInfo">육아휴직 및 급여</a>
			<a href="/policy/leaveInfo1" class="on">육아기 근로시간 단축 및 급여</a>
		</div>
		
		<h1>육아기 근로시간 단축 및 급여
			<p>육아휴직을 신청할 수 있는 근로자는 육아휴직을 대신해서 근로시간 단축(주15시간 이상 30시간 이하)을 신청할 수 있으며 사용자는 단축된 근로시간에 비례하여 육아기 근로시간 단축급여를 지급하고, 정부는 단축 근무자의 급여 감소분의 일부를 지원합니다.</p>
		</h1>
		
		<!-- UI Object -->
		<div class="info">
			<div class="hgroup">
				<h2></h2>
				<button type="button" class="trigger"><span>전체보기</span></button>
			</div>
			<ul>
				<li class="article hide">
					<p class="q"><a href="#a1" class="trigger">육아기 근로시간 단축 사용</a><span class="after_up">블릿</span></p>
					<div class="a" style="overflow:hidden; padding-top:10px; margin-top:0px; padding-bottom:10px; margin-bottom:0px;">
						<div class="info_data">
							<p class="title">사용대상</p>
							① 만 8세 이하 또는 초등학교 2학년 이하의 자녀가 있고,② 근속기간 1년 이상이며 ③ 배우자가 육아휴직 중이 아닌 남녀 근로자가 사용할 수 있습니다.
							<ul class="dep01">
								<li>
									<p><strong>사업주가 육아기 근로시간 단축을 거부할 수 있는 경우</strong></p>
									① 단축개시 예정일의 전날 계속 근로기간이 1년 미만인 근로자가 신청한 경우<br />
									② 같은 자녀에 대하여 배우자가 육아휴직을 하고 있는 근로자가 신청한 경우<br />
									③ 사업주가 고용센터에 구인신청을 하고 대체인력을 채용하기 위해 14일 이상 노력하였으나 대체인력을채용하지 못한 경우. 정당한 이유 없이 2회 이상 채용을 거부한 경우는 제외<br />
									④ 업무 성격상 근로시간을 분할하여 수행하기 곤란하거나 그 밖에 육아기 근로시간 단축이 정상적인 사업 운영에 중대한 지장을 초래하는 경우로서 사업주가 이를 증명하는 경우
								</li>
							</ul>
							<p class="title">사용기간</p>
								근로자는 육아기 근로시간 단축을 신청하는 경우에 1년 이내의 기간으로 이를 사용할 수 있습니다. 사업주가 해당 근로자에게 육아기 근로시간 단축을 허용하는 경우 단축 후 근로시간은 주당 15시간 이상이어야 하고 30시간을 넘어서는 안 됩니다.<br />
								<span class="red">※ 자녀 1명당 육아휴직과 육아기 근로시간 단축을 합산하여 최대 1년까지 사용할 수 있습니다.<br />
								※ 육아휴직을 이미 1년 사용한 경우는 육아기 근로시간 단축을 사용할 수 없습니다.</span>
							<p class="title">사용방법</p>
							<ul class="dep01">
								<li>일주일에 최소 15시간, 최대 30시간까지 근로 단축하기 전 근로시간이 반드시 주 40시간일 필요는 없으나, 단축 후 근로시간이 주당 15시간 이상이어야 하고, 30시간을 넘어서는 안 됩니다.</li>
								<li>육아휴직과 같이 사용 가능 - 육아휴직과 육아기 근로시간 단축제도를 조합해서 쓸 수 있습니다. 육아휴직이나 육아기 근로시간 단축을사용하려는 근로자는 다음 방법 중 하나를 선택하면 됩니다. 다만, 육아휴직급여를 받기 위해서는 육아휴직을 한번에 30일 이상 사용해야 합니다.<br />
								① 육아휴직 최대 1년까지 1회 사용<br />
								② 육아기 근로시간 단축 최대 1년까지 1회 사용<br />
								③ 육아휴직 2회로 나누어 최대 1년까지 분할 사용<br />
								④ 육아기 근로시간 단축 2회로 나누어 최대 1년까지 분할 사용<br />
								⑤ 육아휴직 1회, 육아기 근로시간 단축 1회의 사용기간을 합산하여 최대 1년으로 분할 사용<br />
								예) 육아휴직 5개월 사용 후 복직하여 근무하다가 육아기 근로시간 단축 7개월 이내로 사용하는 경우.</li>
							</ul>
							<p class="title">부부가 육아기 근로시간 단축 또는 육아휴직을 함께 사용하고자 할 때</p>
							<ul class="dep01">
								<li>같은 자녀에 대하여 육아기 근로시간 단축 중인 배우자가 있어도 근로자가 육아기 근로시간 단축 또는 육아휴직을 신청하면 사업주는 이를 거부할 수 없습니다.</li>
								<li>반면 같은 자녀에 대하여 육아휴직 중인 배우자가 있는 근로자가 육아기 근로시간 단축 또는 육아휴직을 신청하면 사업주는 거부할 수 있습니다. 다만, 이때에도 사업주의 재량으로 근로자의 신청을 허용할 수 있습니다.</li>
								<li>어느 경우든지 부부가 육아기 근로시간 단축 또는 육아휴직을 함께 사용하면 고용보험에서는 1명만 급여를 지원합니다.</li>
							</ul>
							<table class="list_table01">
								<tr>
									<th style="text-align:center">1차신청자</th>
									<th style="text-align:center">2차신청자</th>
									<th style="text-align:center">2차신청에 대한 사업주 거부</th>
									<th style="text-align:center">급여</th>
								</tr>
								<tr>
									<td>육아기 근로시간 단축</td>
									<td>육아기 근로시간 단축</td>
									<td>불가</td>
									<td rowspan="4">1명지원</td>
								</tr>
								<tr>
									<td>육아기 근로시간 단축</td>
									<td>육아휴직</td>
									<td>불가</td>
								</tr>
								<tr>
									<td>육아휴직</td>
									<td>육아기 근로시간 단축</td>
									<td>가능</td>
								</tr>
								<tr>
									<td>육아휴직</td>
									<td>육아휴직</td>
									<td>가능</td>
								</tr>
							</table>
							<p class="table_q">Q 매일 출근해야 하나요?</p>
							<p class="table_a">A 반드시 매일 근무해야 하는 것은 아니므로 일주일에 3일만 근무하고 2일은 휴무하는 방식으로 근로시간 단축을 실시할 수도 있습니다. 단축 후 근로시간이 주당 15시간∼30시간이면 됩니다.</p>
							<p class="table_q">Q 육아기 근로시간 단축 중에도 연장근로를 할 수 있나요?</p>
							<p class="table_a">A 근로자가 명시적으로 청구하는 경우에 한하여 주 12시간 이내의 범위에서 가능합니다. 하지만사업주가 먼저 연장근로를 요구할 수 없으며, 위반 시 1천만원 이하의 벌금이 부과됩니다. 근로자의 청구로 주 12시간 이내에서 연장근로를 할 경우, 사용자는 초과근로에 대하여 통상임금의100분의 50 이상을 가산하여 지급하여야 합니다.</p>
						</div>
					</div>
				</li>
				<li class="article hide">
					<p class="q"><a href="#a1" class="trigger">육아기 근로시간 단축 신청</a><span class="after_up">블릿</span></p>
					<div class="a" style="overflow:hidden; padding-top:10px; margin-top:0px; padding-bottom:10px; margin-bottom:0px;">
						<div class="info_data">
							<p class="title">신청시기</p>
							육아기 근로시간 단축을 개시하려는 날의 30일 전에 사업주에게 신청합니다.
							<span class="red_big">* 신청절차</span>
							<img src="../img/info_data07.png">
							※ 육아휴직을 대신하여 사용하는 제도이므로 신청절차와 방법이 육아휴직과 동일합니다.
							<p class="title">필요서류</p>
							<span class="red">육아기 근로시간 단축 신청서 1부</span>
							<p class="table_q">Q 근로시간 단축에 대하여 사업주와 구두로만 합의해도 되나요?</p>
							<p class="table_a">A 근로시간 단축 시 근로시간을 포함한 근로조건 변경사항은 서면으로 작성하여야 합니다. 변경된 근로조건을 서면으로 정하지 않은 사업주에겐 500만원 이하의 과태료가 부과됩니다.</p>
							<p class="table_q">Q 사업주가 근로시간 단축을 변경할 수 있나요?</p>
							<p class="table_a">A 사업주는 근로자가 신청한 근무시간에 대해서 변경을 제안할 수는 있으나, 강제할 수는 없고, 단축 유형 중의 하나를 선택하도록 권고하는 것은 가능합니다. 따라서 단축 근로시간은 육아휴직시기를 근로자가 정하는 것과 마찬가지로 근로자가 정하여 사업주에게 신청하면 됩니다.</p>
						</div>
					</div>
				</li>
				<li class="article hide">
					<p class="q"><a href="#a1" class="trigger">육아기 근로시간 단축 중의 급여</a><span class="after_up">블릿</span></p>
					<div class="a" style="overflow:hidden; padding-top:10px; margin-top:0px; padding-bottom:10px; margin-bottom:0px;">
						<div class="info_data">
							<p class="title">급여 지원 금액</p>
							단축된 근로시간에 대한 급여는 월 통상임금의 60%(상한액 150만원, 하한액 50만원)를 근로시간에 비례하여 고용보험에서 지원합니다.
							<img src="../img/info_data08.png">
							<p class="title">신청자격</p>
							<span class="red_big">다음 3가지 요건을 모두 충족해야 합니다.</span>
							① 사업주로부터 육아기 근로시간 단축을 30일이상 부여받았을 것<br />
							② 육아기 근로시간 단축 개시일 이전에 피보험 단위기간이 180일 이상일 것<br />
							※ 단, 과거에 실업급여를 받았을 경우 인정받았던 피보험기간은 제외<br />
							③ 같은 자녀에 대해서 피보험자인 배우자가 같은기간 30일 이상의 육아휴직을 부여받지 않거나 육아기근로시간 단축을 30일 이상 실시하지 않을 것
							<p class="table_q">Q 통상임금이 200만원입니다. 주당 근로시간을 40시간에서 30시간으로 단축하면 급여는 얼마를 받게 되나요?</p>
							<p class="table_a">A 실제 근무한 시간에 대해서는 사업주가 임금을 지급하고, 단축된 근로시간에 비례하여 고용센터에서 급여를 지급합니다.<br />
							실제 근무시간 임금 : 200만원 × 30/40 = 150만원(사업주 지급)<br />
							단축된 근로시간 비례 급여 : 120만원(월 통상임금 60%) × 10/40 =30만원(고용센터 지급)<br />
							150만원 + 30만원 = 180만원의 급여를 받게 됩니다.</p>

							<p class="title">육아기 근로시간 단축 중의 급여 모의계산하기</p>
							본인이 받게 될 육아기 근로시간 단축 중의 급여 모의계산해보기<br />
							<a href="https://www.ei.go.kr/ei/eih/eg/pb/pbPersonBnef/retrievePb332Info.do" target="_blank" class="red">https://www.ei.go.kr/ei/eih/eg/pb/pbPersonBnef/retrievePb332Info.do</a>

						</div>
					</div>
				</li>
				<li class="article hide">
					<p class="q"><a href="#a1" class="trigger">육아기 근로시간 단축 급여 신청</a><span class="after_up">블릿</span></p>
					<div class="a" style="overflow:hidden; padding-top:10px; margin-top:0px; padding-bottom:10px; margin-bottom:0px;">
						<div class="info_data">
							<p class="title">신청 시기</p>
							육아기 근로시간 단축 시작일로부터 30일이 지나면 최초 신청을 하여 매달 지급받을 수 있습니다. 단축 종료 후 한 번에 신청하는 것도 가능하나, 육아기 근로시간 단축 종료일로부터 1년 이내에는 반드시 신청 해야 합니다.
							<span class="red_big">* 신청 절차</span>
							<img src="../img/info_data09.png">
							<p class="title">신청방법</p>
							사업주로부터 육아기 근로시간 단축 확인서 발급＋육아기 근로시간 단축 급여 신청서 작성→ 신청인의 거주지 또는 사업장 관할 고용센터에 급여 신청<br />
							※ 사업주는 고용보험 홈페이지 <a href="http://www.ei.go.kr" class="red" target="_blank">(www.ei.go.kr)</a> 에 육아기 근로시간 단축 확인서를 직접 접수할 수 있으며, 이 경우 근로자는 육아기 근로시간 단축 급여 신청서를 고용센터에 제출
							<p class="title">필요서류</p>
							① 육아기 근로시간 단축 급여 신청서 1부<br />
							② 육아기 근로시간 단축 확인서 1부<br />
							③ 통상임금을 확인할 수 있는 자료(임금대장, 근로계약서 등) 사본 1부<br />
							④ 단축기간 동안 사업주로부터 금품을 지급받은 경우 이를 확인할 수 있은 자료
						</div>
					</div>
				</li>
				<li class="article hide">
					<p class="q"><a href="#a1" class="trigger">단축 근로자의 처우</a><span class="after_up">블릿</span></p>
					<div class="a" style="overflow:hidden; padding-top:10px; margin-top:0px; padding-bottom:10px; margin-bottom:0px;">
						<div class="info_data">
							<p class="title">근로시간 비례 적용</p>
							<ul class="dep01">
								<li>육아기 근로시간 단축 사용 근로자의근로조건을 육아기 근로시간 단축을 이유로 불리하게 할 수 없습니다. 연차휴가도 근로시간에 비례하여 적용합니다.</li>
								<li>상여금 또는 성과급의 경우, 해당 사업장의 취업규칙 또는 단체협약 등으로 정한 기준에 따르되, 적어도 근무시간에 비례한 급여액 이상을 지급하여야 합니다.</li>
							</ul>
							<p class="title">평균임금 산정방법</p>
							<ul class="dep01">
								<li>육아기 근로시간 단축 기간은 평균임금 산정대상 기간에서 제외됩니다. 따라서 퇴직금 정산 등 평균임금산정사유가 발생한 경우에는 육아기 근로시간 단축을 시작한 날 이전의 3개월간의 임금총액을 기준으로 평균임금을 산정합니다.</li>
							</ul>							
						</div>
					</div>
				</li>
				<li class="article hide">
					<p class="q"><a href="#a1" class="trigger">불이익 대처</a><span class="after_up">블릿</span></p>
					<div class="a" style="overflow:hidden; padding-top:10px; margin-top:0px; padding-bottom:10px; margin-bottom:0px;">
						<div class="info_data">
							<p class="title">육아기 근로시간 단축 권리행사 시 불이익</p>
							<ul class="dep01">
								<li>정당한 사유 없이 근로자의 육아기 근로시간 단축을 거부한 사업주에게는 500만원 이하의 과태료가 부과됩니다.</li>
								<li>정당한 거부사유에 해당되어 사업주가 육아기 근로시간 단축을 허용하지 않더라도 그 사유를 서면으로 통보하고, 근로시간 단축 대신 육아휴직을 부여하는 등의 지원방안을 근로자와 협의하여야 합니다. 육아기 근로시간 단축 권리행사 시 불이익</li>
								<li>육아기 근로시간 단축을 이유로 해고당한 근로자는 노동위원회에 부당해고 구제신청을 할 수 있습니다.</li>
							</ul>
							<table class="list_table01">
								<tr>
									<th style="text-align:center;">Tip</th>
								</tr>
								<tr>
									<td>노동위원회는 취약계층 근로자를 위해 ‘권리구제 대리인 무료지원제도’를 운영하고 있습니다. 월 평균임금이 200만원 미만인 근로자가 노동위원회에 부당해고 등의 구제신청을 하면 무료로 대리인(공인노무사, 변호사)의 법률적 지원을 받을 수 있도록 하는 제도입니다.</td>
								</tr>
							</table>
							<p class="title">직장 복귀 시 불이익</p>
							<ul class="dep01">
								<li>사업주가 육아기 근로시간 단축 종료 후 복귀한 근로자에게 불리한 처우를 한다면 사업장을 관할하는 고용노동지청에 신고(진정, 고소)을 통해 사업주의 위법행위를 시정할 수 있습니다.</li>
							</ul>
							<p class="title">벌칙</p>
							<ul class="dep01">
								<li>정당한 이유 없이 육아기 근로시간 단축을 거부한 사업주 : 500만원 이하의 과태료</li>
								<li>육아기 근로시간 단축을 이유로 해고나 그 밖의 불리한 처우를 한 사업주 : 3년 이하의 징역 또는 2천만원 이하의 벌금</li>
								<li>육아기 근로시간 단축 기간이 끝난 근로자를 단축 전과 같은 업무 또는 같은 수준의 임금을 지급하는 직무에 복귀시키지 않은 사업주 : 500만원 이하의 벌금</li>
							</ul>
							<p class="title">근거 조문</p>
							<ul class="dep01">
								<li><span class="red">남녀고용평등과 일·가정 양립 지원에 관한 법률 :</span> 제19조의2[육아기 근로시간 단축], 제19조의3[육아기근로시간 단축 중 근로조건 등]<br />
								<span class="red">같은 법 시행령 :</span> 제15조[육아기 근로시간 단축의 신청 등], 제15조의2[육아기 근로시간 단축의 허용 예외]</li>
								<li>고용보험법 : 제73조의2[육아기 근로시간 단축 급여]</li>
							</ul>
							<p class="title">관련서식</p>
							<a href="#"><img src="../img/info_data10.png" class="down_file"></a>
							<a href="#"><img src="../img/info_data11.png" class="down_file"></a>
							<a href="#"><img src="../img/info_data12.png" class="down_file"></a>
						</div>
					</div>
				</li>
			</ul>
		</div>
		<!-- //UI Object -->

		
	</div>
<c:import url="/WEB-INF/jsp/include/footer.jsp" />


<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script> 
<script type="text/javascript">
jQuery(function(){
	
	var article = $('.info .article');
	article.addClass('hide');
	article.find('.a').slideUp(100);
	
	$('.info .article .q').click(function(){
		var myArticle = $(this).children("a").parents('.article:first');
		if(myArticle.hasClass('hide')){
			article.addClass('hide').removeClass('show'); // 아코디언 효과를 원치 않으면 이 라인을 지우세요
			article.find('.a').slideUp(100); // 아코디언 효과를 원치 않으면 이 라인을 지우세요
			myArticle.removeClass('hide').addClass('show');
			myArticle.find('.a').slideDown(100);
			myArticle.find('.after_up').removeClass('after_up').addClass('after_down');
		} else {
			myArticle.removeClass('show').addClass('hide');
			myArticle.find('.a').slideUp(100);
			myArticle.find('.after_down').removeClass('after_down').addClass('after_up');
		}
	});
	
	$('.info .hgroup .trigger').click(function(){
		var hidden = $('.info .article.hide').length;
		if(hidden > 0){
			article.removeClass('hide').addClass('show');
			article.find('.a').slideDown(100);
		} else {
			article.removeClass('show').addClass('hide');
			article.find('.a').slideUp(100);
		}
	});
	
});
</script>
</body>
</html>
