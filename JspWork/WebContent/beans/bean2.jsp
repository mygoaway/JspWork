<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="test.BeanDto" %>
 <%	
 	// 한글처리
 	request.setCharacterEncoding("UTF-8");  
 	String name = request.getParameter("name");
 	String addr = request.getParameter("addr");
 	System.out.println("name = " + name + ", addr = " + addr);
 	
 	// 1. 객체생성
 	BeanDto bd = new BeanDto();
 	
 	// 2. 입력받은 갯수만큼 Setter Method 호출
 	bd.setName(name);
 	bd.setAddr(addr);
 	
 	// 3. Getter Method를 호출해서 각 테이블의 필드에 저장(JDBC)
 	out.println("입력받은 이름은? " + bd.getName() + "<br>");
 	out.println("입력받은 주소는? " + bd.getAddr() + "<br>");
 %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바코드를 이용해서 사용하는 방법</title>
</head>
<body>
<hr>
<b><%= bd.getName() %></b>님 잘 오셨습니다.<br>
<b>주소는 <%=bd.getAddr() %></b> 이군요!
</body>
</html>