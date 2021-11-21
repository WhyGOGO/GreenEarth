
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
 <%@page import="beans.campDataBean"%>
<%@page import="beans_method.insertDB" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입 값넣기</title>
</head>
<body>

<%
	request.setCharacterEncoding("UTF-8");
	
%>
<jsp:useBean id="register" class="beans.campDataBean" scope="page"/>

<jsp:setProperty name="register" property="*" />

 
<%
 
try{

	insertDB sd = insertDB.getInstance();	
	sd.addCust(register);	
}
catch(Exception e){
	e.printStackTrace();
}
%> 
<div class="alert alert-success d-flex align-items-center" role="alert">
  <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Success:"><use xlink:href="#check-circle-fill"/></svg>
  <div>
    회원가입 축하드립니다! 2초후에 자동으로 페이지가 넘어갑니다.
  </div>
</div>


<script>
	function Gologin(){
		location.href="../로그인/login.jsp";
	}
	setTimeout('Gologin()',2000)
</script>
</body>
</html>

