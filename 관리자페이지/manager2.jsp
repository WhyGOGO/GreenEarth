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
  <%@ include file="../관리자페이지메뉴/managerMenu.jsp" %>	<!-- 메뉴 바  -->
  
  <main class="page-content">
    <div class="container">
      <h2>캠핑카</h2>
      <hr>
      
<table class="table table-success table-striped">
   <thead>
    <tr>
      <th scope="row">캠핑카이름</th>
      <td colspan="2" class="table-active">캠핑카종류</td>
      <td>차량번호</td>
      <td>등록일자</td>
      <td>승차인원수</td>
      <td>이미지</td>
      <td>상세정보</td> 
      <td>대여비용</td>           
    </tr>
   </thead>
    <%
	try{

	selectDB sd = selectDB.getInstance();	
	ArrayList<campDataBean> dtos = sd.selCar(num);
	for(int i=0; i < dtos.size(); i++){
		campDataBean dto = dtos.get(i);
		String name = dto.getCampCarName();
		String cartype = dto.getCampCarType();
		String CampCarNumber = dto.getCampCarNumber();
		String CampCarDate = dto.getCampCarDate();
		Int PeopleRide = dto.getPeopleRide();	
		String IMAGE = dto.getIMAGE();
		Int RentalStatus = dto.getRentalStatus();
		Int CarRentalCost = dto.getCarRentalCost();	
	%>	
  <tbody>
  	<tr>
  	  <th scope="row"><%=name%></th>
      <td colspan="2" class="table-active"><%=cartype%></td>
      <td><%=CampCarNumber%></td>
      <td><%=CampCarDate%></td>
      <td><%=PeopleRide%></td>
      <td><%=IMAGE%></td>
      <td><%=RentalStatus%></td> 
      <td><%=CarRentalCost%></td> 
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