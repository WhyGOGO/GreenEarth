<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="beans_method.*" %>
    
<%
	request.setCharacterEncoding("UTF-8");
	
	int r_num = Integer.parseInt(request.getParameter("r_num"));
	String state = request.getParameter("state");
	
	updateDB up = updateDB.getInstance();
	
	if (state.equals("예약")){
	
	up.repairCancel(r_num);//0 -> 1

%>
	<script>
		location.href="myForm2.jsp"
	</script>
<% } else if (state.equals("요청대기")){ //1 -> 0

	up.repairCancel2(r_num);
}%>
	<script>
		location.href="myForm2.jsp"
	</script>