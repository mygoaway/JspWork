<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>response(응답객체(보내주는 쪽))</title>
</head>
<body>
	<%
		// response.setContentType("text/html;charset=utf-8"); // euc-kr(한글처리)
		// response.sendRedirect("http://www.naver.com"); // 외부사이트로 이동
		// response.sendRedirect("../includeTest.jsp"); // 내부 프로젝트의 특정위치로 이동 가능
	%>
	
	<script>
		//location.href="http://www.daum.net";
		location.replace("http://www.empas.com");
	</script>
</body>
</html>