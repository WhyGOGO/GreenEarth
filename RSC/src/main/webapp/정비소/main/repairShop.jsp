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
    <title>정비소</title>

  
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
   <a class="menu-link is-active" href="">정비소</a>
  </div>


 </div>
 <div class="wrapper">

  <div class="main-container">

   <div class="content-wrapper">
    <div class="content-wrapper-header">
     <div class="content-wrapper-context">
      <h3 class="img-content">
      정비소
      </h3>
     </div>

    </div>

    
      <div class="apps-card">
<%	int repairShopId=0;
	try{
		selectDB sd = selectDB.getInstance();
		ArrayList<campDataBean> dtos = sd.selRepair();
		for(int i=0; i < dtos.size(); i++){
			campDataBean dto = dtos.get(i);
			repairShopId = dto.getRepairShopId();
			String RepairShopname = dto.getRepairShopName();
			String RepairShopaddress = dto.getRepairShopAddress();
			String RepairShopCall = dto.getRepairShopCall();
			String RepairShopManager = dto.getRepairManager();		
			String RepairShopEmail = dto.getRepairManagerEmail();
			String RepairShopIMAGE = dto.getShopImage();
 	
%>

      <div class="app-card">
      
    <div class="content-section">
     <div class="content-section-title">정비소 정보</div>
       <span>
        정비소이름: <%=RepairShopname%>
       </span>
       <img alt="" src="../../이미지/대여사이미지/<%=RepairShopIMAGE%>">
       <div class="app-card__subtext">      
       정비소주소: <%=RepairShopaddress%> <br>전화번호:<%=RepairShopCall %><br> 담당자이름: <%=RepairShopManager %><br>담당자이메일: <%=RepairShopEmail%>     
       </div>
       <form action="repairshopselect.jsp" method="post">
	       <div class="app-card-buttons">       
	      		<button type="submit" class="content-button status-button" onClick="location.href='repairshopselect.jsp'">예약</button>
	       </div>
	       <input type="hidden" name="repairShopId" value="<%=repairShopId%>">
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
	    </div>
	   </div>
	  </div>
	 </div>
	 <div class="overlay-app"></div>

	</main>
  </body>
</html>
