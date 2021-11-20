<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%@page import="beans_method.selectDB" %>
<%@page import="beans_method.deleteDB" %>
<%@page import="java.util.ArrayList" %>
<%@page import="beans.campDataBean"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대여회사관리</title>

  <%@ include file="../관리자페이지메뉴/managerMenu.jsp" %>	<!-- 메뉴 바  -->
  
  <main class="page-content">
    <div class="container">
      <h2>대여회사</h2>
      <hr>
      <div class="d-grid gap-2 d-md-flex justify-content-md-end">
		<a href="manager1_insert.jsp" class="btn btn-primary btn-sm">대여회사 추가</a>
	</div>
<table class="table table-success table-striped">
  <thead>
    <tr>
      <th scope="row">회사명</th>
      <td colspan="2" class="table-active">주소</td>
      <td>전화번호</td>
      <td>담당자이름</td>
      <td>담당자이메일 정보</td>
    </tr>
  </thead>
  
    <%
try{

	selectDB sd = selectDB.getInstance();	
	ArrayList<campDataBean> dtos = sd.selCompany();
	for(int i=0; i < dtos.size(); i++){
		campDataBean dto = dtos.get(i);
		String CompName = dto.getCompName();
		String CompAddress = dto.getCompAddress();
		String CompCall = dto.getCompCall();
		String CompManager = dto.getCompManager();
		String CompEmail = dto.getCompEmail();		
		
%>
	<tbody>  
     <tr>
      <th scope="row"><%=CompName%></th>
      <td colspan="2" class="table-active"><%=CompAddress%></td>
      <td><%=CompCall%></td>
      <td><%=CompManager%></td>
      <td><%=CompEmail%></td>
      <td><button type="button" class="btn btn-light">수정</button></td>
      <td><a href="manager1_delete.jsp" class="btn btn-danger btn-sm">삭제</a></td>
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