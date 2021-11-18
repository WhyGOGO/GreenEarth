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
	ArrayList<campDataBean> dto = new ArrayList<campDataBean>();
	selectDB sdb = selectDB.getInstance();
	
	dto = sdb.selCustHis("email");
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
			<% for (int i=0; i<dto.size();i++){
				int cost = dto.get(i).getRentalCost() + dto.get(i).getRentalEtcCost(); // 총 지불금액
			%>
			<tr>
				<th scope="row"><%=dto.get(i).getRentalNumber()%></th>
				<td><%=dto.get(i).getRentalStart()%>~<%=dto.get(i).getRentalEnd()%></td>
				<td colspan="2" class="table-active"><%= dto.get(i).getCampCarName() %></td>
				<td><%=dto.get(i).getCompName() %></td>
				<td><%= cost %></td>
			</tr>
			<% }%>
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

<%@ include file="../세션/catchSession.jsp"%>
</body>
</html>