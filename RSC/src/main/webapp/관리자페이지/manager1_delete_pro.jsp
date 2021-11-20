<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="beans.campDataBean"%>
<%@page import="beans_method.deleteDB" %>
<%@page import="beans_method.selectDB" %>
<!DOCTYPE html> 
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<title>대여회사 관리</title>
</head>
<body>
 	<%
		request.setCharacterEncoding("UTF-8");
 		String id = request.getParameter("CompId");
		String passwd = request.getParameter("CompName");	
	%>
	<jsp:useBean id="manager1" class="beans.campDataBean" scope="page"/>

	<jsp:setProperty name="manager1" property="*" />
	
	<%

	try{

		selectDB sd = selectDB.getInstance();	
		ArrayList<campDataBean> dtos = sd.selCompany();
		for(int i=0; i < dtos.size(); i++){
			campDataBean dto = dtos.get(i);
			String CompId = dto.getCompId();
			String CompName = dto.getCompName();
			
			if(rs.next()){ 
				  String rId=rs.getString("id");
				  String rPasswd=rs.getString("passwd");

			      if(id.equals(rId) && passwd.equals(rPasswd)){
				    sql = "delete from member where CompName=?";
				    pstmt = conn.prepareStatement(sql);
				    pstmt.setString(1,id);

				    pstmt.executeUpdate();
			      }
			}
		}
%>		
<%
catch(Exception e){
		e.printStackTrace();
	}	
	%>
	/* try{

	deleteDB sd = deleteDB.getInstance();	
	sd.deleteComp(manager1);	
	}
	catch(Exception e){
		e.printStackTrace();
	} */
	%>
	

	
	<div class="alert alert-success d-flex align-items-center" role="alert">
  <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Success:"><use xlink:href="#check-circle-fill"/></svg>
  <div>
    회사 정보를 삭제했습니다. 2초후에 자동으로 페이지가 넘어갑니다.
  </div>
</div>


<script>
	function Gomanager(){
		location.href="manager1.jsp";
	}
	setTimeout('Gomanager()',2000)
</script>
</body>
</html>