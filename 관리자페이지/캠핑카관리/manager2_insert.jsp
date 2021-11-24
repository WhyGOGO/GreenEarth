<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="beans.campDataBean"%>
<%@page import="beans_method.insertDB" %>
<%@page import="java.util.ArrayList" %> 
<%@page import="beans_method.selectDB" %>
<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<title>회사 고르기</title>

<%@ include file="../../관리자페이지메뉴/managerMenu.jsp" %>	<!-- 메뉴 바  -->

  <%
 		 request.setCharacterEncoding("UTF-8");
		 String filename = request.getParameter("filename");
		 selectDB sd = selectDB.getInstance();
		 ArrayList<campDataBean> com_id = sd.selCompany();

  %>
<main class="page-content">
    <div class="container">
      <h2>캠핑카 추가</h2>
      <hr>
      	<form method="post" action="manager2_insert_pro.jsp" class="validation-form" novalidate >			<!-- 정보 보내는 부분 -->
				 	<div class="row"> 
						<div class="col-md-6 mb-3"> <label for="nickname">캠핑카 이미지</label> 
							<input type="text" class="form-control" name="shopImage" value="<%=filename%>"  maxlength=10 readonly> 
						<div class="invalid-feedback"> 이미지를 추가해주세요. </div> 
						</div> 
					</div> 		
					<div class="row"> 
						<div class="mb-3"> <label for="nickname">캠핑카이름</label> 
							<input type="text" class="form-control" name="campCarName" placeholder="GrandMother" maxlength=6 required> 
						</div> 
					</div>
					<div class="row"> 
						<div class="mb-3"> <label for="nickname">캠핑카종류</label> 
							<input type="text" class="form-control" name="campCarType" placeholder="캠핑카의 종류를 입력해주세요." maxlength=5 required> 
						</div> 
					</div>
					<div class="row"> 
						<div class="mb-3"> <label for="nickname">캠핑카번호판</label> 
							<input type="text" class="form-control" name="campCarNumber" placeholder="캠핑카번호판" maxlength=10 required> 
						</div>
					</div> 
					<div class="row"> 
						<div class="mb-3"> <label for="nickname">캠핑카등록날짜</label> 
							<input type="date" class="for_disable" name="campCarDate" id="RENTALSTART"  min="0" max="" onchange="printTerm()" required="required">
						</div>
					</div>
					<div class="row"> 
						<div class="mb-3"> <label for="nickname">탑승인원수</label> 
							<input type="text" class="form-control" name="peopleRide" placeholder="8"  maxlength=2 required> 
						</div>
					</div> 
					<div class="row"> 
						<div class="mb-3"> <label for="nickname">렌트비용</label> 
							<input type="text" class="form-control" name="carRentalCost" placeholder="1일 기준 렌트비용을입력해주세요"  maxlength=7 required> 
						</div>
					</div>
					<label for="nickname">회사</label> 
					<select name="compId"  class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" style="width:10%;height:4.9%;font-size:10px;font-weight:700; ;  ">
			  			<option selected>===선택===</option>
<%

   for(int i=0;i<com_id.size();i++){ 
   	campDataBean dt= com_id.get(i);
   	int compId=dt.getCompId();
   	String compname=dt.getCompName();	    	
%>	 
			  			<option value="<%=compId%>"><%=compname%></option>
			  	
<%			 	
   }				    
%>
					</select>		 
					<button class="btn btn-primary btn-lg btn-block" type="submit">추가 하기</button>							
		</form>		
    </div>
</main>
</head>
<body>

</body>
</html>