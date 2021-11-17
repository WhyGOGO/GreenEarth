<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="beans.campDataBean"%>
<%@page import="beans_method.insertDB" %>
<%@page import="beans_method.selectDB" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String email1=(String)session.getAttribute("email"); //다완성후 한번 바꿔보자


	
%>
<jsp:useBean id="repairShop" class="beans.campDataBean" scope="page"/>

<jsp:setProperty name="repairShop" property="*" />


 
<%

try{

	insertDB sd = insertDB.getInstance();	
	sd.addRepairInfo(repairShop);	
	

}
catch(Exception e){
	e.printStackTrace();
}
%> 
</body>
</html>