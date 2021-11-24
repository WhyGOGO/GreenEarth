<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="beans_method.selectDB" %>
<%@page import="java.util.ArrayList" %>  
<%@page import="beans.campDataBean"%> 
<!doctype html>
<html lang="en">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>차량선택</title>


    <style>

      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

<%@ include file="../../메뉴바_슬라이드/menubar.jsp" %>	<!-- 메뉴 바  -->
<body>



<main>



<div class="app">
 <div class="header">
  <div class="menu-circle"></div>
 
  
  
  <div class="header-menu">
   <a class="menu-link is-active" href="">차량예약</a>
  </div>
   <div class="header-menu">
  <a class="menu-link" href="company_select.jsp">다시 대여사 선택</a>
 </div>
 
 </div>
 
 <div class="wrapper">

  <div class="main-container">

   <div class="content-wrapper">
    <div class="content-wrapper-header">
     <div class="content-wrapper-context">
      <h3 class="img-content">
      	차량 선택 <br><br>
      </h3>
     </div>

    </div>
 <table class="table table-success table-striped">
	 <div class="apps-card">
 <%	 
	request.setCharacterEncoding("UTF-8");
	int compId = Integer.parseInt(request.getParameter("compId"));
	int campcarid=0;
	int rentalstatus=0;
	int carrentalcost=0;
 	try{
 
		selectDB sd = selectDB.getInstance();	
	
		ArrayList<campDataBean> dtos2 = sd.selCar(compId);
		ArrayList<campDataBean> dtos3 = sd.selUser(email); //면허증번호 가져오기
		
		campDataBean li = dtos3.get(0);	// 면허증번호 가져오기
		String LicenseNumber = li.getLicenseNumber();
		
		
		for(int i=0; i < dtos2.size(); i++){
			campDataBean dto2 = dtos2.get(i);
			
			int compid = dto2.getCompId();
			campcarid = dto2.getCampCarId();
			String campcarname = dto2.getCampCarName();
			String campcartype = dto2.getCampCarType();
			String campcarnumber = dto2.getCampCarNumber();		
			String campcardate = dto2. getCampCarDate();
			int peopleride = dto2.getPeopleRide();   
			carrentalcost = dto2.getCarRentalCost(); 
			rentalstatus = dto2.getRentalStatus(); 
			String camp_image =dto2.getcamp_image();
	
%>

	
     <div class="app-card" style="width:30%;" id="forSelectBox">
  
	   <div class="Selected_app-card" >
		<div class="content-section">
			<form  action="cars_select2.jsp"  name=frmSubmit method="post" onsubmit="go(<%=rentalstatus%>);">
			     <div class="content-section-title">이름 : <%=campcarname%></div>			<input type="hidden" name="campCarName" value="<%=campcarname%>">
			     	<img alt="" src="../../이미지/대여사이미지/<%=camp_image%>"><br>
				       캠핑카종류 :	<%=campcartype%><br> 		 						<input type="hidden" name="campCarType" value="<%=campcartype%>">
				       차량번호 : <%=campcarnumber%><br>									<input type="hidden" name="campCarNumber" value=" <%=campcarnumber%>">
				       캠핑카 등록일자 : <%=campcardate%><br>		       					<input type="hidden" name="campCarDate" value=" <%=campcardate%>">
				       승차인원수 : <%=peopleride%><br> 									<input type="hidden" name="peopleRide" value="<%=peopleride%>">
				       대여비용 : <%=carrentalcost%><br> 									<input type="hidden" name="carRentalCost" value="<%=carrentalcost%>">
 					   대여가능 여부 : 														<input type="hidden" name="rentalStatus" value="<%=rentalstatus%>">
 					    <script>
				   
					  		if (<%=rentalstatus%>==1) {
					  			document.write("🔴");
		
					  		}
					  		if (<%=rentalstatus%>==0) {document.write("🟢");			
					  		}			 		  		
				  		</script><br><hr>					 

					  
			       <div class="app-card-buttons">       
			      	<button class="content-button" id="test"  >예약</button>			 
			       </div>
		       
			       <input type="hidden" name="campCarId" value="<%=campcarid%>">
			       <input type="hidden" name="custEmail" value="<%=email%>">	
			       <input type="hidden" name="compId" value="<%=compid%>">
			       <input type="hidden" name="licenseNumber" value="<%=LicenseNumber%>"> 	       	       			  
	       </form>
	      </div>
	      </div>	      
      </div>
<script>


		function go(d){		
			var theForm = document.frmSubmit;			
			var veBtnRmv = document.getElementById("test");
			
			if (d==1){
				alert("재고가 없습니다, 다른 캠핑카를 빌려주세요!");
				document.location.href="cars_select.jsp";
			}
		}
</script>
<% }
}
	catch(Exception e){
		e.printStackTrace();
}
%>  
     </div>
</table>   
     
    </div>
   </div>
  </div>
 </div>
 <div class="overlay-app"></div>

	
  
</main>




		


  </body>

</html>
