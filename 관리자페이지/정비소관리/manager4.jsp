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

  <%@ include file="../../관리자페이지메뉴/managerMenu.jsp" %>	<!-- 메뉴 바  -->
  
  <main class="page-content">
    <div class="container">
      <h2>정비소</h2>
      <hr>
      
		<button type="button" class="btn btn-primary btn-sm" onClick="location.href='정비소이미지추가.jsp'">정비소 추가</button>
      
<table class="table table-dark table-stripeds">

    <tr style="text-align: center;">
      <th scope="row">정비소명</th>
      <td colspan="2" class="table-active">주소</td>
      <td>전화번호</td>
      <td>담당자 성명</td>
      <td>담당자이메일 정보</td>
      <td>편집</td>
      <td></td>
    </tr>

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
		int RepairShopId = dto.getRepairShopId();
		String RepairShopImage = dto.getShopImage();
%>		

		<tr style="text-align: center;">
		  <th scope="row"><%=RepairShopName%></th>
	      <td colspan="2" class="table-active"><%=RepairShopAddress%></td>
	      <td><%=RepairShopCall%></td>
	      <td><%=RepairManager%></td>
	      <td><%=RepairManagerEmail%></td>
	      
	      <td><button type="button" class="btn btn-outline-warning" onClick="location.href='manager4_update.jsp?repairShopId=<%=RepairShopId%>&repairShopName=<%=RepairShopName%>&repairShopAddress=<%=RepairShopAddress%>&repairShopCall=<%=RepairShopCall%>&repairManager=<%=RepairManager%>&repairManagerEmail=<%=RepairManagerEmail%>&shopImage=<%=RepairShopImage%>'">수정</button></td>

	      
      	  <td><button type="button" class="btn btn-outline-danger" onClick="location.href='manager4_delete.jsp?repairShopId=<%=RepairShopId%>'">삭제</button></td>

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