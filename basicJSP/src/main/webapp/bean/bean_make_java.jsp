<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>자바 코드를 이용해서 bean을 사용</h2>
	<%@page import="com.bean.User" %> 
	<%
	User user = new User(); //생성자를 이용해 객체 생성
	user.setId("kkk123");
	user.setName("홍길동2");
	//자바 코드로 다음 페이지로 전달하는 경우 강제로 request 에 저장
	request.setAttribute("user", user); //user객체를 전달
	
	RequestDispatcher dp = request.getRequestDispatcher("bean_use_java.jsp");
	dp.forward(request, response);
	%>
</body>
</html>