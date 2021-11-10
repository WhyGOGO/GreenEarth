<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>대여사</title>
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
                        <li><a href="">부가옵션</a></li>
                        <li><a href="">차량조회</a></li>
                    </ul>
                </li>
                <li>
                    <a href="">정비소</a>
                    <ul>
                        <li><a href="">정비소정보</a></li>
                        <li><a href="">정비소조회</a></li>
                    </ul>
                </li>
                <li>
                    <a href="">회사조회</a>
                    <ul>
                        <li><a href="">차량조회</a></li>
                        <li><a href="">정비소조회</a></li>
                        <li><a href="">정비이력조회</a></li>
                    </ul>
                </li>
                <li>
                    <a href="">고객센터</a>
                    <ul>
                        <li><a href="">1:1상담</a></li>
                        <li><a href="">건의사항</a></li>
                    </ul>
                </li>
                <li><a href="" style="color:#77AFC4">조회</a></li>
                <li><a href="" style="color:#77AFC4">예약</a></li>
	            <li>
	            	<a href="../login/login.jsp" style="color:#D9EF6E;">로그인</a>
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
   <a class="menu-link is-active" href="">회사 정보</a>
  </div>
  <div class="search-bar">
   <input type="text" placeholder="Search">
  </div>

 </div>
 <div class="wrapper">

  <div class="main-container">

   <div class="content-wrapper">
    <div class="content-wrapper-header">
     <div class="content-wrapper-context">
      <h3 class="img-content">
      이용안내
      </h3>
     </div>

    </div>

    <div class="content-section">
     <div class="content-section-title">회사 정보</div>
     <div class="apps-card">
      <div class="app-card">
       <span>
        안산점
       </span>
	   <img alt="" src="../images/안산점.jpg">
       <div class="app-card__subtext">      
       주소 , 전화번호, 담당자 이름, 담당자 이메일정보  적으시오.     
       </div>
       </div>
      </div>
     </div>
     

    <div class="content-section">
     <div class="apps-card">
      <div class="app-card">
       <span>
        화성점
       </span>
	   <img alt="" src="../images/화성점.jpg">
       <div class="app-card__subtext">      
       챠량 스펙들 적으세요       
       </div>
       </div>
     </div>     
     
    <div class="content-section">
     <div class="apps-card">
      <div class="app-card">
       <span>
        광명점
       </span>
	   <img alt="" src="../images/광명점.jpg">
       <div class="app-card__subtext">      
       챠량 스펙들 적으세요       
       </div>
       </div>
     </div>         
     
     
     
    </div>
   </div>
  </div>
 </div>
 <div class="overlay-app"></div>
</div>

  
</main>


    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

      
  </body>
</html>
