<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>a.jsp</title>
</head>
<body bgcolor="yellow">
<h1>a.jsp로 오신것을 환영합니다.</h1>
<%
	// request.setAttribute("cal", d); // <-> request.getAttribute("cal");
	int su = (int) request.getAttribute("total"); // Object -> Integer -> int
%>
total값은 ? <%=su %><br>
mover2.jsp에서 공유한 su값은? <%=request.getAttribute("total") %> 
</body>
</html>