<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객 정보 입력(customer_insert_form.jsp)</title>
</head>

<body>
<form name="cutomer_form" method="post" action="customer_inset_db.jsp">
<!--  <form name="cutomer_form" method="post" action="customer_inset_db.jsp">
-->
<table>
<caption>회원 정보 입력</caption>
<tr style="border-style:hidden hidden solid hidden;">
	<td colspan="2" style="background-color:white; text-align:right;">
		<span calss="msg_red">* 부분은 필수입력 항목입니다!</span></td>
</tr>

<%@ include file="../../common/include/html_input1_irud.inc" %>

<tr>
	<th><span class="msg_red">*</span>비밀번호</th>
	<td><input type="password" name="cust_pw" size="11" maxlength="10" required>
		<span class="msg_blue">(영 숫자 10자리 이내)</span></td>
</tr>
<tr>
	<th><span class="msg_red">*</span>이 &nbsp; 름 &nbsp; &nbsp;</th>
	<td><<input type="text" name="cust_name" size="15" maxlength="15"
		style="ime=mode:active" required></td>
</tr>
<tr>
	<th><span class="msg_red">*</span>전화번호</th>
	<td><select name="tel_no_gubun" required>
				<option selected value="">서비스 구분</option>
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="018">018</option>
				<option value="019">019</option>
			</select>-
			<input type="text" name="tel_no_guk" size="5" maxlength="4"
			required>-
			<input type="text" name="tel_no_seq" size="5" maxlength="4"
			required></td>
	
		
</table>
</form>
</body>
</html>