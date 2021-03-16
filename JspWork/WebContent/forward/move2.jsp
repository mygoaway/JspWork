<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청1</title>
</head>
<body>
	<h1>데이터 공유</h1>
	<%
	// -------------------------------------------------------------------
		int su = 100; // ---> a.jsp도 사용이 가능하게 하고 싶다.(공유)
		Date d = new Date(); // ---> b.jsp가 대신 오늘 날짜를 출력하게 하고 싶다.
	
		// 서버의 메모리에 저장 => 객체만 저장 => 컬렉션 => HashMap(key, value)
		// 형식) request[session/application].setAttribute("키명","저장할값(저자)")
	
		request.setAttribute("total", su); // int -> Integer -> Object
		request.setAttribute("cal", d); // <-> request.getAttribute("cal");
	// -------------------------------------------------------------------
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