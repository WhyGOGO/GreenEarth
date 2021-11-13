<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="javax.naming.*" %>
<%@page import="beans_method.selectDB" %>
<%@page import="beans.campDataBean"%>
<%@page import="java.util.ArrayList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd%22%3E
 <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DB Connection Test</title>
</head>
<body>
<%
	try{

	selectDB sd = selectDB.getInstance();	
	ArrayList<campDataBean> dtos2 = sd.selCompany();
	for(int i=0; i < dtos2.size(); i++){
		campDataBean dto2 = dtos2.get(i);
		String name = dto2.getCompName();
		String address = dto2.getCompAddress();
		String SPOT = dto2.getSPOT();

	}
	
}
catch(Exception e){
	e.printStackTrace();
}
%>
</body>
</html>