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
%>
<jsp:useBean id="repairinfo" class="beans.campDataBean" scope="page"/>
<jsp:setProperty name="repairinfo" property="*" />
<%

	
%>

 
<%

try{

	insertDB sd = insertDB.getInstance();	
	sd.addRepairInfo(repairinfo);	
	

}
catch(Exception e){
	e.printStackTrace();
}
%> 
<div class="alert alert-success d-flex align-items-center" role="alert">
  <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Success:"><use xlink:href="#check-circle-fill"/></svg>
  <div>
    ���࿡ ���� �ϼ̽��ϴ�! 2���Ŀ� �ڵ����� �������� �Ѿ�ϴ�.
  </div>
</div>
<script>
		function Gologin(){
		location.href="../main/repairShop.jsp";
	}
	setTimeout('Gologin()',2000)
</script>
</body>
</html>