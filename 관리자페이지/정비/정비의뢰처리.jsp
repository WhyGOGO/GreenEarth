<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ page import="beans_method.*" %>
 <%@page import="beans.campDataBean"%>
<%@page import="beans_method.updateDB" %>
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
<%
	updateDB sd = updateDB.getInstance();
	sd.update_repairupdate(repairinfo);
	
%>

<body>

</body>
<script>
	function Gomanager(){
		location.href="�����Ƿ�.jsp";
	}
	setTimeout('Gomanager()',100)
</script>
</html>
