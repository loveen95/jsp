<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  /* 로그아웃 처리(세션정보 삭제)
     1. 일부 세션 정보를 제거... user_id 
     session.removeAttribute("user_id");
     2. 모든 세션 정보를 제거
     session.invalidate();
  */
  //session.removeAttribute("user_id");
 
  session.invalidate();
  
  
  response.sendRedirect("session_login.jsp");
%>