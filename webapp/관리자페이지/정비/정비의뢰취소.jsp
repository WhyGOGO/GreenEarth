<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ page import="beans_method.*" %>
 <%@page import="beans.campDataBean"%>
<%@page import="beans_method.deleteDB" %>
<!DOCTYPE html>
<html>
<head>
<%
request.setCharacterEncoding("UTF-8");
%>
<meta charset="EUC-KR">
<title>��������۾�</title>
<jsp:useBean id="repairinfo" class="beans.campDataBean" scope="page"/>
<jsp:setProperty name="repairinfo" property="*" />
</head>
<body>
<%
	deleteDB sd = deleteDB.getInstance();
	sd.delete_repairupcancle(repairinfo);
	
%>
<script>
	function Gomanager(){
		location.href="�����Ƿ�.jsp";
	}
	setTimeout('Gomanager()',100)
</script>
</body>
</html>