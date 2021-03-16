<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="bean" class="calc.CalcBean"></jsp:useBean>
<jsp:setProperty property="*" name="bean"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청 및 응답을 한꺼번에 해주는 페이지</title>
</head>
<body>
	<center>
	<h3>계산기</h3>
	<form name="form1" method="post" action="cal2.jsp">
		<input type="text" name="num1" width="200" size="5">
		<select name="operator">
			<option value="plus" selected>+</option>
			<option value="sub">-</option>
			<option value="multi">*</option>
			<option value="div">/</option>
		</select>
		<input type="text" name="num2" width="200" size="3"><p>
		<input type="submit" value="계산">
		<input type="reset" value="다시입력">
	</form>
	</center>
</body>
</html>