<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="beans_method.*" %>

<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="rental" class="beans.campDataBean" scope="page"/>
<jsp:setProperty name="rental" property="*" />
<%	
	String state = request.getParameter("state");
	deleteDB del = deleteDB.getInstance();
	
	if (state.equals("반납")){
		
		del.delete_request(rental.getRentalNumber());
		del.delete_rental(rental.getRentalNumber());


%> 
	<script>
		location.href="대여차량관리.jsp"
	</script>
<%} else if(state.equals("취소")){%>
		del.delete_request(rental.getRentalNumber());
		del.delete_rental(rental.getRentalNumber());
	<script>
		location.href="대여차량관리.jsp"
	</script>
<%} %>