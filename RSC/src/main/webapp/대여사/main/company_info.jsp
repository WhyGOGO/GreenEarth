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
    <title>대여사</title>

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

    
    <!-- Custom styles for this template -->
    <link href="carousel.css" rel="stylesheet">

<%@ include file="../../메뉴바_슬라이드/menubar.jsp" %>	<!-- 메뉴 바  -->

<body>



<main>



<div class="app">
 <div class="header">
  <div class="menu-circle"></div>
 
  
  
  <div class="header-menu">
   <a class="menu-link is-active" href="">대여사</a>
  </div>
 
 </div>
 
 <div class="wrapper">

  <div class="main-container">

   <div class="content-wrapper">
    <div class="content-wrapper-header">
     <div class="content-wrapper-context">
      <h3 class="img-content">
      회사정보
      </h3>
     </div>

    </div>
 <table class="table table-success table-striped">

 <%	try{

	selectDB sd = selectDB.getInstance();	
	ArrayList<campDataBean> dtos2 = sd.selCompany();
	for(int i=0; i < dtos2.size(); i++){
		campDataBean dto2 = dtos2.get(i);
		String name = dto2.getCompName();
		String address = dto2.getCompAddress();
		String CompCall = dto2.getCompCall();
		String CompManager = dto2.getCompManager();		
		String CompEmail = dto2.getCompEmail();
		String IMAGE = dto2.getIMAGE();   	
		String spot = dto2.getSPOT();
%>
	 <div class="apps-card">
     <div class="app-card"> 
	<div class="content-section">
     <div class="content-section-title"><%=name%></div>
	   <img alt="" src="../../이미지/대여사이미지/<%=IMAGE%>">
       <div class="app-card__subtext">      
       회사이름: <%=name%><br>
       회사주소: <%=address%><br> 
       회사전화번호 <i class="fas fa-phone-square-alt"></i> : <%=CompCall %><br>
       담당자이름: <%=CompManager %><br>
       담당자이메일 <i class="far fa-envelope"></i> : <%=CompEmail %>    
       </div>
       </div>
      </div>
     </div>
<% }
}
	catch(Exception e){
		e.printStackTrace();
}
%>  
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


      
  </body>

</html>
