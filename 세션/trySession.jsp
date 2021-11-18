<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    <%
    request.setCharacterEncoding("UTF-8");
    
    String id = "";

  
    	id = (String) session.getAttribute("email");
    	if (id == null || id.equals("")) {
    		out.println("<script>alert('로그인 세션이 존재하지 않습니다.')");
    		out.println("location.href='../로그인/login.jsp'</script>");
    	} else {
    %>
    