 <%@page import="beans.campDataBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>

<%@page import="beans_method.selectDB" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DB Connection Test</title>
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
		
		System.out.println("이름 : "+name+" "+licenseNumber);
	}
	
}
catch(Exception e){
	e.printStackTrace();
}




%> 
</body>
</html>

