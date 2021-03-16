<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date" %>
<%@ page import="java.sql.*, java.net.*" %>
<%@ page info="현재 홈페이지의 설명문을 작성할때 사용" %> <!-- 잘사용하지 않음 -->
<!--  -->
<%-- --%>

<!DOCTYPE html>
<%! 
	// 선언문 => jsp 전체 페이지에서 불러다 사용할 변수(=static 멤버변수), 메서드가 필요할 때 선언하는 영역
	String name = "홍길동";
	
	public void setName(String name){
		this.name = name;
	}
	
	public String getName(){ // 객체명.일반메서드명(~)
		return name;
	}
	
%>
<html>
<head>
<meta charset="UTF-8">
<title>Jsp 3번째(표현식 활용, 선언문의 메서드 작성)</title>
</head>
<body>
	<%
		float f = 2.3f;
		int i = Math.round(f); // 2.3은 반올림 x
		out.println(i);
		Date d = new Date(); // import 구문을 안쓰는 경우에 경로 넣기
		out.println("d의 값은? => " + d); // d.toString() 호출
	%>
	<hr><p>
	<h1>
	정수 f의 반올림 값은? <%=i %></p>
	현재 날짜와 시간은 얼마입니까? <%=d.toString() %><p>
	name의 값은? <%=name %><p>
	getName()사용 ? <%=getName() %> </h1><!-- 클래스명을 알 수 없기 때문에 객체를 생성  --> 
</body>
</html>