<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="topMenuId" value="1" scope="request"/>
<c:set var="categoryId" value="1" scope="request"/>
<c:import url="/WEB-INF/jsp/include/header.jsp" />
<c:import url="/WEB-INF/jsp/policy/include/category.jsp" />
	
	<div class="container">
		<div class="tab03">
			<a href="/policy/leaveInfo" class="on">육아휴직 및 급여</a>
			<a href="/policy/leaveInfo1">육아기 근로시간 단축 및 급여</a>
		</div>
		
		<h1>육아휴직정보
			<p>만 8세 이하 또는 초등학교 2학년 이하의 자녀를 양육하기 위하여 근로자는 최대 1년까지 휴직 할 수 있으며 정부는 월 통상임금의 40%~80%(월 최대 150만원)를 육아휴직 급여로 지원합니다.</p>
		</h1>
		
		<!-- UI Object -->
		<div class="info">
			<div class="hgroup">
				<h2></h2>
				<button type="button" class="trigger"><span>전체보기</span></button>
			</div>
			<ul>
				<li class="article hide">
					<p class="q"><a href="#a1" class="trigger">육아휴직 사용</a><span class="after_up">블릿</span></p>
					<div class="a" style="overflow:hidden; padding-top:10px; margin-top:0px; padding-bottom:10px; margin-bottom:0px;">
						<div class="info_data">
							<p class="title">사용대상</p>
							<ul class="dep01">
								<li>
									<p><strong>육아휴직은</strong></p>
									① 만 8세 이하 또는 초등학교 2학년 이하의 자녀가 있고,② 근속기간 1년 이상이며 ③ 배우자가 육아휴직 중이 아닌 남녀 근로자가 사용할 수 있습니다.
								</li>
								<li>
									<p><strong>육아휴직</strong></p>
									시작일 기준으로 자녀가 만 8세 이하이거나 초등학교 2학년 이하이면 되고, 육아휴직 사용 도중 자녀가 만 9세가 되거나 초등학교 3학년이 되더라도 나머지 기간을 모두 사용할 수 있습니다. <br />
									<span class="red">* 사업주가 육아휴직을 거부할 수 있는 경우</span><br />
									① 휴직개시 예정일 전날까지 해당 사업에서 계속 근로한 기간이 1년 미만인 근로자가 신청한 경우<br />
									② 같은 자녀에 대하여 배우자가 육아휴직을 하고 있는 근로자가 신청한 경우
									<p class="table_q">Q 근속기간이 1년 미만인 사람은 육아휴직을 신청할 수 없나요?</p>
									<p class="table_a">A 근속기간이 1년 미만인 근로자도 육아휴직 신청은 가능합니다. 다만, 사업주가 육아휴직을 거부해도 법 위반은 아닙니다. 사업주의 재량으로 30일 이상 육아휴직을 부여받았다면, 육아휴직 급여도 신청가능 합니다.
									</p>
								</li>
							</ul>
							<p class="title">사용기간</p>
								한 자녀에 대하여 부모가 각각 1년씩 사용할 수 있습니다. 엄마, 아빠의 육아휴직을 합치면 한 자녀 당 총 2년의 육아휴직이 보장됩니다. 자녀가 2명 이상인 경우 각 자녀에 대하여 부모가 각각 1년씩 자녀의 수만큼 사용가능 합니다.
							<p class="title">사용방법</p>
							<ul class="dep01">
								<li>
									<p><strong>연속사용 또는 분할사용 가능</strong></p>
									육아휴직은 최대 1년까지 한 번에 사용하거나, 1회에 한하여 나누어 쓸 수 있으며, 육아기 근로시간 단축제와 함께 사용할 수도 있습니다.
								</li>
								<li>
									<p><strong>육아휴직</strong></p>
									시작일 기준으로 자녀가 만 8세 이하이거나 초등학교 2학년 이하이면 되고, 육아휴직 사용 도중 자녀가 만 9세가 되거나 초등학교 3학년이 되더라도 나머지 기간을 모두 사용할 수 있습니다. <br />
									<span class="red">* 육아휴직과 육아기 근로시간 단축의 사용방식</span><br />
									<ul class="dep01">
										<li>근로자가 육아휴직을 연속하여 최대 1년까지 한 번만 사용</li>
										<li>육아휴직 최대 1년 기간을 1회에 한하여 분할하여 두 번으로 나누어서 사용</li>
										<li>육아휴직과 육아기 근로시간 단축을 병행하여 사용하되 두 제도를 합하여 1년의 범위 안에서 사용</li>
									</ul>
									<span class="red_big">* 분할사용 예시</span>
									<table class="list_table01">
										<tr>
											<th colspan="2">1차 + 2차 사용기간 = 1년까지</th>
										</tr>
										<tr>
											<td>1차 사용</td>
											<td>2차 사용</td>
										</tr>
										<tr>
											<td>육아휴직</td>
											<td>육아휴직</td>
										</tr>
										<tr>
											<td>육아기 근로시간 단축</td>
											<td>육아휴직</td>
										</tr>
										<tr>
											<td>육아기 근로시간 단축</td>
											<td>육아기 근로시간 단축</td>
										</tr>
									</table>
									<p class="title">부부 동시 사용</p>
									육아휴직을 신청한 근로자의 배우자가 동일한 자녀에 대하여 이미 육아휴직 중인 경우에는 사업주가 육아휴직을 허용하지 않을 수 있습니다. 그렇다고 사업주의 육아휴직 허용이 금지되는 것은 아니기 때문에 사업주가 재량으로 육아휴직을 허용한다면 사용이 가능합니다. 다만, 동일한 자녀에 대하여 같은 시기에 사용하는 것이므로 두 사람의 육아휴직 사용시기가 겹치는 기간은 1명에게만 육아휴직 급여를 지급합니다.
									<p class="table_q">Q 육아휴직 중에 자녀를 친정 어머니가 키우게 되었어요!</p>
									<p class="table_a">A 육아휴직 중에 자녀와 동거하지 않으면 그 날부터 7일 이내에 이 사실을 사업주에게 알려야 합니다. 통지를 받은 사업주가 근로자에게 근무 개시일을 알려주면 근로자는 직장에 복귀해야 합니다.
									</p>
								</li>
							</ul>
						</div>
					</div>
				</li>
				<li class="article hide">
					<p class="q"><a href="#a1" class="trigger">육아휴직 신청</a><span class="after_up">블릿</span></p>
					<div class="a" style="overflow:hidden; padding-top:10px; margin-top:0px; padding-bottom:10px; margin-bottom:0px;">
						<div class="info_data">
							<p class="title">신청시기</p>
							<ul class="dep01">
								<li>휴직시작 예정일의 30일 전에 사업주에게 신청합니다.</li>
								<li>예외적으로 ① 출산 예정일 이전에 자녀가 출생한 경우, ② 배우자의 사망, 부상, 질병, 장애 또는 배우자와의 이혼 등으로 해당 자녀를 양육하기 곤란할 때에는 휴직시작 7일 전에 육아휴직을 신청할 수 있습니다.</li>
							</ul>
							<span class="red_big">* 신청절차</span>
							<img src="../img/info_data01.png">
							<p class="title">철회 또는 변경 신청</p>
							<p><strong>① 육아휴직 철회신청</strong></p>
							<ul class="dep01">
								<li>육아휴직을 신청한 근로자는 휴직 개시예정일의 7일 전까지 사유를 밝혀 그 신청을 철회 할 수 있습니다.</li>
							</ul>
							<p><strong>② 육아휴직 종료일 변경신청</strong></p>
							<ul class="dep01">
								<li>근로자가 육아휴직 종료예정일 30일 전에 육아휴직 연기를 신청하면 1회에 한하여 연기할 수 있습니다. 이 경우에도 연기된 기간을 포함한 전체 육아휴직 기간은 1년까지입니다. 종료예정일 30일 전에 신청하지 못했어도 사업주가 허락하면 연기가 가능하나, 사업주가 허락하지 않으면 복직해야 합니다.</li>
								<li>육아휴직 종료일을 앞당기는 것도 사업주의 허락이 있으면 가능합니다. 다만, 육아휴직을 신청할 때 사업주는 육아휴직 종료일까지 인력재배치, 대체인력 채용 등의 조치를 하였을 것이므로, 육아휴직 종료 일을 앞당기겠다는 근로자의 신청을 반드시 들어주어야 하는 것은 아닙니다.</li>
							</ul>
						</div>
					</div>
				</li>
				<li class="article hide">
					<p class="q"><a href="#a1" class="trigger">육아휴직 급여액</a><span class="after_up">블릿</span></p>
					<div class="a" style="overflow:hidden; padding-top:10px; margin-top:0px; padding-bottom:10px; margin-bottom:0px;">
						<div class="info_data">
							<p class="title">지원 금액</p>
							<ul class="dep01">
								<li>2017.9.1.부터 육아휴직 시작일 부터 3개월까지는 통상임금의 100분의 80(상한액:월150만원, 하한액:월70만원)을, 육아휴직 4개월째부터 육아휴직 종료일까지 통상임금의 100분의 40(상한액 : 월 100만원, 하한액 : 월50만원)을 육아휴직 급여액으로 지급합니다.</li>
								<li>육아휴직 시작일이 2017.9.1.이전인 경우 육아휴직급여는 매월 통상임금 100분의 40(상한액:월100만원, 하한액:월50만원)을 급여액으로 지급합니다.</li>
								<li>2017.9.1.이전에 육아휴직을 신청하였더라도 육아휴직기간의 첫3개월 기간의 종료일이 2017.9.1.이후인 경우에는 2017.9.1.부터 첫3개월 종료일까지의 기간동안 은 통상임금의 100분의 80으로 계산하여 지급합니다.</li>
							</ul>
							<span class="red_big">&lt;지급기준(고용보험법 시행령 제95조)&gt;</span>
							<table class="list_table01">
								<tr>
									<th style="text-align:center;">'17.8.31까지</th>
									<th style="text-align:center;">'17.9.1.~</th>
								</tr>
								<tr>
									<td>최대 1년간 월 통상임금의 40%<br />(상한 100만, 하한 50만)</td>
									<td>
									첫 3개월 월 통상임금의 80%<br />
									(상한 150만, 하한 70만)<br /><br />
									· 나머지 기간(최대 9개월) 월 통상임금의 40%<br />
									(상한 100만, 하한 50만)<br />
									</td>
								</tr>
							</table>
							<p class="title">육아휴직급여 특례("아빠육아휴직 보너스제")</p>
							<ul class="dep01">
								<li>같은 자녀에 대하여 부모가 순차적으로 모두 육아휴직을 사용하는 경우, 두 번째 사용한 사람의 육아 휴직 3개월 급여를 통상임금의 100%(상한 150만원)로 상향하여 지급합니다. <br />
								* 육아휴직은 동시에 사용할 수 없으며, 순차적으로 사용할 경우 적용되며, 연속으로 사용할 필요는 없습니다.</li>
								<li>아빠육아휴직 보너스제가 적용된 달은 육아휴직 급여 사후지급분 제도는 적용되지 않습니다. <br />
								* 사후지급분 제도 : 육아휴직 급여의 25%는 육아휴직 종료 후 복귀하여 6개월 이상 근무한 경우에 지급하는 제도</li>
								<li>부모가 같은 자녀에 대하여 육아휴직을 사용한 경우 지급되며, 육아기 근로시간 단축을 사용한 경우에는 아빠의 달 급여 지급 대상이 아닙니다.</li>
								<li>단, '16.1월 이후에 동일한 자녀에 대하여 두번째 육아휴직을 사용한 근로자에게만 아빠육아휴직 보너스제가 3개월 적용됩니다. <br />
								*이미 같은 자녀에 대해 '16.1.1. 이전 휴직을 했고, '16.1.1. 이후 나머지 기간을 분할 사용 또는 연장 시 3개월 혜택 미적용</li>
								<li>배우자가 공무원인 경우나 사립학교 교원인 경우 등은 고용보험 시스템에 육아휴직 이력이 남지 아니하나, 배우자가 육아휴직을 사용한 적이 있다는 확인서 등을 제출한다면, 아빠육아휴직 보너스제 급여를 지급 받을 수 있습니다.</li>
								<li>2017.7.1. 이후 출생한 둘째 이후 자녀에 대하여 아빠육아휴직 보너스제 사용 시 상한액이 200만원으로 인상됩니다</li>
							</ul>
							<p class="title">육아휴직급여 모의계산하기</p>
							본인이 받게 될 육아휴직급여 모의계산해보기<br />
							<a class="red" href="https://www.ei.go.kr/ei/eih/eg/pb/pbPersonBnef/retrievePb331Info.do">https://www.ei.go.kr/ei/eih/eg/pb/pbPersonBnef/retrievePb331Info.do</a>
						</div>
					</div>
				</li>
				<li class="article hide">
					<p class="q"><a href="#a1" class="trigger">육아휴직 급여 신청/지급</a><span class="after_up">블릿</span></p>
					<div class="a" style="overflow:hidden; padding-top:10px; margin-top:0px; padding-bottom:10px; margin-bottom:0px;">
						<div class="info_data">
							<p class="title">급여 신청자격</p>
							<span class="red">* 다음 3가지 요건을 모두 충족해야 합니다.</span>
							① 육아휴직 기간이 30일 이상일 것<br />
							② 육아휴직 시작일 이전에 피보험 단위기간이 180일 이상일 것<br />
							③ 같은 자녀에 대하여 배우자가 30일 이상의 육아휴직 또는 30일 이상의 육아기 근로시간 단축을 사용하지 않았을 것
							<p class="title">신청시기</p>
							<img src="../img/info_data02.png">
							<p class="title">신청방법</p>
							사업주로부터 육아휴직 확인서 발급＋육아휴직 급여 신청서 작성→ 신청인의 거주지 또는 사업장 관할고용센터에 급여 신청 <br />
							※ 사업주는 고용보험 홈페이지( www.ei.go.kr )에 육아휴직 확인서를 직접 접수할 수 있으며, 이 경우 근로자는 육아휴직 급여 신청서를 고용센터에 제출
							<p class="title">필요서류</p>
							① 육아휴직 급여 신청서 1부<br />
							② 육아휴직 확인서 1부<br />
							③ 통상임금을 확인할 수 있는 자료(임금대장 등) 사본 1부<br />
							④ 휴가기간 동안 사업주로부터 금품을 지급받은 경우, 이를 확인할 수 있는 자료
							<p class="title">급여 지급방식</p>
							육아휴직 근로자의 직장복귀율을 높이고자 고용보험법에서는 육아휴직 급여의 75%는 휴직 중에 지급하고, 나머지 25%는 휴직 종료 후 6개월 이상 근무한 경우에 지급하도록 하고 있습니다.따라서 육아휴직 근로자는 휴직시작 1개월 후부터 육아휴직 종료시점까지 육아휴직 급여를 매월 단위로신청하여 지원금의 75%를 월 단위로 받으면 됩니다. 만약 75%의 급여를 이전에 받지 않았다면 육아휴직 종료 후 6개월이 지난 시점부터 75%와 25%의 급여를 동시에 신청할 수 있습니다.
							<img src="../img/info_data03.png">
							기간제 근로자가 육아휴직 중 또는 육아휴직 복귀 후 6개월 전에 근로계약 기간이 만료되어 계속근로를 할 수 없는 경우, 근로계약 종료 시점에 나머지 지급금(총액의 25%)을 받을 수 있습니다.(단,계약기간 만료일이 2017.06.28. 이후인 기간제근로자 대상)
						</div>
					</div>
				</li>
				<li class="article hide">
					<p class="q"><a href="#a1" class="trigger">휴직자의 처우</a><span class="after_up">블릿</span></p>
					<div class="a" style="overflow:hidden; padding-top:10px; margin-top:0px; padding-bottom:10px; margin-bottom:0px;">
						<div class="info_data">
							<p class="title">근속기간 인정</p>
							육아휴직 기간은 근속기간에 들어갑니다. 근속기간은 승진, 퇴직금 산정, 연차유급휴가일수 가산 등을 할 때 기준이 되므로 육아휴직을 사용해도 근로자에게 불이익이 가지 않도록 하기 위함입니다.
							<p class="title">연차유급휴가 계산</p>
							육아휴직 기간은 근속기간에 포함되므로 연차휴가가 발생합니다. 연차휴가일수는 총 소정근로일수와 육아휴직 기간을 제외한 근로일수의 비율에 따라 산정합니다. <br />
							예 : 1년간 휴일을 제외한 총 소정근로일이 240일인 근로자가 80일을 육아휴직으로 사용하고, 160일을 개근한 경우, 연차휴가일수는 15일* × 160일 / 240일 = 10일 <br />
							※ 육아휴직을 1년 사용하고, 그 기간이 연차유급휴가 산정기간과 일치한다면 연차휴가일수가 0이 되는 경우도 있습니다. <br />
							※ 사업주는 1년간 80% 이상 출근한 근로자에게 15일의 유급휴가를 주어야 합니다.
							<p class="title">평균임금 산정방법</p>
							육아휴직 기간은 평균임금 산정대상 기간에서 제외됩니다. 따라서 퇴직금 정산 등 평균임금 산정사유가 발생한 경우에는 육아휴직한 날 이전의 3개월간의 임금총액을 기준으로 평균임금을 산정합니다.
							<p class="title">기간제·파견근로자의 계약기간</p>
							기간제근로자 또는 파견근로자가 육아휴직을 사용한다고 해서 계약기간이 자동연장되는 것은 아닙니다. 육아휴직 중 근로계약이 종료되면 육아휴직도 종료됩니다.
							다만, 사업주가 근로자의 육아휴직 기간만큼 계약기간 또는 파견기간을 연장해 줄 수 있습니다. 육아휴직 사용 도중 계약기간이 종료된 근로자를 종료 즉시 또는 15개월 이내에 재고용한 사업주에게는 고용보험에서 출산육아기 고용안정지원금을 지원합니다.
						</div>
					</div>
				</li>
				<li class="article hide">
					<p class="q"><a href="#a1" class="trigger">불이익 대처방안</a><span class="after_up">블릿</span></p>
					<div class="a" style="overflow:hidden; padding-top:10px; margin-top:0px; padding-bottom:10px; margin-bottom:0px;">
						<div class="info_data">
							<p class="title">육아휴직 권리행사 시 불이익</p>
							<ul class="dep01">
								<li>정당한 이유(근무기간이 1년 미만인 경우, 같은 자녀에 대하여 배우자가 육아휴직 중인 경우) 없이 육아휴직을 거부한 사업주에게는 500만원 이하의 벌금이 부과됩니다.</li>
								<li>사업주가 육아휴직을 허용하지 않을 경우, 근로자는 사업장 관할 고용노동청에 신고(진정, 고소)하여 위법행위를 시정할 수 있습니다. 진정서 또는 고소장이 접수된 경우 담당 근로감독관은 사용자와 근로자를 출석케 하여 사실관계에 대한 조사를 진행합니다. <br />
								조사결과 법 위반사실이 확인되면 근로감독관은 사업주에게 시정지시를 내리고, 사업주가 기한 내에 시 정하지 않으면 사건을 검찰에 송치합니다. (진정사건 처리기한 : 접수한 날로부터 25일 이내) 고소·고발사건이 접수된 경우, 근로감독관은 범죄사실을 수사하고 사건결과를 검찰에 송치합니다. (고소·고발사건 처리기간 : 접수한 날로부터 2월 이내)</li>
							</ul>
							<p class="title">육아휴직 사용 시 불이익</p>
							<ul class="dep01">
								<li>사업주는 육아휴직을 이유로 해고나 그 밖의 불리한 처우를 해서는 안 되며, 육아휴직 기간에는 그 근로자를 해고할 수 없습니다. 육아휴직을 이유로 해고나 그 밖의 불리한 처우를 하거나 육아휴직 기간동안 해당 근로자를 해고한 사업주에게는 3년 이하의 징역 또는 2천만원 이하의 벌금이 부과됩니다.</li>
								<li>육아휴직을 이유로 휴직기간에 해고당한 근로자는 지방노동위원회에 부당해고 구제신청을 할 수 있습니다. 구제신청은 부당해고가 있은 날로부터 3개월 이내에 하여야 하며, 노동위원회는 해고가 위법하다고 인정될 경우에는 사용자에게 근로자를 원직에 복직시키고 해고기간 동안의 임금상당액을 지급하라고 명하게 됩니다.</li>
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
								<li>사업주는 육아휴직을 마친 근로자를 휴직 전과 같은 업무 또는 같은 수준의 임금을 지급하는 직무에 복귀시켜야 합니다. 육아휴직을 마친 근로자를 휴직 전과 같은 업무 또는 같은 수준의 임금을 지급하는 직무에 복귀시키지 않은 사업주에게는 500만원 이하의 벌금이 부과됩니다.</li>
								<li>사업주가 육아휴직 종료 후 복귀한 근로자에게 불리한 처우를 한다면 사업장을 관할하는 고용노동지청에 신고(진정, 고소)을 통해 사업주의 위법행위를 시정할 수 있습니다. 이전과는 판이하게 다른 직무 로 복귀시키거나 임금을 삭감한 경우에는 지방노동위원회에 부당전보 구제신청을 할 수도 있습니다.</li>
							</ul>
							<p class="title">벌칙</p>
							<ul class="dep01">
								<li>정당한 이유 없이 육아휴직을 거부한 사업주 : 500만원 이하의 벌금</li>
								<li>육아휴직을 이유로 해고나 그 밖의 불리한 처우를 하거나 육아휴직 기간 동안 해당 근로자를 해고한 사업주 : 3년 이하의 징역 또는 2천만원 이하의 벌금</li>
								<li>육아휴직을 마친 근로자를 휴직 전과 같은 업무 또는 같은 수준의 임금을 지급하는 직무에 복귀시키지 않은 사업주 : 500만원 이하의 벌금</li>
							</ul>
							<p class="title">근거 조문</p>
							<ul class="dep01">
								<li><span class="red">남녀고용평등과 일·가정 양립 지원에 관한 법률 :</span> 제19조[육아휴직], 제19조의4[육아휴직과 육아기근로시간 단축의 사용형태]<br />
								<span class="red">같은 법 시행령 :</span> 제10조[육아휴직의 적용 제외], 제11조[육아휴직의 신청 등], 제12조[육아휴직의 변경신청], 제13조[육아휴직 신청의 철회 등] 제14조[영유아의 사망 등에 따른 육아휴직의 종료]</li>
								<li>고용보험법 : 제70조[육아휴직 급여], 제71조[육아휴직의 확인]<br /><span class="red">같은 법 시행령 :</span> 제94조[육아휴직 급여 신청기간의 연장 사유], 제95조[육아휴직 급여]식</li>
							</ul>
							<p class="title">관련서식</p>
							<a href="#"><img src="../img/info_data04.png" class="down_file"></a>
							<a href="#"><img src="../img/info_data05.png" class="down_file"></a>
							<a href="#"><img src="../img/info_data06.png" class="down_file"></a>
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