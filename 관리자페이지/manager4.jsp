<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%@page import="beans_method.selectDB" %>
<%@page import="java.util.ArrayList" %>
<%@page import="beans.campDataBean"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정비소</title>

  <%@ include file="../관리자페이지메뉴/managerMenu.jsp" %>	<!-- 메뉴 바  -->
  
  <main class="page-content">
    <div class="container">
      <h2>정비소</h2>
      <hr>
      <div class="d-grid gap-2 d-md-flex justify-content-md-end">
		<a href="manager4_insert.jsp" class="btn btn-primary btn-sm">정비소 추가</a>
      
<table class="table table-success table-striped">
  <thead>
    <tr>
      <th scope="row">정비소명</th>
      <td colspan="2" class="table-active">주소</td>
      <td>전화번호</td>
      <td>담당자 성명</td>
      <td>담당자이메일 정보</td>
    </tr>
  </thead>
  <%
try{

	selectDB sd = selectDB.getInstance();	
	ArrayList<campDataBean> dtos = sd.selRepair();
	for(int i=0; i < dtos.size(); i++){
		campDataBean dto = dtos.get(i);
		String RepairShopName = dto.getRepairShopName();
		String RepairShopAddress = dto.getRepairShopAddress();
		String RepairShopCall = dto.getRepairShopCall();
		String RepairManager = dto.getRepairManager();
		String RepairManagerEmail = dto.getRepairManagerEmail();				
%>
	<tbody>
		<tr>
		  <th scope="row"><%=RepairShopName%></th>
	      <td colspan="2" class="table-active"><%=RepairShopAddress%></td>
	      <td><%=RepairShopCall%></td>
	      <td><%=RepairManager%></td>
	      <td><%=RepairManagerEmail%></td>
	      <td><button type="button" class="btn btn-light">수정</button></td>
      	  <td><a href="manager4_delete.jsp" class="btn btn-danger btn-sm">삭제</a></td>
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