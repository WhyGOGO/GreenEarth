<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%@page import="beans_method.deleteDB" %>
<%@page import="java.util.ArrayList" %>
<%@page import="beans.campDataBean" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>삭제</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<body>
<%
	request.setCharacterEncoding("UTF-8");
	
%>
	<jsp:useBean id="custoEmail" class="beans.campDataBean" scope="page"/>
	<jsp:setProperty name="custoEmail" property="*" />
	
		<%
		if(custoEmail.getCustEmail().equals("root@root")) {%>
			<div class="alert alert-danger" role="alert">
			  관리자는 삭제할 수 없습니다!
			</div>					
		<%}else{%>
			<div class="alert alert-success" role="alert">
			  성공적으로 삭제되었습니다!
			</div>					
		<% 
			deleteDB da = deleteDB.getInstance(); //디비 연결
			da.delete_customer(custoEmail.getCustEmail()); //값 넣어주기
		}
		%>
 	</body>
 	
<script>
	function Gologin(){
		location.href='고객관리.jsp';		
	}
	setTimeout('Gologin()',2000);
</script>
</html>