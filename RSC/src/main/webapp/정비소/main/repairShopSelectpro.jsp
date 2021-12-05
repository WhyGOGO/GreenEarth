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
	String rentalNumber_campCarId = request.getParameter("rentalNumber_campCarId");
	String [] ren_car_id = rentalNumber_campCarId.split(",");

	int rentalNumber = Integer.parseInt(ren_car_id[0]);
	int campCarId = Integer.parseInt(ren_car_id[1]);

%>
<jsp:useBean id="repairinfo" class="beans.campDataBean" scope="page"/>
<jsp:useBean id="repairrequest" class="beans.campDataBean" scope="page"/>
<jsp:useBean id="ren_car_num" class="beans.campDataBean" scope="page"/>


<jsp:setProperty name ="ren_car_num" property="rentalNumber" value="<%=rentalNumber%>"/>
<jsp:setProperty name ="ren_car_num" property="campCarId" value="<%=campCarId%>"/>


<jsp:setProperty name ="repairrequest" property="*"/>
<jsp:setProperty name="repairinfo" property="*" />

 
<%

	insertDB sd = insertDB.getInstance();	
	sd.addRepairRequest(repairrequest,ren_car_num);

	//sd.addRepairInfo(repairinfo,ren_car_num);	

%> 
<div class="alert alert-success d-flex align-items-center" role="alert">
  <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Success:"><use xlink:href="#check-circle-fill"/></svg>
  <div>
    예약에 성공 하셨습니다! 2초후에 자동으로 페이지가 넘어갑니다.
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