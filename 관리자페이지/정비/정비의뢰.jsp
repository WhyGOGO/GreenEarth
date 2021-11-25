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
<jsp:useBean id="repairinfo" class="beans.campDataBean" scope="page"/>
<jsp:setProperty name="repairinfo" property="*" />
  <%@ include file="../../../관리자페이지메뉴/managerMenu.jsp" %>	<!-- 메뉴 바  -->
  <%	
	request.setCharacterEncoding("UTF-8");		
  
	selectDB sd = selectDB.getInstance();
	ArrayList<campDataBean> dtos = sd.selVRepair();


	
  %>
    <main class="page-content">
    <div class="container">
      <h2>정비 의뢰</h2>
      <hr>
      <table class="table table-dark table-stripeds">
    <tr  style="text-align: center;">
      <th>정비번호</th>
      <td>예약날짜</td>
      <td>차량번호</td>
      <td>정비차량</td>
      <td>고객이름</td>
      <td>정비소</td>
      <td>정비내역|기타</td>
      <td>정비비용</td>
      <td>납입기한</td>
      <td>요청관리</td>
      <td></td>
<%
		for(int i=0; i < dtos.size(); i++){
			campDataBean dto = dtos.get(i);
			
		    int repairNumber = dto.getRepairNumber();
		    String rp_date = dto.getRepairDate();
		    String cp_num = dto.getCampCarNumber();
		    String cp_name= dto.getCampCarName();
			String ct_name = dto.getCustName();
			String rs_name = dto.getRepairShopName();
			String rp_his = dto.getRepairHistory();
			int cost = dto.getRepairCost();
			String rp_paydate = dto.getRepairPayDate();
			String repairState = dto.getRepairState();
			
			if (repairState.equals("예약")){
			 %>  
  

	<tr style="text-align: center;">
      <th><%= repairNumber %></th>
      <td><%= rp_date %></td>
      <td><%= cp_num %></td>
      <td><%= cp_name %></td>
      <td><%= ct_name %></td>
      <td><%= rs_name %></td>
      <td><%= rp_his %></td>
      <td><%= cost %></td>
      <td><%= rp_paydate %></td>
      <td><button type="button" class="btn btn-outline-warning" onClick="location.href='정비의뢰비용처리.jsp?repairCost=<%=cost%>&repairNumber=<%=repairNumber%>'" >정비비용<br>수정</button>
      <td></td>
  <% } else if(repairState.equals("요청대기")) { %>
	<tr style="text-align: center;">   
      <th><%= repairNumber %></th>
      <td><%= rp_date %></td>
      <td><%= cp_num %></td>
      <td><%= cp_name %></td>
      <td><%= ct_name %></td>
      <td><%= rs_name %></td>
      <td><%= rp_his %></td>
      <td><%= cost %></td>
      <td><%= rp_paydate %></td>
      <td><button type="button" class="btn btn-outline-warning btn-sm" onClick="location.href='정비의뢰처리.jsp?repairState=<%=repairState%>&repairNumber=<%=repairNumber%>'" >승인</button></td>
      <td><button type="button" class="btn btn-outline-danger btn-sm" onClick="location.href='정비의뢰취소.jsp?repairState=<%=repairState%>&repairNumber=<%=repairNumber%>'" >취소</button></td>
      </tr>
     <% } else if (repairState.equals("승인")){%>
      

     <tr style="text-align: center;">
      <th><%= repairNumber %></th>
      <td><%= rp_date %></td>
      <td><%= cp_num %></td>
      <td><%= cp_name %></td>
      <td><%= ct_name %></td>
      <td><%= rs_name %></td>
      <td><%= rp_his %></td>
      <td><%= cost %></td>
      <td><%= rp_paydate %></td>
      <td>승락됨</td>
      <td></td>
      <%} else {%>
      	     <tr style="text-align: center;">
      <th><%= repairNumber %></th>
      <td><%= rp_date %></td>
      <td><%= cp_num %></td>
      <td><%= cp_name %></td>
      <td><%= ct_name %></td>
      <td><%= rs_name %></td>
      <td><%= rp_his %></td>
      <td><%= cost %></td>
      <td><%= rp_paydate %></td>
      <td>취소됨</td>
      <td></td>
      <%} %>
    </tr>
  </tbody> 
  <% }%>

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