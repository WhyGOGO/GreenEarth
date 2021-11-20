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
<%@ include file="../../메뉴바_슬라이드/slide2.jsp" %>	<!-- 슬라이드바  -->

	<jsp:useBean id="repairshopid" class="beans.campDataBean" scope="page"/>	
	<jsp:setProperty name="repairshopid" property="*" />

<% 

		
     	selectDB sd = selectDB.getInstance();	//selectdb 연결
     	
     	ArrayList<campDataBean> rental_num = sd.selCustHis(email);	// 고객렌탈 고유번호
	    ArrayList<campDataBean> lc = sd.selCusRent(email); //고객 면허증번호 가져오기   
	
	    
	    campDataBean rentalnum = rental_num.get(0);
	    campDataBean lcn = lc.get(0);
	    
	    int rentalnumber = rentalnum.getRentalNumber(); // 고객의 렌트 고유번호	*    
	    String license = lcn.getLicenseNumber();// 면허증번호 *
	 
	    
	    
	    ArrayList<campDataBean> car_id = sd.selcampCar_id(license);	// 캠핑카아이디 가져오기
	    campDataBean campcarid_ = car_id.get(0);
	    int campcarid = campcarid_.getCampCarId(); // 고객이 빌린 캠핑카 아이디 *
	    
	    
     	System.out.println("캥핑카 아이디"+campcarid);
    	System.out.println("고객의 rentalnumber"+rentalnumber);
    	System.out.println("고객의 면허증번호"+license);
     	     
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
			<input type="hidden" name="rentalNumber" value= "<%=rentalnumber%>"  > 	
			<input type="hidden" name="licenseNumber" value= "<%=license%>"  > 	
			<input type="hidden" name="campCarId" value= "<%=campcarid%>"  > 	
						
											<!-- RepairInfo 테이블 값들 -->
			<input type="hidden" name="repairShopId" value= "<%=repairshopid.getRepairShopId()%>"  >   	<!-- 정비소아이디 -->
			원하는 정비날짜:<input type="date" id="repairDate" name="repairDate" onchange="printTerm()" required>			<!--정비날짜  -->
       		납입기한 : <input type="text" id="repairPayDate" name="repairPayDate" required> 해당일 영업마감 18시까지	입금바랍니다.	<!--납입기한  -->
	        <br><br>대략적인 정비비용: <input type="text" id="repairCost" name="repairCost" placeholder="ex) 300000" required> 									<!--정비비용  -->
								     			
        	<hr> 
		  	<table>
		    	<tr>
					<th style = "background-color: black; text-align: center; width:100px; height:400px;">정비내역:</th>
		    		<td>
	<!-- 정비내역 -->		<textarea name="repairHistory" style="width:400px; height:400px;"placeholder="정비 내용"  required></textarea>
		    		</td>
		    		<th style = "background-color: black; text-align: center; width:100px; height:400px;">기타정비내역:</th>
		    		<td>
	<!-- 기타정비내역 -->	<textarea name="repairEtcHistory"  style="width:400px; height:400px;"placeholder="기타 정비내용"  required></textarea>
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
 <div class="overlay-app"></div>
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
  	