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
	
	dto = sdb.selCustHis(email);
%>
<main class="page-content">
	<div class="container">
		<h2>대여현황</h2>
		<hr>

		
		<table border="1" class="type07" style="text-align:center">
			<% if (dto.size()<1){ // 총 지불금액
			%>
			<tr>
				<th style="text-align:center">대여번호</th>
				<td colspan="5">01</td>
			</tr>
			
			<tr>
				<th scope="cols" style="text-align:center">대여일</th>
				<td>2021/11/17</td>
				<th scope="cols" style="text-align:center">반납일</th>
				<td colspan="3">2021/11/24</td>
			</tr>
			
			<tr>
				<th scope="cols" style="text-align:center">대여사</th>
				<td>느그캠핑회사</td>
			</tr>
			
			<tr>
				<th scope="cols" style="text-align:center">담당자</th>
				<td>느그매니저</td>
				<th scope="cols" style="text-align:center">담당자 전화번호</th>
				<td colspan="3">010-0101-0101</td>
			</tr>
			
			<tr>
				<th scope="cols" style="text-align:center">대여차량</th>
				<td colspan="3">-</td>
				<th scope="cols" style="text-align:center">차량번호</th>
				<td colspan="3">-</td>
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