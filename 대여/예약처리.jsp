<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="beans_method.*" %>
<%@page import="beans_method.selectDB" %>
<%@page import="java.util.ArrayList" %>  
<%@page import="beans.campDataBean"%>    
<%
	String email = (String) session.getAttribute("email");

	request.setCharacterEncoding("UTF-8");

	String state = request.getParameter("state");
	String cp_num =request.getParameter("Cp_num");
	
	updateDB up = updateDB.getInstance();
	insertDB in = insertDB.getInstance();	
	selectDB sd = selectDB.getInstance();	
	
	ArrayList<campDataBean> dtos3 = sd.selUser(email); //면허증번호 가져오기	
	campDataBean li = dtos3.get(0);	// 면허증번호 가져오기
	String LicenseNumber = li.getLicenseNumber();
		
%>
<jsp:useBean id="customer_info" class="beans.campDataBean" scope="page"/>
<jsp:setProperty name="customer_info" property="*" />
<%

	//예약0 -> 대여 1
	if (state.equals("예약")){
	
		up.requestPro0(customer_info.getRentalNumber());
		in.addCustomerInfo(customer_info,LicenseNumber);
%>
	<script>
		location.href="예약관리.jsp"
	</script>
<% } else if (state.equals("취소요청")){//취소요청-2 -> 예약0
	
	up.requestCancel2(customer_info.getRentalNumber());
%>
	<script>
		location.href="예약관리.jsp"
	</script>
<%} else if (state.equals("대여")){//대여 1 -> 반납 -1
	
	up.requestPro1(customer_info.getRentalNumber());
	up.requestPro2(cp_num);
	
%>
	<script>
		location.href="대여차량관리.jsp"
	</script>
<%}%>