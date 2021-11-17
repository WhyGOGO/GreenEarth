<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%@page import="beans_method.selectDB" %>
<%@page import="java.util.ArrayList" %>  
<%@page import="beans.campDataBean"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객정보</title>
  <%@ include file="../관리자페이지메뉴/managerMenu.jsp" %>	<!-- 메뉴 바  -->
  <main class="page-content">
    <div class="container">
      <h2>고객정보</h2>
      <hr>
      
<table class="table table-success table-striped">
    <thead>
	    <tr>
	      <th scope="row">성명</th>
	      <td colspan="2" class="table-active">면허증번호</td>
	      <td>주소</td>
	      <td>번호</td>
	      <td>이메일</td>
	      <td>비밀번호</td>
	    </tr>
	</thead>
<%
try{

	selectDB sd = selectDB.getInstance();	
	ArrayList<campDataBean> dtos = sd.selCust();
	for(int i=0; i < dtos.size(); i++){
		campDataBean dto = dtos.get(i);
		String name = dto.getCustName();
		String licenseNumber = dto.getLicenseNumber();
		String CustAddress = dto.getCustAddress();
		String CustCall = dto.getCustCall();
		String CustEmail = dto.getCustEmail();		
		String CustPasswd = dto.getPasswd();
%> 		
	 <tbody>
      <tr>
	      <th scope="row"><%=name%></th>
	      <td colspan="2" class="table-active"><%=licenseNumber%></td>
	      <td><%=CustAddress%></td>
	      <td><%=CustCall%></td>
	      <td><%=CustEmail%></td>
	      <td><%=CustPasswd%></td>  
     </tr>
  	</tbody>    
<%	}
	
}
catch(Exception e){
	e.printStackTrace();
}
%>   
  
</table>     
      
      </div>
      
      
      <hr>

      <footer class="text-center">
        <div class="mb-2">
          <small>
            © 2021 데이터베이스 과제 <a target="_blank" rel="noopener noreferrer" href="https://azouaoui.netlify.com">             
            </a>
          </small>
        </div>


      </footer>

    </div>
  </main>
  <!-- page-content" -->
</div>
<!-- page-wrapper -->ㄴ
 </body>
 </html>