<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="beans.campDataBean"%>
<%@page import="beans_method.updateDB" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<title>정비소 관리</title> 
</head>
<body>
 	<%
		request.setCharacterEncoding("UTF-8");
 			
	%>
	<jsp:useBean id="manager4up" class="beans.campDataBean" scope="page"/>
	<jsp:setProperty name="manager4up" property="*" />
	
	<%
	
		updateDB sd = updateDB.getInstance();	
		sd.update_repairshop(manager4up);	

	%>
	

	
	<div class="alert alert-success d-flex align-items-center" role="alert">
  <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Success:"><use xlink:href="#check-circle-fill"/></svg>
  <div>
    정비소를 수정했습니다. 2초후에 자동으로 페이지가 넘어갑니다.
  </div>
</div>


<script>
	function Gomanager(){
		location.href="manager4.jsp";
	}
	setTimeout('Gomanager()',2000)
</script>
</body>
</html>