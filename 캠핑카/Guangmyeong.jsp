<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>광명점</title>
  	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/carousel/">
    <script src="https://kit.fontawesome.com/bed463cd85.js" crossorigin="anonymous"></script>
    <link href="heads.css" rel="stylesheet" type="text/css">
    <link href="car.css" rel="stylesheet" type="text/css">
	<script src="https://code.jquery.com/jquery-2.2.4.min.js" ></script>
	<script src=cars.js></script>
    

    <!-- Bootstrap core CSS -->
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

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

<head>
<div  id=menu_boxes; style=" position: relative; z-index: 2;">
   <nav class="navbar">
        <div id=navbar_logo>
          <a>🛺 RCS</a>  
       </div>
        <div class="navbar_menu">
            <ul id=menus>
                <li>
                    <a>이용안내</a>
                    <ul>
                        <li><a href="../../이용안내/main/guide.jsp">대여하는법</a></li>
                        <li><a href="../../이용안내/main/guide2.jsp">주의사항</a></li>
                        <li><a href="../../이용안내/main/guide3.jsp">가격안내</a></li>  
                    </ul>
                </li>
                <li>
                    <a href="">대여사</a>
                    <ul>
                        <li><a href="">회사정보</a></li>
                    </ul>
                </li>
                <li>
                    <a href="">캠핑카</a>
                    <ul>
                        <li><a href="">차량정보</a></li>
                        
                    </ul>
                </li>
                <li>
                    <a href="">정비소</a>
                    <ul>
                        <li><a href="">정비소정보</a></li>
                    </ul>
                </li>
                <li><a href="" style="color:#77AFC4">마이페이지</a></li>
	            <li>
	            	<a href="../login/login.jsp" style="color:#D9EF6E;">로그아웃</a>
	            </li>                
            </ul>

        </div>



    </nav>
</div>

</head>

<body>



<main>



<div class="app">
 <div class="header">
  <div class="menu-circle"></div>
 
  <div class="header-menu">
   <a class="menu-link" href="Ansan.jsp">안산점</a>
  </div>
  <div class="header-menu">
   <a class="menu-link is-active" href="">광명점</a>
  </div>
  <div class="header-menu">
   <a class="menu-link" href="Hwaseong.jsp">화성점</a>
  </div>
  
  
  

 
 </div>
 
 <div class="wrapper">

  <div class="main-container">

   <div class="content-wrapper">
    <div class="content-wrapper-header">
     <div class="content-wrapper-context">
      <h3 class="img-content">
      캠핑카
      </h3>
     </div>

    </div>

    <div class="content-section">
     <div class="content-section-title">차량 정보</div>
     <div class="apps-card">
      <div class="app-card">
       <span>
        차 이름
       </span>
	   <img alt="" src="../images/안산점.jpg">
       <div class="app-card__subtext">      
       	<li>캠핑카 차종</li> 
       	<li>몇인승</li>
       	<li>캠핑카 기능</li>
       	<li>대여가격</li>
       </div>
       <div class="app-card-buttons">
             <button class="content-button status-button">예약</button>
       </div>
       </div>
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