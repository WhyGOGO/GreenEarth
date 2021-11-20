<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
    request.setCharacterEncoding("UTF-8");
    
    String email = (String) session.getAttribute("email");
	if (email == null || email.equals("")) {
   		out.println("<script>alert('로그인 세션이 존재하지 않습니다.')");
   		out.println("location.href='../../로그인/login.jsp'</script>");
   	} else {
    %>
