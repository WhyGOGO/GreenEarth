<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>이용안내이지</title>
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
<div  id=menu_boxes; style="position: relative; z-index: 2;">
   <nav class="navbar">
        <div id=navbar_logo>
          <a href="guide.jsp" style="text-decoration: none; color:white;">🛺 RCS</a>  
       </div>
        <div class="navbar_menu">
            <ul id=menus>
                <li>
                    <a href="guide.jsp">이용안내</a>
                    <ul>
                        <li><a href="guide.jsp">대여하는법</a></li>
                        <li><a href="guide2.jsp">주의사항</a></li>
                        <li><a href="guide3.jsp">가격안내</a></li>  
                    </ul>
                </li>
                <li>
                    <a href="../../대여사/main/company_info.jsp">대여사</a>
                    <ul>
                        <li><a href="../../대여사/main/company_info.jsp">회사정보</a></li>
                    </ul>
                </li>
                <li>
                    <a href="../../캠핑카/Ansan.jsp">캠핑카</a>
                    <ul>
                        <li><a href="../../캠핑카/Ansan.jsp">차량정보</a></li>
                        
                    </ul>
                </li>
                <li>
                    <a href="../../정비소/main/repairShop.jsp">정비소</a>
                    <ul>
                        <li><a href="../../정비소/main/repairShop.jsp">정비소정보</a></li>
                        
                    </ul>
                </li>
               
                <li><a href="../../마이페이지/myForm.jsp" style="color:#77AFC4">마이페이지</a></li>
               
	            <li>
	            	<a href="../../로그인/login.jsp" style="color:#D9EF6E;">로그아웃</a>
	            </li>                
            </ul>

        </div>



    </nav>
</div>

</head>

<body>



<main>

  <div id="myCarousel" class="carousel slide" data-bs-ride="carousel" style="position: relative; z-index: 1;">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
      <div class="carousel-item active" >
        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777" style='overflow: hidden;'/>
          <img style='object-fit: cover;' src="../images/campImgBus2.jpg">
        </svg>
        <div class="container" >
          <div class="carousel-caption" style="font-weight:bold; color:white;">
            <div style="background-color:black; width:600px; opacity:0.8">
	            <h1>최고의 스펙!</h1>
	            <p>최고의 편의사항!</p>       
	        </div>
          </div>
        </div>

      </div>
      <div class="carousel-item">
        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"/>
          <img style='object-fit: cover;' src="../images/campImgBus1.jpg">
        </svg>

        <div class="container">
          <div class="carousel-caption" >
           <div style="background-color:black; width:600px; opacity:0.8">
            <h1>캠핑카,</h1>
            <p >간편하게 예약 후 바로 떠나세요!</p>
           </div>
          </div>
        </div>
      </div>
      <div class="carousel-item" >
        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"/>
          <img style='object-fit: cover;' src="../images/campImgNight1.jpg">
        </svg>

        <div class="container" >
          <div class="carousel-caption text-end" >
            <h1>언제 어디서나</h1>
            <p>휴식이 가능하고 자유롭게 이동하여 여행을 즐길 수 있는 RCS 입니다!</p>
          </div>
        </div>
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div> 			<!-- 슬라이드이미지 -->

<div class="app">
 <div class="header">
  <div class="menu-circle"></div>
  <div class="header-menu">
   <a class="menu-link " href="guide.jsp">대여방법</a>
   <a class="menu-link is-active" href="">주의사항</a> 			
   <a class="menu-link" href="guide3.jsp">가격사항</a>
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
     <div class="content-section-title">주의사항</div>
     <div class="apps-card">
      <div class="app-card">

       <div class="app-card__subtext">
		❌ 행중에는 가급적 화장실을 사용하지 말고, 반드시 차량이 정차한 후 흔들림이 없을때 사용 바랍니다.<br><br>
		 ❌ 차량 운행중에는 이층침대에 올라가지 마세요.급 출발시 추락 위험이 있습니다.<br><br>
		  ❌ 실내에서는 금연, 애완동물 동승금지 입니다.<br><br>
		  ❌ 캠핑카는 버스전용차선을 이용할 수 없습니다.<br><br>
		 ❌ 반납시에는 사용하신 차량의 오물통을 비우고, 집기 등을 깨끗하게 청소해 주셔야 합니다.<br><br>
		 ❌ 유류비는 고객님 부담입니다.<br><br>
		 ❌ 각종 차량법규위반에 따른 범칙금 및 과태료는 고객님께 부과됩니다.<br><br>
		 ❌ 운행 중 차량사고/파손 발생시 정해진 부품값과 수리공임이 추가됩니다.<br><br>
		 ❌ 사고시 수리기간 동안의 휴차보상료 1일 정상요금 100% 고객님이 부담하셔야 합니다.<br><br>
		 ❌ 캠핑카 차량은 1종 및 2종 보통 운전면허 소지자, 만 26세 이상인 고객사용가능하고, 7인승 차량입니다.<br><br>
		 ❌ 대인, 대물, 자손 등 종합보험에 가입되어 있으며, 자차보험은 미가입 입니다.<br><br>
		 ❌ 여행중에 남은기간 및 시간의 반납금은 환불이 되지 않습니다.<br><br>
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
