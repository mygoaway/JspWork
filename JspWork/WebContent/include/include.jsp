<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청1</title>
</head>
<body>
	<h1>포함을 하는 페이지</h1>
	<%
		request.setCharacterEncoding("utf-8"); // 한글처리
	%>

	
	<jsp:include page="sub.jsp" flush="false" />
	나머지는 sub.jsp가 알아서 해줄거에요
</body>
</html>