<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="beans_method.selectDB" %>
<%@page import="java.util.ArrayList" %>
<%@page import="beans.campDataBean"%>

<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8">
<title>캠핑카관리</title>
  <%@ include file="../../관리자페이지메뉴/managerMenu.jsp" %>	<!-- 메뉴 바  -->
  
  
  
  <main class="page-content">
    <div class="container">
      <h2>캠핑카</h2>
      <hr>
<a href="manager2_insert.jsp" class="btn btn-primary btn-sm">캠핑카 추가</a>
<table class="table table-dark table-stripeds">
	
    <tr style="text-align: center;">
      <td>캠핑카이름</td>
      <td>캠핑카종류</td>
      <td>차량번호</td>
      <td>등록일자</td>
      <td>승차인원수</td>
      <td>상세정보</td> 
      <td>대여비용</td>     
      <td>회사ID</td>
      <td>편집</td>
      <td>    </td>      
    </tr>

    <%
	try{

	selectDB sd = selectDB.getInstance();	
	ArrayList<campDataBean> dtos = sd.selCar(); 
	for(int i=0; i < dtos.size(); i++){ 
		campDataBean dto = dtos.get(i);
		String campcarname = dto.getCampCarName();
		String cartype = dto.getCampCarType();
		String CampCarNumber = dto.getCampCarNumber();
		String CampCarDate = dto.getCampCarDate();
		int PeopleRide = dto.getPeopleRide();	
		int RentalStatus = dto.getRentalStatus();
		int CarRentalCost = dto.getCarRentalCost();	
		int CompID = dto.getCompId();
		int CampCarId = dto.getCampCarId();
	%>	

  	<tr style="text-align: center;">
  	  <th><%=campcarname%></th>
      <td><%=cartype%></td>
      <td><%=CampCarNumber%></td>
      <td><%=CampCarDate%></td>
      <td><%=PeopleRide%></td>
      <td><%=RentalStatus%></td> 
      <td><%=CarRentalCost%></td>
      <td><%=CompID%></td>
      <td><button type="button" class="btn btn-outline-warning" onClick="location.href='manager2_update.jsp?campCarName=<%=campcarname%>&campCarType=<%=cartype%>&campCarNumber=<%=CampCarNumber%>&campCarDate=<%=CampCarDate%>&peopleRide=<%=PeopleRide%>&rentalStatus=<%=RentalStatus%>&carRentalCost=<%=CarRentalCost%>&campCarId=<%=CampCarId%>'">수정</button></td>

      <td><button type="button" class="btn btn-outline-danger" onClick="location.href='manager2_delete.jsp?CampCarId=<%=CampCarId%>'">삭제</button></td>
  	</tr>
  	

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