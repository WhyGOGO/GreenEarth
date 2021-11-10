<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>RSC 메인 홈페이지</title>
  	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/carousel/">
    <script src="https://kit.fontawesome.com/bed463cd85.js" crossorigin="anonymous"></script>
    <link href="UI.css" rel="stylesheet" type="text/css">
    

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
<div  style="position: relative; z-index: 2;">
   <nav class="navbar">
        <div class="navbar_logo">
            <i class="fas fa-angry"></i>
            <a href="">RSC</a>
        </div>
        <div class="navbar_menu">
            <ul>
                <li>
                    <a href="">이용안내</a>
                    <ul>
                        <li><a href="">대여하는법</a></li>
                        <li><a href="">주의사항</a></li>
                        <li><a href="">가격안내</a></li>  
                    </ul>
                </li>
                <li>
                    <a href="">대여사</a>
                    <ul>
                        <li><a href="">회사정보</a></li>
                        <li><a href="">회사조회</a></li>
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
                <li><a href="">조회</a></li>
                <li><a href="">예약</a></li>
            </ul>
        </div>
        <ul class="navbar_icons">
            <p><a href="../login/login.jsp">로그인</a></p>
        </ul>
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
      <div class="carousel-item active">
        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777" style='overflow: hidden;'/>
          <img style='object-fit: cover;' src="../images/campImgBus2.jpg">
        </svg>
        <div class="container">
          <div class="carousel-caption text-start">
            <h1>Another example headline.</h1>
            <p>Some representative placeholder content for the second slide of the carousel.</p>
            <p><a class="btn btn-lg btn-primary" href="#">Learn more</a></p>
          </div>
        </div>

      </div>
      <div class="carousel-item">
        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"/>
          <img style='object-fit: cover;' src="../images/campImgBus1.jpg">
        </svg>

        <div class="container">
          <div class="carousel-caption">
            <h1>Another example headline.</h1>
            <p>Some representative placeholder content for the second slide of the carousel.</p>
            <p><a class="btn btn-lg btn-primary" href="#">Learn more</a></p>
          </div>
        </div>
      </div>
      <div class="carousel-item">
        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"/>
          <img style='object-fit: cover;' src="../images/campImgNight1.jpg">
        </svg>

        <div class="container">
          <div class="carousel-caption text-end">
            <h1>One more for good measure.</h1>
            <p>Some representative placeholder content for the third slide of this carousel.</p>
            <p><a class="btn btn-lg btn-primary" href="#">Browse gallery</a></p>
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
  </div>

  <!--검색창-->
  <nav class="nav justify-content-right bg-light" style="margin-left: 5%; margin-right: 5%;" >
    <div class="container-fluid" style="margin-left: 3%;">
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="캠핑대여사 검색" style="width:37%;" aria-label="Search">
        <input type='date' id = 'currentDate' name='resStart' style="width: 20%;" maxlength="11" value=""/>
        <div class="selectTime">
          <select id="mainScSTime"  style="height: 100%;">
                                                                              <option value='00:00' >00:00</option>
                                              <option value='00:30' >00:30</option>
                                              <option value='01:00' >01:00</option>
                                              <option value='01:30' >01:30</option>
                                              <option value='02:00' >02:00</option>
                                              <option value='02:30' >02:30</option>
                                              <option value='03:00' >03:00</option>
                                              <option value='03:30' >03:30</option>
                                              <option value='04:00' >04:00</option>
                                              <option value='04:30' >04:30</option>
                                              <option value='05:00' >05:00</option>
                                              <option value='05:30' >05:30</option>
                                              <option value='06:00' >06:00</option>
                                              <option value='06:30' >06:30</option>
                                              <option value='07:00' >07:00</option>
                                              <option value='07:30' >07:30</option>
                                              <option value='08:00' >08:00</option>
                                              <option value='08:30' >08:30</option>
                                              <option value='09:00' >09:00</option>
                                              <option value='09:30' >09:30</option>
                                              <option value='10:00' selected=selected>10:00</option>
                                              <option value='10:30' >10:30</option>
                                              <option value='11:00' >11:00</option>
                                              <option value='11:30' >11:30</option>
                                              <option value='12:00' >12:00</option>
                                              <option value='12:30' >12:30</option>
                                              <option value='13:00' >13:00</option>
                                              <option value='13:30' >13:30</option>
                                              <option value='14:00' >14:00</option>
                                              <option value='14:30' >14:30</option>
                                              <option value='15:00' >15:00</option>
                                              <option value='15:30' >15:30</option>
                                              <option value='16:00' >16:00</option>
                                              <option value='16:30' >16:30</option>
                                              <option value='17:00' >17:00</option>
                                              <option value='17:30' >17:30</option>
                                              <option value='18:00' >18:00</option>
                                              <option value='18:30' >18:30</option>
                                              <option value='19:00' >19:00</option>
                                              <option value='19:30' >19:30</option>
                                              <option value='20:00' >20:00</option>
                                              <option value='20:30' >20:30</option>
                                              <option value='21:00' >21:00</option>
                                              <option value='21:30' >21:30</option>
                                              <option value='22:00' >22:00</option>
                                              <option value='22:30' >22:30</option>
                                              <option value='23:00' >23:00</option>
                                              <option value='23:30' >23:30</option>
                                          </select>
        </div>
        <span style="width: 2.5%"> <br>부터 </span>
        
        <input type='date' id = 'currentDate2' name='resEnd' style="width:20%" maxlength="11" value=""/>  
        <div class="selectTime" >
          <select id="mainScSTime" style="height: 100%;">
                                                                              <option value='00:00' >00:00</option>
                                              <option value='00:30' >00:30</option>
                                              <option value='01:00' >01:00</option>
                                              <option value='01:30' >01:30</option>
                                              <option value='02:00' >02:00</option>
                                              <option value='02:30' >02:30</option>
                                              <option value='03:00' >03:00</option>
                                              <option value='03:30' >03:30</option>
                                              <option value='04:00' >04:00</option>
                                              <option value='04:30' >04:30</option>
                                              <option value='05:00' >05:00</option>
                                              <option value='05:30' >05:30</option>
                                              <option value='06:00' >06:00</option>
                                              <option value='06:30' >06:30</option>
                                              <option value='07:00' >07:00</option>
                                              <option value='07:30' >07:30</option>
                                              <option value='08:00' >08:00</option>
                                              <option value='08:30' >08:30</option>
                                              <option value='09:00' >09:00</option>
                                              <option value='09:30' >09:30</option>
                                              <option value='10:00' selected=selected>10:00</option>
                                              <option value='10:30' >10:30</option>
                                              <option value='11:00' >11:00</option>
                                              <option value='11:30' >11:30</option>
                                              <option value='12:00' >12:00</option>
                                              <option value='12:30' >12:30</option>
                                              <option value='13:00' >13:00</option>
                                              <option value='13:30' >13:30</option>
                                              <option value='14:00' >14:00</option>
                                              <option value='14:30' >14:30</option>
                                              <option value='15:00' >15:00</option>
                                              <option value='15:30' >15:30</option>
                                              <option value='16:00' >16:00</option>
                                              <option value='16:30' >16:30</option>
                                              <option value='17:00' >17:00</option>
                                              <option value='17:30' >17:30</option>
                                              <option value='18:00' >18:00</option>
                                              <option value='18:30' >18:30</option>
                                              <option value='19:00' >19:00</option>
                                              <option value='19:30' >19:30</option>
                                              <option value='20:00' >20:00</option>
                                              <option value='20:30' >20:30</option>
                                              <option value='21:00' >21:00</option>
                                              <option value='21:30' >21:30</option>
                                              <option value='22:00' >22:00</option>
                                              <option value='22:30' >22:30</option>
                                              <option value='23:00' >23:00</option>
                                              <option value='23:30' >23:30</option>
                                          </select>
        </div>
        <span style="width: 2.5%"><br>까지</span>
        <button class="btn btn-outline-success" type="submit" style="width: 5%;">검색</button>
      </form>
    </div>
  </nav>


  
</main>


    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

      
  </body>
</html>

<script>
  document.getElementById('currentDate').value = new Date().toISOString().substring(0, 10);;

  document.getElementById('currentDate2').value = new Date().toISOString().substring(0, 10);;
</script>
