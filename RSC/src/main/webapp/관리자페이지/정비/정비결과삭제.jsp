<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="beans_method.deleteDB" %>
<%@page import="java.util.ArrayList" %>
<%@page import="beans.campDataBean" %>
<!DOCTYPE html>
<html>
<head>
<%
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="repairinfo" class="beans.campDataBean" scope="page"/>
<jsp:setProperty name="repairinfo" property="*" />
<meta charset="EUC-KR">
<title>정비결과삭제</title>
</head>
<body>
	
		<%
			System.out.println(repairinfo.getRentalNumber());
			deleteDB da = deleteDB.getInstance(); //디비 연결
			da.delete_repairinfo2(repairinfo.getRepairNumber());
			da.delete_repairrequest2(repairinfo.getRentalNumber());
		%>
</body>
<script>
	function Gomanager(){
		location.href="../../관리자페이지/정비/정비결과.jsp";
	}
	setTimeout('Gomanager()',100)
</script>
</html>