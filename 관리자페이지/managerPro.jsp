
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%@page import="beans.campDataBean"%>
<%@page import="beans_method.selectDB" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자출력</title>
</head>
<body>

<%
try{

	selectDB sd = selectDB.getInstance();	
	ArrayList<campDataBean> dtos = sd.selCust();
	for(int i=0; i < dtos.size(); i++){
		campDataBean dto = dtos.get(i);
		String name = dto.getCustName();
		String licenseNumber = dto.getLicenseNumber();
		

	}
	
}
catch(Exception e){
	e.printStackTrace();
}
%> 
</body>
</html>

