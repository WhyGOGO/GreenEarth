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
	int num = Integer.parseInt(request.getParameter("number"));
	int campcarid=0;
	int rentalstatus=0;
 	try{
		selectDB sd = selectDB.getInstance();	
		ArrayList<campDataBean> dtos2 = sd.selCar(num);

		for(int i=0; i < dtos2.size(); i++){
			campDataBean dto2 = dtos2.get(i);
			
			campcarid = dto2.getCampCarId();
			String campcarname = dto2.getCampCarName();
			String campcartype = dto2.getCampCarType();
			int campcarnumber = dto2.getCampCarNumber();		
			String campcardate = dto2. getCampCarDate();
			int peopleride = dto2.getPeopleRide();   
			int carrentalcost = dto2.getCarRentalCost(); 
			rentalstatus = dto2.getRentalStatus(); 
	
%>


     <div class="app-card" style="width:30%;"> 
		<div class="content-section">
	     <div class="content-section-title">이름 : <%=campcarname%></div>				 
		       캠핑카종류 :	<%=campcartype%><br> 
		       차량번호 : <%=campcarnumber%><br>
		       캠핑카 등록일자 : <%=campcardate%><br>		      
		       승차인원수 : <%=peopleride%><br>
		       대여비용 : <%=carrentalcost%><br>
		  	   대여가능 여부 : 
		  <script>
		  		if (<%=rentalstatus%>==1) {document.write("🔴");}
		  		if (<%=rentalstatus%>==0) {document.write("🟢");}
		  </script><br>
	      </div>	      
	       <div class="app-card-buttons">       
	      	<button class="content-button" id="<%=rentalstatus%>" onclick="btn_alert(this.id)" >예약</button>
	       </div>	      
      </div>

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
</div>
</div>
  	
	
  
</main>


    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
  	<script>
  		function btn_alert(clicked_id){
  			
  			if (clicked_id==1)
  				alert("죄송합니다 고객님! 이 차량은 현재 예약 불가입니다.");
  			else
  				location.href=-1;		// 결제 창으로 가게 수정해야됨
  		}
  	</script>
  </body>

</html>
