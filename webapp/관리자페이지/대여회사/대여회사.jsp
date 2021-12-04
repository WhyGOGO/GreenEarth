<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%@page import="beans_method.selectDB" %>
<%@page import="java.util.ArrayList" %>
<%@page import="beans.campDataBean" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대여회사관리</title>

  <%@ include file="../../관리자페이지메뉴/managerMenu.jsp" %>	<!-- 메뉴 바  -->
  
  <main class="page-content">
    <div class="container">
      <h2>대여회사</h2>
      <hr>
      

     <button type="button" class="btn btn-primary" onClick="location.href='대여회사이미지추가.jsp'">추가</button>  	
   <table class="table table-dark table-stripeds">
   
    <tr>
      <th>회사명</th>
      <td >주소</td>
      <td>전화번호</td>
      <td>담당자이름</td>
      <td>담당자이메일 정보</td>
      <td>편집</td>
    </tr>
<%	try{
		selectDB sd = selectDB.getInstance();
		
		ArrayList<campDataBean> dtos2 = sd.selCompany();
		for(int i=0; i < dtos2.size(); i++){
			campDataBean dto2 = dtos2.get(i);
			
		    int compId = dto2.getCompId();
			String name = dto2.getCompName();
			String address = dto2.getCompAddress();
			String CompCall = dto2.getCompCall();
			String CompManager = dto2.getCompManager();		
			String CompEmail = dto2.getCompEmail();
			String IMAGE = dto2.getIMAGE();   
%>  
	<tr>	 
      <th><%=name %></th>
      <td><%= address%></td>
      <td><%=CompCall %></td>
      <td><%=CompManager %></td>
      <td><%= CompEmail%></td>
      <td>
      		<button type="button" class="btn btn-outline-warning" onClick="location.href='대여회사_수정.jsp?compId=<%=compId%>&compName=<%=name%>&compAddress=<%=address%>&compCall=<%=CompCall%>&compManager=<%=CompManager%>&compEmail=<%=CompEmail%>&IMAGE=<%=IMAGE%>'">수정</button>
      		
      		<button type="button" class="btn btn-outline-danger" onClick="location.href='대여회사_삭제Pro.jsp?compId=<%=compId%>'">삭제</button>

      				
      </td>
    </tr>    
<% }
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

  </main>
  <!-- page-content" -->

<!-- page-wrapper -->
 </body>
 </html>