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
<title>정비승인작업</title>
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
		location.href="정비의뢰.jsp";
	}
	setTimeout('Gomanager()',100)
</script>
</html>
