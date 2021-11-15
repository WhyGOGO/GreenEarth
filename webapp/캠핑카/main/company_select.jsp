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
    <title>회사선택</title>

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
 
 </div>
 
 <div class="wrapper">

  <div class="main-container">

   <div class="content-wrapper">
    <div class="content-wrapper-header">
     <div class="content-wrapper-context">
      <h3 class="img-content">
      	대여회사 선택 <br><br>
      </h3>
     </div>

    </div>
 <table class="table table-success table-striped">
	 <div class="apps-card">
 <%	    	
 	String num="";
 
 	try{
		selectDB sd = selectDB.getInstance();
		
		ArrayList<campDataBean> dtos2 = sd.selCompany();
		for(int i=0; i < dtos2.size(); i++){
			campDataBean dto2 = dtos2.get(i);
		    num = String.valueOf(dto2.getCompId());
			String name = dto2.getCompName();
			String address = dto2.getCompAddress();
			String CompCall = dto2.getCompCall();
			String CompManager = dto2.getCompManager();		
			String CompEmail = dto2.getCompEmail();
			String IMAGE = dto2.getIMAGE();   	
%>
		     <div class="app-card" onclick="numberPost()"> 
				<div class="content-section">
			     <div class="content-section-title"></div>	
				   <img alt="" src="../../이미지/대여사이미지/<%=IMAGE%>">
			       <div class="app-card__subtext">      
				       <br>
				       회사이름 :	<%=name%><br> 
				       회사주소 : <%=address%><br> 	
			       </div>
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
		function numberPost(){
			location.href="cars_select.jsp?number=<%=num%>";
			setTimeout('numberPost()',2000)
		}
		
	</script>

      
  </body>

</html>
