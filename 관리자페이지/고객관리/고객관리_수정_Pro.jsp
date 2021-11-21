<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%@page import="beans_method.updateDB" %>
<%@page import="java.util.ArrayList" %>
<%@page import="beans.campDataBean" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객정보수정</title>

  <%
 		 request.setCharacterEncoding("UTF-8");
  %>
  <jsp:useBean id="update_cus" class="beans.campDataBean"/>
  <jsp:setProperty property="*" name="update_cus"/>
  		<%
			updateDB da = updateDB.getInstance(); //디비 연결
			da.update_customer(update_cus); //값 넣어주기
		%>
 
<script>
	location.href='고객관리.jsp'
</script>

 </body>
 </html>