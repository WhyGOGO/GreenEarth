<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="beans_method.*" %>
    
<%
	request.setCharacterEncoding("UTF-8");
	
	int rent_num = Integer.parseInt(request.getParameter("rental_num"));
	String state = request.getParameter("state");
	String cp_num =request.getParameter("Cp_num");
	
	updateDB up = updateDB.getInstance();
	//예약0 -> 대여 1
	
	
	up.requestCancel3(rent_num);
	up.requestPro2(cp_num);

%>
<script>
		location.href="예약관리.jsp"
	</script>