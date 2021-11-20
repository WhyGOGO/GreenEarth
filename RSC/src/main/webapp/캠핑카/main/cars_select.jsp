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
	int carrentalcost=0;
 	try{
 
		selectDB sd = selectDB.getInstance();	
	
		ArrayList<campDataBean> dtos2 = sd.selCar(num);
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
		  </script><br><hr>
		  <form action="carsPro.jsp" method="get">
			<div>
				  	📆대여일 &nbsp;&nbsp;&nbsp;<input type="date" class="Date_" name="rentalStart" id="RENTALSTART"  min="0" max="" onchange="printTerm()" required="required">
				<br>📆대여 종료<input type="date" name="rentalEnd" class="Date_" id="RENTALEND" onchange="printTerm()" min="0" max="" required="required"><br><br><hr>
				<br>⌚대여기간 &nbsp;<input type="text" name="rentalTerm" id="RENTALTERM" readonly >						
				<br>💰청구금액 &nbsp;<input type="text" name="rentalCost" id="RENTALCOST"  readonly>				
			  	<br>납입기한&nbsp; &nbsp; &nbsp;<input type="text" name="rentalPayDate" id="RentalPayDate"  readonly>
			  	<br> 해당일 영업마감 18시까지 결제
			  	<hr>기타청구내역 	
						  	
				<div class="form-check">
				 <br><input class="form-check-input" type="radio" value="이벤트옵션상품" name="rentalEtcHistory" id="flexRadioDefault1" onclick="printETCcost()">
				  <label class="form-check-label" for="flexRadioDefault1">
				  	<p style="color:pink">#이벤트 유상옵션!</p>(우드롤테이블, 캠핑의자4개, 우드셀프선반, 캠핑렌턴2개, 화롯대, 토치, 집게, 냄비2ae, 전골팬, 등 각종도구) 
				  	<br>정가 70,000 -> 30,000
				  </label>
				</div>
				<br>
				<div class="form-check">
				  <input class="form-check-input" type="radio" name="rentalEtcHistory" id="flexRadioDefault2" value="없음" checked>
				  <label class="form-check-label" for="flexRadioDefault2">
				    이벤트 옵션 없음
				  </label>
				</div>
				<br> 기타청구요금: &nbsp;<input type="text" name="rentalEtcCost" id="RentalEtcCost"  readonly>			 
				
		
			</div>
					  
		       <div class="app-card-buttons">       
		      	<button class="content-button" id="<%=rentalstatus%>" onclick="btn_alert(this.id)" >예약</button>
		       </div>
			       <input type="hidden" name="campCarId" value="<%=campcarid%>">
			       <input type="hidden" name="custEmail" value="<%=email%>">	
			       <input type="hidden" name="compId" value="<%=compid%>">
			       <input type="hidden" name="licenseNumber" value="<%=LicenseNumber%>">
			       	       	       			  
	       </form>
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



<%@ include file="../../CSS_JS/카렌탈/car_select.jsp" %>
		


  </body>

</html>
