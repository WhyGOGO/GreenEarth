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
    <link href="../../CSS_JS/combo_box/combo.css" rel="stylesheet" type="text/css">
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
	     <div class="content-section-title">정비하실부위를고르시오</div>	
	  			<select data-id="a" name="wr_1">
	  				<option value="">==선택==</option>
     				<option value="외부수리">외부수리</option>
     				<option value="내부수리">내부수리</option>
				</select>	 
	      </div>	      
	       <div class="app-card-buttons">       
	      	
	       </div>	      
      </div>
           </div>
           
           	 <div class="apps-card">
	  <div class="app-card" style="width:28%"> 
		<div class="content-section">
	     <div class="content-section-title">정비하실내용을고르세요</div>	
	  			<select data-id= "b" style=background:#ff3399 name="wr_1" required>
	  				<option value="">==선택==</option>
				</select>	 
	      </div>	      
	       <div class="app-card-buttons">       
	      	
	       </div>	      
      </div>
           </div>
           	 <div class="apps-card">
	  <div class="app-card" style="width:28%"> 
		<div class="content-section">
	     <div class="content-section-title">정비하실내용을고르세요</div>	
	  			<select data-id = "c" name="wr_1">
	  				<option value="">==선택==</option>
				</select>	 
	      </div>	      
	       <div class="app-card-buttons">       
	      	<button class="content-button" >완료</button>
	       </div>	      
      </div>
           </div>
</table>   
     
    </div>
   </div>
  </div>
 </div>
 <div class="overlay-app"></div>
 </main>
	<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript">
$(function() {
$("select[data-id=a]").change(function() {
	var temp = $("select[data-id=b]");
	var a = $(this).val();
	temp.children().remove();
	temp.append('<option value="">선택하세요</option>');
 
if(a == "외부수리"){
	temp.append('<option value="삼성전자">정말로?</option>');
	temp.append('<option value="애플">이거를</option>');
	temp.append('<option value="LG">수리한다고?</option>');
	temp.append('<option value="">어허..</option>');
	}
if(a == '내부수리'){
	temp.append('<option value="">삼성전자</option>');
	temp.append('<option value="">애플</option>');
	temp.append('<option value="">LG</option>');
	temp.append('<option value="">기타</option>');
	}
});

 
$("select[data-id=b]").change(function() {
		var temp = $("select[data-id=c]");
		var b = $(this).val();
		temp.children().remove();
		temp.append('<option value="">선택하세요</option>');
		if(b == '삼성전자'){
			temp.append('<option value="KT.삼성전자.갤럭시노트9 512G.">갤럭시노트9 512G</option>');
			temp.append('<option value="KT.삼성전자.갤럭시노트9.">갤럭시노트9</option>');
			temp.append('<option value="KT.삼성전자.갤럭시 S9 64GB.">갤럭시 S9 64GB</option>');
			temp.append('<option value="KT.삼성전자.갤럭시 S9plus 64GB.">갤럭시 S9plus 64GB</option>');
			}
		if(b == '애플'){
			temp.append('<option value="SK.삼성전자.갤럭시노트9 512G.">갤럭시노트9 512G</option>');
			temp.append('<option value="SK.삼성전자.갤럭시노트9.">갤럭시노트9</option>');
			temp.append('<option value="SK.삼성전자.갤럭시 S9 64GB.">갤럭시 S9 64GB</option>');
			temp.append('<option value="SK.삼성전자.갤럭시 S9plus 64GB.">갤럭시 S9plus 64GB</option>');
			}
		if(b == 'LG'){
			temp.append('<option value="KT.삼성전자.갤럭시노트9 512G.">갤럭시노트9 512G</option>');
			temp.append('<option value="KT.삼성전자.갤럭시노트9.">갤럭시노트9</option>');
			temp.append('<option value="KT.삼성전자.갤럭시 S9 64GB.">갤럭시 S9 64GB</option>');
			temp.append('<option value="KT.삼성전자.갤럭시 S9plus 64GB.">갤럭시 S9plus 64GB</option>');
			}
		});
});
</script>
	  </body>

</html>
  	