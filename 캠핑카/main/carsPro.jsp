<%@page import="java.text.SimpleDateFormat"%>
<%@page import="beans_method.insertDB"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>  
<%@page import="beans.campDataBean"%> 
<%@page import="java.text.SimpleDateFormat"%>

<!doctype html>
<html lang="en">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>결제</title>

<body>
	<jsp:useBean id="rentalCar" class="beans.campDataBean" scope="page" />
	<jsp:setProperty name="rentalCar" property="*" />

<%
	try{
	
		insertDB sd = insertDB.getInstance();	
		sd.addRentInfo(rentalCar);
	}
	catch(Exception e){
		System.out.println("db에 값넣기 실패했습니다");
	}
%>
<div class="alert alert-success d-flex align-items-center" role="alert">
  <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Success:"><use xlink:href="#check-circle-fill"/></svg>
  <div>
    감사합니다! 저희 캠핑카와 좋은 추억이 되길 바랍니다!
    5초만 기다려주세요 결제중입니다!
  </div>
</div>
<script>
function Gologin(){
	location.href="../../마이페이지/myForm.jsp";
}

	setTimeout('Gologin()',5000);
	
</script>
</body>

</html>
