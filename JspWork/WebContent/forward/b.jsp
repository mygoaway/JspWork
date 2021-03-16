<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>a.jsp</title>
</head>
<body bgcolor="green">
<h1>b.jsp로 오신것을 환영합니다.</h1>
<%
	// request.setAttribute("cal", d); // <-> request.getAttribute("cal");
	Date d = (Date) request.getAttribute("cal"); // Object -> Integer -> int
%>
cal값은 ? <%=d %><br>
mover2.jsp에서 공유한 cal값은? <%=request.getAttribute("cal") %> 
</body>
</html>