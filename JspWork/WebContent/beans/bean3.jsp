<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
 <%	
 	// 한글처리
 	request.setCharacterEncoding("UTF-8");  
 	String name = request.getParameter("name");
 	String addr = request.getParameter("addr");
 	System.out.println("name = " + name + ", addr = " + addr);
 %>
 
 <jsp:useBean id="beantest" class="test.BeanDto" scope="page"/>
 <%--  <jsp:setProperty param="name" property="name" name="beantest"/>
 <jsp:setProperty param="addr" property="addr" name="beantest"/> 
	액션태그의 주석은 눈에 보이지 않는 주석을 사용한다.(<%-- --%>)
 --%>
  
<!--   자바빈 클래스의 속성값 설정, 변수이름은 beantest, 파라미터의 값 그대로 값 설정
  (파라미터의 이름과 자바빈 클래스의 멤버변수 이름 동일) -->
 
  <jsp:setProperty property="*" name="beantest"/>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션코드를 이용해서 사용하는 방법</title>
</head>
<body>
<hr>
액션태그를 통한 Getter Method를 호출하는 경우
getName()호출 => <jsp:getProperty name="beantest"         property="name"/>
getAddr()호출 =>  <jsp:getProperty name="beantest" property="addr"/>
<b><%= beantest.getName() %></b>님 잘 오셨습니다.<br>
<b>주소는 <%=beantest.getAddr() %></b> 이군요!
</body>
</html>