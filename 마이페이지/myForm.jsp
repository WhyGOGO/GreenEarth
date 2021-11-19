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

	ArrayList<campDataBean> dtos = new ArrayList<campDataBean>();
	selectDB sdb = selectDB.getInstance();
	
	dtos = sdb.selCustHis(email);
	
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
			<% for (int i=0; i<dtos.size();i++){
				campDataBean dto = dtos.get(i);
				int rn = dto.getRentalNumber();
				String rd = dto.getRentalStart()+"~"+dto.getRentalEnd();
				String cname = dto.getCampCarName();
				String cpname = dto.getCompName();
				int cost = dto.getRentalCost() + dto.getRentalEtcCost(); // 총 지불금액
			%>
			<tr>
				<th scope="row"><%=rn%></th>
				<td><%=rd%></td>
				<td colspan="2" class="table-active"><%=cname %></td>
				<td><%=cpname%></td>
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

</body>
</html>