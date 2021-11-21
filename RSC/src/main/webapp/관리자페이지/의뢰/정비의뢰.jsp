<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="beans_method.selectDB" %>
<%@page import="java.util.ArrayList" %>
<%@page import="beans.campDataBean" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>캠핑카 정비 의뢰 및 결과정보</title>

  <%@ include file="../../관리자페이지메뉴/managerMenu.jsp" %>	<!-- 메뉴 바  -->
  <%	
	request.setCharacterEncoding("UTF-8");		
  
	selectDB sd = selectDB.getInstance();
	ArrayList<campDataBean> dtos = sd.selVRepair();
	
	if(dtos.size()!=0){
  %>
  <main class="page-content">
    <div class="container">
      <h2>정비 의뢰</h2>
      <hr>
      
<table class="table table-success table-striped">
    <tr>
      <th>정비번호</th>
      <td>예약날짜</td>
      <td>차량번호</td>
      <td>정비차량</td>
      <td>고객이름</td>
      <td>정비소</td>
      <td>정비내역|기타</td>
      <td>정비비용</td>
      <td>납입기한</td>
    </tr>
<%
		for(int i=0; i < dtos.size(); i++){
			campDataBean dto = dtos.get(i);
			
		    int rp_num = dto.getRepairNumber();
		    String rp_date = dto.getRepairDate();
		    String cp_num = dto.getCampCarNumber();
		    String cp_name= dto.getCampCarName();
			String ct_name = dto.getCustName();
			String rs_name = dto.getRepairShopName();
			String rp_his = dto.getRepairHistory();
			int cost = dto.getRepairCost();
			String rp_paydate = dto.getRepairPayDate();
			
%>  
	<tr>
      <th><%= rp_num %></th>
      <td><%= rp_date %></td>
      <td><%= cp_num %></td>
      <td><%= cp_name %></td>
      <td><%= ct_name %></td>
      <td><%= rs_name %></td>
      <td><%= rp_his %></td>
      <td><%= cost %></td>
      <td><%= rp_paydate %></td>
    </tr>
  </tbody> 
  <% }
} else {%>
<main class="page-content">
    <div class="container">
      <h2>정비 의뢰</h2>
      <hr>
      
<table class="table table-success table-striped">
    <tr>
      <th>정비번호</th>
      <td>예약날짜</td>
      <td>차량번호</td>
      <td>정비차량</td>
      <td>고객이름</td>
      <td>정비소</td>
      <td>정비내역|기타</td>
      <td>정비비용</td>
      <td>납입기한</td>
    </tr>
  </tbody> 
<% 	
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