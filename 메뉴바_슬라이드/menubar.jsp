<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    
    <!-- 홈페이지 상단 메뉴입니다. -->
    
    
   <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/carousel/">
   <script src="https://kit.fontawesome.com/bed463cd85.js"></script>
     	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-latest.js"></script>	
   <link href="../../CSS_JS/head_menubar/heads.css" rel="stylesheet" type="text/css">
   <link href="../../CSS_JS/box/car.css" rel="stylesheet" type="text/css">
   <script src=../../CSS_JS/box/cars.js></script>  


	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>	
<head>
	 			<!-- 세션값사용하기 -->

 <%@ include file="../세션/trySession2.jsp"%>
<div  id=menu_boxes; style="position: relative; z-index: 2;">
   <nav class="navbar">
        <div id=navbar_logo>
          <a href="guide.jsp" style="text-decoration: none; color:white;">🛺 RCS</a>  
       </div>
        <div class="navbar_menu">
            <ul id=menus>
                <li>
                    <a href="">이용안내</a>
                    <ul>
                        <li><a href="../../이용안내/main/guide.jsp">대여하는법</a></li>
                        <li><a href="../../이용안내/main/guide2.jsp">주의사항</a></li>
                        <li><a href="../../이용안내/main/guide3.jsp">가격안내</a></li>  
                    </ul>
                </li>
                <li>
                    <a href="">대여사</a>
                    <ul>
                        <li><a href="../../대여사/main/company_info.jsp">회사정보</a></li>
                    </ul>
                </li>
                <li>
                    <a href="">캠핑카</a>
                    <ul>
                        <li><a href="../../캠핑카/main/company_select.jsp">차량정보</a></li>
                    </ul>
                </li>
                <li>
                    <a href="">정비소</a>
                    <ul>
                        <li><a href="../../정비소/main/repairShop.jsp">정비소정보</a></li>
                    </ul>
                </li>
                <% 
                	if(email.equals("root@root")){%>
                	<li><a href="../../관리자페이지/manager.jsp" style="color:#77AFC4">관리자페이지</a></li>
                <%}else{%>
               	<li><a href="../../마이페이지/myForm.jsp" style="color:#77AFC4">마이페이지</a></li>
				<%}%>
              
	            <li>
	            	<a href="../../로그인/login.jsp" style="color:#D9EF6E;" id="logout">로그아웃</a>
	            </li>
                      
            </ul>
        </div>
        <script>
           $("#logout").click(function(){
        	    //로그아웃시 세션초기화  
        	   alert("로그아웃 되었습니다");

           });
       </script>	  

	
	<%}%>

    </nav>
</div>

</head>

