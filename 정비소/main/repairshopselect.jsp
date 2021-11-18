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
<% 
     //selectDB sd = selectDB.getInstance();   
	
	  //ArrayList<campDataBean> dtos = sd.selRepair();
      //ArrayList<campDataBean> dtos3 = sd.selUser(email); //면허증번호 가져오기
      //ArrayList<campDataBean> dtos2 = sd.selRentCar();
      
      //campDataBean li = dtos3.get(0);   // 면허증번호 가져오기
      //String LicenseNumber = li.getLicenseNumber();
 
      
	  //campDataBean dto2 = dtos2.get(0);
 	  //int CampCarId = dto2.getCampCarId();

	  //campDataBean dto = dtos.get(0);
	  //int RepairShopId = dto.getRepairShopId();
			
		
      
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
      	정비내역선택 <br><br>
      </h3>
     </div>

    </div>
 <table class="table table-success table-striped">
	 <div class="apps-card">
	  <div class="app-card" style="width:28%;"> 
		<div class="content-section" >
	     <div class="content-section-title">정비하실내용들을적어주세오</div>
	     
	     
	     <form class="repair-form"method="post" action="repairShopSelectpro.jsp" name ="repair">
	     		
	      </div>	      
      </div>
           </div>
    	<table class = "border="1" width="100%;">
     		<tr>
     		 
     		<th style = "background-color: black; text-align: center; width:5%;">제목:</th>
     		<td>
     			<input type="text" name ="repairHistory" values="repairHistory" placeholder="제목을입력해주세요" maxlength="20" style="width:400px; height:40px;" required> 
     		</td>
    	</tr>
    	<tr>
    		<th style = "background-color: black; text-align: center; width:100px; height:400px;">내용:</th>
    		<td>
    			<textarea name="repairHistory" values="repairEtcHistory" style="width:400px; height:400px;"placeholder="수리하고 싶은 내용을 입력해 주세요."  required></textarea>
    		</td>
    	</tr>
    </table>

  			<div class="app-card-buttons">       
	      		<button type="submit"class="content-button status-button"onClick="location.href='repairShopSelectpro.jsp'" >예약하기</button>
	       </div>
		    <input type="hidden" name="repairDate" value="2021-11-21">
       		<input id="input_date" type="date" name="repairPayDate" value="dday">
	       <input type="hidden" name="repairCost" value="600000"> 
	       	<input type="hidden" name="Lincence" value= "131534636364363">
			<input type="hidden" name="repairShopId" value= "2"  >
       		<input type="hidden" name="CampCarId" value= "5" >
		</form>
</table>   
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
	<script src="../assets/dist/js/bootstrap.bundle.min.js">
	</script>

	  </body>

</html>
  	