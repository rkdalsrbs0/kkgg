<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="topMenuId" value="3" scope="request"/>
<c:import url="/WEB-INF/views/include/header.jsp" />
	<form name="userJoinForm">
	<div class="container">
		<h2 style="color: #9C89B8;">회원가입</h2>
		<div class="list_cover02 section">
		<table class="list_table02">
		<colgroup>
			<col width="200px">
			<col width="400px;">
		</colgroup>
			<tr>
				<th class="center">이메일 주소(아이디)</th>
				<td>
					<input type="text" style="font-size: 15px; width: 150px;"/> @
					<input type="text" name="email2" style="font-size: 15px; width: 150px;"/>
					<select name="email3" id="email3" onChange="changeEmailDomain()"  <c:if test="${updateFlag eq 'Y'}">disabled</c:if>>
						<option value="">메일선택</option>
						<option value="naver.com">naver.com</option>
						<option value="yahoo.com">yahoo.com</option>
						<option value="hotmail.com">hotmail.com</option>
						<option value="nate.com">nate.com</option>
						<option value="korea.com">korea.com</option>
						<option value="hanmail.net">hanmail.net</option>
					</select>
				</td>
			</tr>
			<tr>
				<th class="center">비밀번호</th>
				<td>
					<input type="password" style="font-size: 15px;"/>
				</td>
 			</tr>
			<tr>
				<th class="center">비밀번호 확인</th>
				<td>
					<input type="password" style="font-size: 15px; "/>
				</td>
			</tr>
			<tr>
				<th class="center">생년월일</th>
					<td>
						<select name=birthYy id="birthYy">
							<option value="">선택</option>
							<option value="2010" <c:if test="${applyMap.birthYy eq '2010'}">selected</c:if>>2010</option>
							<option value="2009" <c:if test="${applyMap.birthYy eq '2009'}">selected</c:if>>2009</option>
							<option value="2008" <c:if test="${applyMap.birthYy eq '2008'}">selected</c:if>>2008</option>
							<option value="2007" <c:if test="${applyMap.birthYy eq '2007'}">selected</c:if>>2007</option>
							<option value="2006" <c:if test="${applyMap.birthYy eq '2006'}">selected</c:if>>2006</option>
							<option value="2005" <c:if test="${applyMap.birthYy eq '2005'}">selected</c:if>>2005</option>
							<option value="2004" <c:if test="${applyMap.birthYy eq '2004'}">selected</c:if>>2004</option>
							<option value="2003" <c:if test="${applyMap.birthYy eq '2003'}">selected</c:if>>2003</option>
							<option value="2002" <c:if test="${applyMap.birthYy eq '2002'}">selected</c:if>>2002</option>
							<option value="2001" <c:if test="${applyMap.birthYy eq '2001'}">selected</c:if>>2001</option>
							<option value="2000" <c:if test="${applyMap.birthYy eq '2000'}">selected</c:if>>2000</option>
							<option value="1999" <c:if test="${applyMap.birthYy eq '1999'}">selected</c:if>>1999</option>
							<option value="1998" <c:if test="${applyMap.birthYy eq '1998'}">selected</c:if>>1998</option>
							<option value="1997" <c:if test="${applyMap.birthYy eq '1997'}">selected</c:if>>1997</option>
							<option value="1996" <c:if test="${applyMap.birthYy eq '1996'}">selected</c:if>>1996</option>
							<option value="1995" <c:if test="${applyMap.birthYy eq '1995'}">selected</c:if>>1995</option>
							<option value="1994" <c:if test="${applyMap.birthYy eq '1994'}">selected</c:if>>1994</option>
							<option value="1993" <c:if test="${applyMap.birthYy eq '1993'}">selected</c:if>>1993</option>
							<option value="1992" <c:if test="${applyMap.birthYy eq '1992'}">selected</c:if>>1992</option>
							<option value="1991" <c:if test="${applyMap.birthYy eq '1991'}">selected</c:if>>1991</option>
							<option value="1990" <c:if test="${applyMap.birthYy eq '1990'}">selected</c:if>>1990</option>
							<option value="1989" <c:if test="${applyMap.birthYy eq '1989'}">selected</c:if>>1989</option>
							<option value="1988" <c:if test="${applyMap.birthYy eq '1988'}">selected</c:if>>1988</option>
							<option value="1987" <c:if test="${applyMap.birthYy eq '1987'}">selected</c:if>>1987</option>
							<option value="1986" <c:if test="${applyMap.birthYy eq '1986'}">selected</c:if>>1986</option>
							<option value="1985" <c:if test="${applyMap.birthYy eq '1985'}">selected</c:if>>1985</option>
							<option value="1984" <c:if test="${applyMap.birthYy eq '1984'}">selected</c:if>>1984</option>
							<option value="1983" <c:if test="${applyMap.birthYy eq '1983'}">selected</c:if>>1983</option>
							<option value="1982" <c:if test="${applyMap.birthYy eq '1982'}">selected</c:if>>1982</option>
							<option value="1981" <c:if test="${applyMap.birthYy eq '1981'}">selected</c:if>>1981</option>
							<option value="1980" <c:if test="${applyMap.birthYy eq '1980'}">selected</c:if>>1980</option>
							<option value="1979" <c:if test="${applyMap.birthYy eq '1979'}">selected</c:if>>1979</option>
							<option value="1978" <c:if test="${applyMap.birthYy eq '1978'}">selected</c:if>>1978</option>
							<option value="1977" <c:if test="${applyMap.birthYy eq '1977'}">selected</c:if>>1977</option>
							<option value="1976" <c:if test="${applyMap.birthYy eq '1976'}">selected</c:if>>1976</option>
							<option value="1975" <c:if test="${applyMap.birthYy eq '1975'}">selected</c:if>>1975</option>
							<option value="1974" <c:if test="${applyMap.birthYy eq '1974'}">selected</c:if>>1974</option>
							<option value="1973" <c:if test="${applyMap.birthYy eq '1973'}">selected</c:if>>1973</option>
							<option value="1972" <c:if test="${applyMap.birthYy eq '1972'}">selected</c:if>>1972</option>
							<option value="1971" <c:if test="${applyMap.birthYy eq '1971'}">selected</c:if>>1971</option>
							<option value="1970" <c:if test="${applyMap.birthYy eq '1970'}">selected</c:if>>1970</option>
							<option value="1969" <c:if test="${applyMap.birthYy eq '1969'}">selected</c:if>>1969</option>
							<option value="1968" <c:if test="${applyMap.birthYy eq '1968'}">selected</c:if>>1968</option>
							<option value="1967" <c:if test="${applyMap.birthYy eq '1967'}">selected</c:if>>1967</option>
							<option value="1966" <c:if test="${applyMap.birthYy eq '1966'}">selected</c:if>>1966</option>
							<option value="1965" <c:if test="${applyMap.birthYy eq '1965'}">selected</c:if>>1965</option>
							<option value="1964" <c:if test="${applyMap.birthYy eq '1964'}">selected</c:if>>1964</option>
							<option value="1963" <c:if test="${applyMap.birthYy eq '1963'}">selected</c:if>>1963</option>
							<option value="1962" <c:if test="${applyMap.birthYy eq '1962'}">selected</c:if>>1962</option>
							<option value="1961" <c:if test="${applyMap.birthYy eq '1961'}">selected</c:if>>1961</option>
							<option value="1960" <c:if test="${applyMap.birthYy eq '1960'}">selected</c:if>>1960</option>
						</select>
						년
						<select name="birthMm" id="birthMm">
							<option value="">선택</option>
							<option value="12" <c:if test="${applyMap.birthMm eq '12'}">selected</c:if>>12</option>
							<option value="11" <c:if test="${applyMap.birthMm eq '11'}">selected</c:if>>11</option>
							<option value="10" <c:if test="${applyMap.birthMm eq '10'}">selected</c:if>>10</option>
							<option value="09" <c:if test="${applyMap.birthMm eq '09'}">selected</c:if>>09</option>
							<option value="08" <c:if test="${applyMap.birthMm eq '08'}">selected</c:if>>08</option>
							<option value="07" <c:if test="${applyMap.birthMm eq '07'}">selected</c:if>>07</option>
							<option value="06" <c:if test="${applyMap.birthMm eq '06'}">selected</c:if>>06</option>
							<option value="05" <c:if test="${applyMap.birthMm eq '05'}">selected</c:if>>05</option>
							<option value="04" <c:if test="${applyMap.birthMm eq '04'}">selected</c:if>>04</option>
							<option value="03" <c:if test="${applyMap.birthMm eq '03'}">selected</c:if>>03</option>
							<option value="02" <c:if test="${applyMap.birthMm eq '02'}">selected</c:if>>02</option>
							<option value="01" <c:if test="${applyMap.birthMm eq '01'}">selected</c:if>>01</option>
						</select>
						월
						<select name="birthDd" id="birthDd">
							<option value="">선택</option>
							<option value="31" <c:if test="${applyMap.birthDd eq '31'}">selected</c:if>>31</option>
							<option value="30" <c:if test="${applyMap.birthDd eq '30'}">selected</c:if>>30</option>
							<option value="29" <c:if test="${applyMap.birthDd eq '29'}">selected</c:if>>29</option>
							<option value="28" <c:if test="${applyMap.birthDd eq '28'}">selected</c:if>>28</option>
							<option value="27" <c:if test="${applyMap.birthDd eq '27'}">selected</c:if>>27</option>
							<option value="26" <c:if test="${applyMap.birthDd eq '26'}">selected</c:if>>26</option>
							<option value="25" <c:if test="${applyMap.birthDd eq '25'}">selected</c:if>>25</option>
							<option value="24" <c:if test="${applyMap.birthDd eq '24'}">selected</c:if>>24</option>
							<option value="23" <c:if test="${applyMap.birthDd eq '23'}">selected</c:if>>23</option>
							<option value="22" <c:if test="${applyMap.birthDd eq '22'}">selected</c:if>>22</option>
							<option value="21" <c:if test="${applyMap.birthDd eq '21'}">selected</c:if>>21</option>
							<option value="20" <c:if test="${applyMap.birthDd eq '20'}">selected</c:if>>20</option>
							<option value="19" <c:if test="${applyMap.birthDd eq '19'}">selected</c:if>>19</option>
							<option value="18" <c:if test="${applyMap.birthDd eq '18'}">selected</c:if>>18</option>
							<option value="17" <c:if test="${applyMap.birthDd eq '17'}">selected</c:if>>17</option>
							<option value="16" <c:if test="${applyMap.birthDd eq '16'}">selected</c:if>>16</option>
							<option value="15" <c:if test="${applyMap.birthDd eq '15'}">selected</c:if>>15</option>
							<option value="14" <c:if test="${applyMap.birthDd eq '14'}">selected</c:if>>14</option>
							<option value="13" <c:if test="${applyMap.birthDd eq '13'}">selected</c:if>>13</option>
							<option value="12" <c:if test="${applyMap.birthDd eq '12'}">selected</c:if>>12</option>
							<option value="11" <c:if test="${applyMap.birthDd eq '11'}">selected</c:if>>11</option>
							<option value="10" <c:if test="${applyMap.birthDd eq '10'}">selected</c:if>>10</option>
							<option value="09" <c:if test="${applyMap.birthDd eq '09'}">selected</c:if>>09</option>
							<option value="08" <c:if test="${applyMap.birthDd eq '08'}">selected</c:if>>08</option>
							<option value="07" <c:if test="${applyMap.birthDd eq '07'}">selected</c:if>>07</option>
							<option value="06" <c:if test="${applyMap.birthDd eq '06'}">selected</c:if>>06</option>
							<option value="05" <c:if test="${applyMap.birthDd eq '05'}">selected</c:if>>05</option>
							<option value="04" <c:if test="${applyMap.birthDd eq '04'}">selected</c:if>>04</option>
							<option value="03" <c:if test="${applyMap.birthDd eq '03'}">selected</c:if>>03</option>
							<option value="02" <c:if test="${applyMap.birthDd eq '02'}">selected</c:if>>02</option>
							<option value="01" <c:if test="${applyMap.birthDd eq '01'}">selected</c:if>>01</option>
						</select>
						일
					</td>
				</tr>
				<tr>
					<th>연락처</th>
					<td>
						<select name="cellno1" id="cellno1"  >
							<option value="">선택</option>
							<option value="010" <c:if test="${applyMap.cellno1 eq '010'}">selected</c:if>>010</option>
							<option value="011" <c:if test="${applyMap.cellno1 eq '011'}">selected</c:if>>011</option>
							<option value="016" <c:if test="${applyMap.cellno1 eq '016'}">selected</c:if>>016</option>
							<option value="017" <c:if test="${applyMap.cellno1 eq '017'}">selected</c:if>>017</option>
							<option value="018" <c:if test="${applyMap.cellno1 eq '018'}">selected</c:if>>018</option>
							<option value="019" <c:if test="${applyMap.cellno1 eq '019'}">selected</c:if>>019</option>
						</select> - 
						<input type="text" class="txt w_50" name="cellno2" id="cellno2" value="${applyMap.cellno2}" maxlength="4" > - 
						<input type="text" class="txt w_50" name="cellno3" id="cellno3" value="${applyMap.cellno3}" maxlength="4">
						<p><span class="t_gray small">* 휴대전화번호는 필수 입력 사항입니다.</span></p>
					</td>
					</tr>
					<tr>
					<th>성별</th>
					<td>
				      <input type="radio" name="view2" name="gender" value="week2" id="week2" checked>
				      <label for="week2">남자</label>
				      <input type="radio" name="view2" name="gender" value="month2" id="month2">
				      <label for="month2">여자</label>
					</td>
				</tr>
			</table>
			</div><br>
				<h3 class="mt30" style="color: #9C89B8;">회원가입 주의 사항</h3>
	
				<div class="gray_box">
					<p class="bold">⊙ 모든 항목들은 반드시 입력해야 합니다.</p> 
					<p class="bold">⊙ 허위로 작성된 정보일 경우 승인 보류되거나 임의로 삭제될 수 있습니다.</p> 
					<p class="bold">⊙ 회원가입은 무료입니다.</p>
					<p class="bold">⊙ 가입하기 클릭 후 메일인증이  필요합니다.</p>  
				</div>
			</div>
			<div class="btn_area mt30">
				<a href="" class="btn_black">가입하기</a> 
				<a href="/" class="btn_gray">홈으로</a> 
			</div>
	</form>
	<c:import url="/WEB-INF/views/include/footer.jsp" />
	<script>
	var frmObj = document.userJoinForm;
	function changeEmailDomain() {
		frmObj.email2.value = frmObj.email3.value;
	}
	</script>