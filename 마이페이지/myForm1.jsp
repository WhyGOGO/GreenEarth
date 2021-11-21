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
	ArrayList<campDataBean> dtos = new ArrayList<campDataBean>();//대여내역
	ArrayList<campDataBean> dtos1 = new ArrayList<campDataBean>();//대여사정보
	ArrayList<campDataBean> dtos2 = new ArrayList<campDataBean>();//캠핑카정보
	selectDB sdb = selectDB.getInstance();
	
	dtos = sdb.selCustHis2(email);
	
	if (dtos.size()!=0){ // 총 지불금액
		
%>
<main class="page-content">
	<div class="container">
		<h2>대여현황</h2>
		<hr>
		<%
		for (int i=0; i<dtos.size();i++){
			campDataBean dto = dtos.get(i);
			
			
			int rentalnumber = dto.getRentalNumber(); // 고객의 렌트 고유번호	* 
		    String CampCarN = dto.getCampCarName(); //캠핑카이름 *
		    String CompNAME = dto.getCompName(); //회사이름 *
		    String RentalStart = dto.getRentalStart(); //렌트시작날짜 *
		    String RentalEnd = dto.getRentalEnd(); //렌트끝나는날짜 *
		    int RentalCost = dto.getRentalCost(); //렌트비용 *
		    int RentalEtcCost = dto.getRentalEtcCost(); //렌트기타비용 *
		    String manager = dto.getCompManager();
		    String cp_call = dto.getCompCall();
		    String cr_num = dto.getCampCarNumber();
		    
		    int cost = (RentalCost + RentalEtcCost); //렌트비용 + 렌트기타비용 합치기
		%>
		<table border="1" class="type07" style="text-align:center">
			<tr>
				<th style="text-align:center">대여번호</th>
				<td colspan="5"><%=rentalnumber %></td>
			</tr>
			<tr>
				<th scope="cols" style="text-align:center">대여일</th>
				<td><%=RentalStart%></td>
				<th scope="cols" style="text-align:center">반납일</th>
				<td colspan="3"><%=RentalEnd %></td>
			</tr>
			<tr>
				<th scope="cols" style="text-align:center">대여사</th>
				<td><%=CompNAME%></td>
			</tr>
			<tr>
				<th scope="cols" style="text-align:center">담당자</th>
				<td><%= manager %></td>
				<th scope="cols" style="text-align:center">담당자 전화번호</th>
				<td colspan="3"><%= cp_call%></td>
			</tr>
			<tr>
				<th scope="cols" style="text-align:center">대여차량</th>
				<td colspan="3"><%=CampCarN %></td>
				<th scope="cols" style="text-align:center">차량번호</th>
				<td colspan="3"><%= cr_num %></td>
			</tr>
			</tbody>
		</table>
		<% 		}
	}else {
%>
<main class="page-content">
	<div class="container">
		<h2>대여현황</h2>
		<hr>

<%} %>
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


</body>
</html>