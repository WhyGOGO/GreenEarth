<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="beans.campDataBean"%>
<%@page import="beans_method.updateDB" %>
<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<title>캠핑카 추가</title>

<%@ include file="../../관리자페이지메뉴/managerMenu.jsp" %>	<!-- 메뉴 바  -->
<%
request.setCharacterEncoding("UTF-8");

%>
<jsp:useBean id="manager2" class="beans.campDataBean" scope="page"/>
<jsp:setProperty name="manager2" property="*" />
	
<main class="page-content">
    <div class="container">
      <h2>캠핑카 추가</h2>
      <hr>
      	<form method="post" action="manager2_update_pro2.jsp" class="validation-form" novalidate >			<!-- 정보 보내는 부분 -->
				 
					<div class="row"> 
						<div class="mb-3"> <label for="nickname">캠핑카이름</label> 
							<input type="text" class="form-control" name="campCarName" value="<%=manager2.getCampCarName()%>" maxlength=6 required> 
						</div> 
					</div>
					<div class="row"> 
						<div class="mb-3"> <label for="nickname">캠핑카종류</label> 
							<input type="text" class="form-control" name="campCarType" value="<%=manager2.getCampCarType()%>" maxlength=5 required> 
						</div> 
					</div>
					<div class="row"> 
						<div class="mb-3"> <label for="nickname">캠핑카번호판</label> 
							<input type="text" class="form-control" name="campCarNumber" value="<%=manager2.getCampCarNumber()%>" maxlength=10 required> 
						</div>
					</div> 
					<div class="row"> 
						<div class="mb-3"> <label for="nickname">캠핑카등록날짜</label> 
							<input type="date" class="for_disable" name="campCarDate" value="<%=manager2.getCampCarDate()%>" required>
						</div>
					</div>
					<div class="row"> 
						<div class="mb-3"> <label for="nickname">탑승인원수</label> 
							<input type="text" class="form-control" name="peopleRide" value="<%=manager2.getPeopleRide()%>"  maxlength=2 required> 
						</div>
					</div> 
					<div class="row"> 
						<div class="mb-3"> <label for="nickname">렌트비용</label> 
							<input type="text" class="form-control" name="carRentalCost" value="<%=manager2.getCarRentalCost()%>"  maxlength=7 required> 
						</div>
					</div> 
					<div class="row"> 
						<div class="mb-3"> <label for="nickname">렌트상태</label> 
							<input type="text" class="form-control" name="rentalStatus" value="<%=manager2.getRentalStatus()%>"  maxlength=1 required> 
						</div>
					</div> 
		 			<input type="hidden" class="form-control" name="campCarId" value="<%=manager2.getCampCarId()%>">
					<button class="btn btn-primary btn-lg btn-block" type="submit">수정하기</button>							
		</form>		
    </div>
</main>
</head>
<body>

</body>
</html>