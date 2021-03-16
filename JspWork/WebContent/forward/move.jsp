<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청1</title>
</head>
<body>
	<h1>페이지 이동</h1>
	<%
		String move = request.getParameter("move"); // a.jsp or b.jsp
		System.out.println(move);
		// 형식 <jsp:forward page='이동할 페이지명(확장자)' />
		if(move.equals("a.jsp")){
			// response.sendRedirect("a.jsp") // 그냥 이동만 하는 경우
	%>
	<jsp:forward page='a.jsp' /><br>
	
	<% } else if (move.equals("b.jsp")) { %>
		<jsp:forward page='b.jsp' />
	<% } else  {%>
	<script>
		window.alert("당신이 요청하신 페이지는 없습니다. 확인 요망")
		location.href="forward.jsp"
	</script>
	<%}%>
</body>
</html>