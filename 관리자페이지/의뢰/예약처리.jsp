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
	if (state.equals("예약")){
	
	up.requestPro0(rent_num);

%>
	<script>
		location.href="예약관리.jsp"
	</script>
<% } else if (state.equals("취소요청")){//취소요청-2 -> 예약0
	
	up.requestCancel2(rent_num);
%>
	<script>
		location.href="예약관리.jsp"
	</script>
<%} else if (state.equals("대여")){//대여 1 -> 반납 -1
	
	up.requestPro1(rent_num);
	up.requestPro2(cp_num);
	
%>
	<script>
		location.href="대여차량관리.jsp"
	</script>
<%}%>