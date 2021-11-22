<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="beans_method.*" %>
    
<%
	request.setCharacterEncoding("UTF-8");
	
	int rent_num = Integer.parseInt(request.getParameter("rental_num"));
	String state = request.getParameter("state");
	
	deleteDB del = deleteDB.getInstance();
	
	if (state.equals("반납")){
		del.delete_repairinfo(rent_num);
		del.delete_request(rent_num);
		del.delete_rental(rent_num);
%>
	<script>
		location.href="대여차량관리.jsp"
	</script>
<%} else {%>
		del.delete_repairinfo(rent_num);
		del.delete_request(rent_num);
		del.delete_rental(rent_num);
	<script>
		location.href="예약관리.jsp"
	</script>
<%}%>