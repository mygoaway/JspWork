<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="calc.CalcBean" %>

<!-- 방법 1번 : 자바코드를 이용해서 자바빈즈 객체 생성 및 setter 메서드 활용해서 값 받디 -->
<%
	CalcBean ca = new CalcBean();
	ca.setNum1(Integer.parseInt(request.getParameter("num1")));
	ca.setNum2(Integer.parseInt(request.getParameter("num2")));
	ca.setOperator(request.getParameter("operator"));
%>
   
 <!-- 방법 2번 : 액션태그를 이용해서 자바빈즈 객체 생성 및 setter 메서드 활용해서 값 받기 -->
<jsp:useBean id="bean" class="calc.CalcBean"></jsp:useBean>
<jsp:setProperty property="*" name="bean"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청을 받아서 처리해주는 페이지</title>
</head>
<body>
	계산결과(자바코드 사용) : <%= ca.calculate() %><p>
	계산결과(액션태그 사용) : <%= bean.calculate() %>
</body>
</html>