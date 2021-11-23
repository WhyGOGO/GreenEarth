<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="beans_method.selectDB" %>
<%@page import="java.util.ArrayList" %>
<%@page import="beans.campDataBean" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대여정보관리</title>

  <%@ include file="../../관리자페이지메뉴/managerMenu.jsp" %>	<!-- 메뉴 바  -->
  <%	
	request.setCharacterEncoding("UTF-8");		
  
	selectDB sd = selectDB.getInstance();
	ArrayList<campDataBean> dtos = sd.selRentBD();
	
	ArrayList<campDataBean> repair = sd.selVRepair();
	campDataBean repair_Number = repair.get(0);
	int repairNumber = repair_Number.getRepairNumber();
	
	
	if(dtos.size()!=0){
  %>
  <main class="page-content">
    <div class="container">
      <h2>대여정보관리</h2>
      <hr>
      
<table class="table table-success table-striped">
    <tr>
      <th>대여번호</th>
      <td>차량대여기한</td>
      <td>차량번호</td>
      <td>대여차량</td>
      <td>고객이름</td>
      <td>대여사</td>
      <td>대여비용</td>
      <td>상태</td>
      <td></td>
    </tr>
<%
		for(int i=0; i < dtos.size(); i++){
			campDataBean dto = dtos.get(i);
			
			int rentalnumber = dto.getRentalNumber(); // 고객의 렌트 고유번호	* 
		    String CampCarN = dto.getCampCarName(); //캠핑카이름 *
		    String Cp_num = dto.getCampCarNumber(); //차량번호 *
		    String ct_name = dto.getCustName();//고객이름 *
		    String CompNAME = dto.getCompName(); //회사이름 *
		    String RentalStart = dto.getRentalStart(); //렌트시작날짜 *
		    String RentalEnd = dto.getRentalEnd(); //렌트끝나는날짜 *
		    int RentalCost = dto.getRentalCost(); //렌트비용 *
		    int RentalEtcCost = dto.getRentalEtcCost(); //렌트기타비용 *
		    String rt_paydate = dto.getRentalPayDate();
		    String state = dto.getRentalState();
			
		    int cost = (RentalCost + RentalEtcCost);
		    
		    
%>  
	<tr>
      <th><%= rentalnumber %></th>
      <td><%= RentalStart%> ~ <%=RentalEnd %></td>
      <td><%= Cp_num %></td>
      <td><%= CampCarN %></td>
      <td><%= ct_name %></td>
      <td><%= CompNAME %></td>
      <td><%= cost %></td>
      <%if(state.equals("대여")){ %>
      <td><%= state %></td>
      <td>
      	<a href="예약처리.jsp?rental_num=<%=rentalnumber%>&state=<%=state %>&Cp_num=<%=Cp_num %>" class="btn btn-warning btn-sm">반납</a>
      </td>
      <%} else if(state.equals("반납")){ %>
      <td><%= state %></td>
      <td>
      	<button type="button" class="btn btn-danger btn-sm" onClick="location.href='예약삭제.jsp?rentalNumber=<%=rentalnumber%>&state=<%=state %>&repairNumber=<%=repairNumber%>'">삭제</button>
      </td>
      <%} else if(state.equals("예약")){%>
      <td><font color="blue"><%= state %></font></td>
      <td></td>
      <%} else{%>
      <td><font color="red"><%= state %></font></td>
      <td></td>
      <%} %>
    </tr>
  </tbody> 
  <%	 
	}
} else {%>
<main class="page-content">
    <div class="container">
      <h2>정비 의뢰</h2>
      <hr>
      
<table class="table table-success table-striped">
    <tr>
      <th>대여번호</th>
      <td>차량대여기한</td>
      <td>차량번호</td>
      <td>대여차량</td>
      <td>고객이름</td>
      <td>대여사</td>
      <td>대여비용</td>
      <td>상태</td>
      <td></td>
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