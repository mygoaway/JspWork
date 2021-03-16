<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%
	request.setCharacterEncoding("utf-8");
	String msg = request.getParameter("msg");
	int number = Integer.parseInt(request.getParameter("number"));
	System.out.println("msg = " + msg + ", number = " + number);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%for(int i = 0; i < number; i ++)  { %>
			<%=msg %><br>		
	<% }  %>
</body>
</html>