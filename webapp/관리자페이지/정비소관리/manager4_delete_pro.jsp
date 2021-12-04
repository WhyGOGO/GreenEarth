<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="beans_method.deleteDB" %>
<%@page import="java.util.ArrayList" %>
<%@page import="beans.campDataBean" %>
<!DOCTYPE html> 
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<title>대여회사 관리</title>
</head>
<body>
<% 
	request.setCharacterEncoding("UTF-8");
%>
	<jsp:useBean id="repairShopId" class="beans.campDataBean" scope="page"/>
	<jsp:setProperty name="repairShopId" property="*" />
	
	<%

		deleteDB sd = deleteDB.getInstance();
		sd.delete_repairshop(repairShopId.getRepairShopId());
	%>

	

	

	
	<div class="alert alert-success d-flex align-items-center" role="alert">
  <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Success:"><use xlink:href="#check-circle-fill"/></svg>
  <div>
    정비소 정보를 삭제했습니다. 2초후에 자동으로 페이지가 넘어갑니다.
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