<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="beans_method.*" %>
    
<%
	request.setCharacterEncoding("UTF-8");
	
	int rent_num = Integer.parseInt(request.getParameter("rental_num"));
	String state = request.getParameter("state");
	
	updateDB up = updateDB.getInstance();
	
	if (state.equals("예약")){
	
	up.requestCancel(rent_num);

%>
	<script>
		alert = '취소요청이 정상적으로 실행되었습니다.'
		location.href="myForm.jsp"
	</script>
<% } else if (state.equals("요청대기")){

	up.requestCancel2(rent_num);
}%>
	<script>
		alert = '취소요청이 정상적으로 실행되었습니다.'
		location.href="myForm.jsp"
	</script>