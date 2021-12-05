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
    <title>정비내역선택</title>
	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
 
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
<%@ include file="../../메뉴바_슬라이드/slide.jsp" %>	<!-- 슬라이드바  -->

	<jsp:useBean id="repairshopid" class="beans.campDataBean" scope="page"/>	
	<jsp:setProperty name="repairshopid" property="*" />

<% 
		
		
		
     	selectDB sd = selectDB.getInstance();	//selectdb 연결
     	
	    ArrayList<campDataBean> lc = sd.selCusRent(email); //고객 면허증번호 가져오기   
	
	    
	    campDataBean lcn = lc.get(0);
	    
	    String license = lcn.getLicenseNumber();// 면허증번호 *
	 	    
	    ArrayList<campDataBean> car_id = sd.selcampCar_id(license);	// 캠핑카아이디 가져오기
	    	        	     
%>


<body>



<main>



<div class="app">
 <div class="header">
  <div class="menu-circle"></div>
 
  
  
  <div class="header-menu">
   <a class="menu-link is-active" href="">정비소예약</a>
  </div>
   <div class="header-menu">
  <a class="menu-link" href="repairShop.jsp">다른 정비소 선택</a>
 </div>
 
 </div>
 
 <div class="wrapper">

  <div class="main-container">

   <div class="content-wrapper">
    <div class="content-wrapper-header">
     <div class="content-wrapper-context">
      <h3 class="img-content">
      	정비 <br><br>
      </h3>
     </div>

    </div>
 	<hr>
	<form class="repair-form"	method="get" action="repairShopSelectpro.jsp" name ="repair">
										<!-- RepairRequest 테이블 값들 -->
										
			대여 한 캠핑카를 선택해주세요:
			
			<select name="rentalNumber_campCarId"  class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" style="width:10%;height:4.9%;font-size:10px;font-weight:700; ;  ">
			  <option selected>===선택===</option>
<%
   for(int i=0;i<car_id.size();i++){
   	campDataBean dt= car_id.get(i);
   	int campCarId=dt.getCampCarId();
   	int rentalnumber=dt.getRentalNumber();
   	String campcarname=dt.getCampCarName();	    	
%>	 
			  	<option value="<%=rentalnumber%>,<%=campCarId%>"><%=campcarname%></option>
			  	
<%		
   }				    
%>
			</select>
					
			<input type="hidden" name="licenseNumber" value= "<%=license%>"> 	
			
						
											<!-- RepairInfo 테이블 값들 -->
			<input type="hidden" name="repairShopId" value= "<%=repairshopid.getRepairShopId()%>"  >   	<!-- 정비소아이디 -->
			원하는 정비날짜:<input type="date" id="repairDate" name="repairDate" onchange="printTerm()" required>			<!--정비날짜  -->
       		납입기한 : <input type="date" id="repairPayDate" name="repairPayDate" required> 해당일 영업마감 18시까지	입금바랍니다.	<!--납입기한  -->
	        <br><br>대략적인 정비비용: <input type="text" id="repairCost" name="repairCost" placeholder="ex) 300000" required> 									<!--정비비용  -->
								     			
        	<hr> 
		  	<table>
		    	<tr>
					<th style = "background-color: black; text-align: center; width:100px; height:400px;">정비내용:</th>
		    		<td>
	<!-- 정비내역 -->		<textarea name="repairHistory" style="width:400px; height:400px;"required>ex) 필요없는 부분은 지워주세요
	
휠하우스 밀폐			150,000
쏠라 충전 시스템			550,000
쏠라 패널 추가			300,000
워탭					120,000
테이블 베드변환			800,000
벙크베드 라이팅			120,000
벙크베드 루프베트		250,000
DC 냉장고 개조 및 배선		600,000
	</textarea>
		    		</td>
		    		<th style = "background-color: black; text-align: center; width:100px; height:400px;">기타정비내용:</th>
		    		<td>
	<!-- 기타정비내역 -->	<textarea name="repairEtcHistory"  style="width:400px; height:400px;"required>ex) 필요없는 부분은 지워주세요
	
LED 바 (스위치 형)			90,000
LED 바 무선 리모트 컨트롤		30,000
배터리					70,000
DC 소켓					30,000
	</textarea>
		    		</td>		    		
		    	</tr>
		    </table>

  		    <div class="app-card-buttons">       
	      		<button type="submit"class="content-button status-button">예약하기</button>
	        </div>
	</form>	
  
     <script>
   	function input(){
   		const dday = document.querySelector("#input_date").value;
   		
   	}
     
     </script>
    </div>
   </div>
  </div>
 </div>
 </main>
   	<script>		
			function printTerm()  {
				var repairDate = document.getElementById('repairDate').value;
							
				repairDate = new Date(repairDate);
		
				var payday = new Date(repairDate.getTime()+60000*2000);
				var payday1 = payday.toLocaleDateString()
				var payday2 = payday1.replaceAll('. ','-');	
				var payday3 = payday2.replaceAll('.','');	
				
				//document.getElementById('RENTALCOST').value = cost;
				
				
				document.getElementById('repairPayDate').value =payday3;
			}
			// 여기까지 날짜 계산 자바스크립트
					
		</script>
</body>

</html>
  	