<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="beans_method.selectDB" %>
<%@ page import="beans.campDataBean" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대여내역</title>



<%@ include file="../마이페이지메뉴/mypageMenu.jsp"%>
<!-- 메뉴 바  -->
<%
	request.setCharacterEncoding("UTF-8");	

	selectDB sd = selectDB.getInstance();
	ArrayList<campDataBean> dtos = sd.selCustHis(email); 
	
	if (dtos.size()!=0){
		
%>
<main class="page-content">
	<div class="container">
		<h2>대여내역</h2>
		<hr>
		<table class="table table-success table-striped">
		
			<tr>
				<th scope="row">대여번호</th>
				<td>차량대여기한</td>
				<td colspan="2" class="table-active">대여차량</td>
				<td>대여사</td>
				<td>대여비용</td>
			</tr>
			<%for (int i=0; i<dtos.size();i++){
		
			    campDataBean dto = dtos.get(i); //rentalnum 에 렌탈고유번호담기
			    
			    int rentalnumber = dto.getRentalNumber(); // 고객의 렌트 고유번호	* 
			    String CampCarN = dto.getCampCarName(); //캠핑카이름 *
			    String CompNAME = dto.getCompName(); //회사이름 *
			    String RentalStart = dto.getRentalStart(); //렌트시작날짜 *
			    String RentalEnd = dto.getRentalEnd(); //렌트끝나는날짜 *
			    int RentalCost = dto.getRentalCost(); //렌트비용 *
			    int RentalEtcCost = dto.getRentalEtcCost(); //렌트기타비용 *
			    
			    int cost = (RentalCost + RentalEtcCost); //렌트비용 + 렌트기타비용 합치기
			    
			    System.out.println("캥핑카 이름"+CampCarN);
				System.out.println("고객의 렌트 고유번호"+rentalnumber);
				System.out.println("회사이름"+CompNAME);
				System.out.println("렌트시작날짜"+RentalStart);
				System.out.println("렌트끝나는날짜"+RentalEnd);
				System.out.println("렌트비용"+cost);
		 %>
			<tr>
				<th scope="row"><%=rentalnumber%></th>
				<td><%=RentalStart%> ~ <%=RentalEnd%></td>
				<td colspan="2" class="table-active"><%=CampCarN %></td>
				<td><%=CompNAME%></td>
				<td><%= cost %></td>
			</tr>
			<%} %>

			</tbody>
		</table>
	</div>
	<hr>
	<footer class="text-center">
		<div class="mb-2">
			<small> © 2021 데이터베이스 과제 <a target="_blank"
				rel="noopener noreferrer" href="https://azouaoui.netlify.com"> </a>
			</small>
		</div>
	</footer>
	</div>
</main>
<!-- page-content" -->
</div>
<!-- page-wrapper -->
<%
	}else{%>
		<main class="page-content">
	<div class="container">
		<h2>대여내역</h2>
		<hr>
		<table class="table table-success table-striped">
			<tr>
				<th scope="row">대여번호</th>
				<td>차량대여기한</td>
				<td colspan="2" class="table-active">대여차량</td>
				<td>대여사</td>
				<td>대여비용</td>
			</tr>
			<tr>
				<th scope="row"></th>
				<td></td>
				<td colspan="2" class="table-active"></td>
				<td></td>
				<td></td>
			</tr>
			</tbody>
		</table>
	</div>
	<hr>

	<footer class="text-center">
		<div class="mb-2">
			<small> © 2021 데이터베이스 과제 <a target="_blank"
				rel="noopener noreferrer" href="https://azouaoui.netlify.com"> </a>
			</small>
		</div>
	</footer>
	</div>
</main>
<!-- page-content" -->
</div>
<!-- page-wrapper -->
	
	<% 	
	}
%>

</body>
</html>