<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="beans.campDataBean"%>
<%@page import="beans_method.updateDB" %>
<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<title>정비소수정</title>

<%@ include file="../../관리자페이지메뉴/managerMenu.jsp" %>	<!-- 메뉴 바  -->
<%
request.setCharacterEncoding("UTF-8");

%>
<jsp:useBean id="repairshop" class="beans.campDataBean" scope="page"/>
<jsp:setProperty name="repairshop" property="*" />
	
<main class="page-content">
    <div class="container">
      <h2>정비소수정</h2>
      <hr>
      	<form method="post" action="manager4_update_pro.jsp" class="validation-form" novalidate >			<!-- 정보 보내는 부분 -->
				 		
					<div class="row"> 
						<div class="mb-3"> <label for="nickname">정비소이름</label> 
							<input type="text" class="form-control" name="repairShopName" value="<%=repairshop.getRepairShopName()%>" maxlength=6 required> 
						</div> 
					</div>
					<div class="row"> 
						<div class="mb-3"> <label for="nickname">정비소주소</label> 
							<input type="text" class="form-control" name="repairShopAddress" value="<%=repairshop.getRepairShopAddress()%>" maxlength=5 required> 
						</div> 
					</div>
					<div class="row"> 
						<div class="mb-3"> <label for="nickname">정비소전화번호</label> 
							<input type="text" class="form-control" name="repairShopCall" value="<%=repairshop.getRepairShopCall()%>" maxlength=10 required> 
						</div>
					</div> 
					<div class="row"> 
						<div class="mb-3"> <label for="nickname">담당자이름</label> 
							<input type="text" class="for_disable" name="repairManager" value="<%=repairshop.getRepairManager()%>" maxlength=10 required>
						</div>
					</div>
					<div class="row"> 
						<div class="mb-3"> <label for="nickname">담당자이메일</label> 
							<input type="text" class="form-control" name="repairManagerEmail" value="<%=repairshop.getRepairManagerEmail()%>"  maxlength=15 required> 
						</div>
					</div> 
					<div class="row"> 
						<div class="mb-3"> <label for="nickname">정비소이미지</label> 
							<input type="text" class="form-control" name="shopImage" value="<%=repairshop.getShopImage()%>"  maxlength=7 required> 
						</div>
					</div> 

		 			<input type="hidden" class="form-control" name="repairShopId" value="<%=repairshop.getRepairShopId()%>">
					<button class="btn btn-primary btn-lg btn-block" type="submit">수정하기</button>							
		</form>		
    </div>
</main> 
</head>
<body>

</body>
</html>