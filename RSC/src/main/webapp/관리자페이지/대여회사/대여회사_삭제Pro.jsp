<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%@page import="beans_method.deleteDB" %>
<%@page import="java.util.ArrayList" %>
<%@page import="beans.campDataBean" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회사추가</title>

	<body>
<%
	request.setCharacterEncoding("UTF-8");
	
%>
	<jsp:useBean id="company" class="beans.campDataBean" scope="page"/>
	<jsp:setProperty name="company" property="*" />
	
		<%
			deleteDB da = deleteDB.getInstance(); //디비 연결
			da.deleteCompany(company.getCompId()); //값 넣어주기
		%>
 	</body>
 	
<script>
	location.href='대여회사.jsp'
</script>
</html>