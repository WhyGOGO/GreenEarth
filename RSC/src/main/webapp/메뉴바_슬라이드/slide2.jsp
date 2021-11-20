<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
        
    													<!-- 홈페이지 중간 슬라이드 입니다.  -->
    
    
    <link href="../../CSS_JS/slider/carousel.css" rel="stylesheet">    
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
          <img style='object-fit: cover;' src="../../이미지/슬라이드이미지/repairshop1.jpg">
        </svg>
        <div class="container" >
          <div class="carousel-caption" style="font-weight:bold; color:white;">
            <div style="background-color:black; width:600px; opacity:0.8">
	            <h1>최고의 장비!</h1>
	            <p>최고의 서비스제공!</p>       
	        </div>
          </div>
        </div>

      </div>
      <div class="carousel-item">
        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"/>
          <img style='object-fit: cover;' src="../../이미지/슬라이드이미지/repairshop2.jpg">
        </svg>

        <div class="container">
          <div class="carousel-caption" >
           <div style="background-color:black; width:600px; opacity:0.8">
            <h1>정비소,</h1>
            <p >간편하게 예약 후 바로 정비받으세요!</p>
           </div>
          </div>
        </div>
      </div>
      <div class="carousel-item" >
        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"/>
          <img style='object-fit: cover;' src="../../이미지/슬라이드이미지/repairshop3.jpg">
        </svg>

        <div class="container" >
          <div class="carousel-caption text-end" >
            <h1>언제나</h1>
            <p>예약이 가능하고 자유롭게 예약하여 정비를 받을 수 있습니다!</p>
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
  
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>