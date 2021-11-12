<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>이용안내</title>
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
   <a class="menu-link" href="guide2.jsp">주의사항</a>
   <a class="menu-link is-active" href="">가격사항</a>		
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
     <div class="content-section-title">가격사항</div>
     <div class="apps-card">
      <div class="app-card">
       		<table class="table table-bordered" style="color:white;">
				<th>차종</th>
				<th>평일</th>
				<th>휴일</th>
				<tr>
				    <td>안산점</td>
				    <td>10,000원</td>
				    <td>14,000원</td>	    
				</tr>
				<tr>
				    <td>화성점</td>
				    <td>9,000원</td>
				    <td>11,000원</td>	    
				</tr>				
				<tr>
				    <td>광명점</td>
				    <td>10,000원</td>
				    <td>14,000원</td>	    
				</tr>
		    </table>
		    
		    <caption>화성점</caption>    
       		<table class="table table-bordered" style="color:white;">
				<th colspan="2">시즌</th>
				<th>평일</th>
				<th>휴일</th>
				<tr>
				    <td rowspan="2">1박2일</td>
				    <td>24시간</td>
				    <td>20만원</td>
				    <td>25만원</td>	     
				</tr>
				<tr>				
				    <td>36시간</td>
				    <td>30만원</td>
				    <td>38만원</td>	     
				</tr>
				<tr>
				    <td rowspan="2">2박3일</td>
				    <td>48시간</td>
				    <td>40만원</td>
				    <td>50만원</td>	     
				</tr>
				<tr>
				    <td>60시간</td>
				    <td>50만원</td>
				    <td>62만원</td>	     
				</tr>
				<tr>
				    <td rowspan="2">3박4일</td>
				    <td>72시간</td>
				    <td>60만원</td>
				    <td>72만원</td>	     
				</tr>
				<tr>
				    <td>84시간</td>
				    <td>70만원</td>
				    <td>82만원</td>	     
				</tr>																		
		    </table>
		      
       	<caption>안산점</caption>		      
		<table class="table table-bordered" style="color:white;">
				<th colspan="2">시즌</th>
				<th>평일</th>
				<th>휴일</th>
				<tr>
				    <td rowspan="2">1박2일</td>
				    <td>24시간</td>
				    <td>24만원</td>
				    <td>33만원</td>	     
				</tr>
				<tr>				
				    <td>36시간</td>
				    <td>36만원</td>
				    <td>50만원</td>	     
				</tr>
				<tr>
				    <td rowspan="2">2박3일</td>
				    <td>48시간</td>
				    <td>48만원</td>
				    <td>66만원</td>	     
				</tr>
				<tr>
				    <td>60시간</td>
				    <td>60만원</td>
				    <td>84만원</td>	     
				</tr>
				<tr>
				    <td rowspan="2">3박4일</td>
				    <td>72시간</td>
				    <td>72만원</td>
				    <td>95만원</td>	     
				</tr>
				<tr>
				    <td>84시간</td>
				    <td>84만원</td>
				    <td>105만원</td>	     
				</tr>																				
		    </table>
		    
		    
		    
       	<caption>광명점</caption>		      
		<table class="table table-bordered" style="color:white;">
				<th colspan="2">시즌</th>
				<th>평일</th>
				<th>휴일</th>
				<tr>
				    <td rowspan="2">1박2일</td>
				    <td>24시간</td>
				    <td>24만원</td>
				    <td>33만원</td>	     
				</tr>
				<tr>				
				    <td>36시간</td>
				    <td>36만원</td>
				    <td>50만원</td>	     
				</tr>
				<tr>
				    <td rowspan="2">2박3일</td>
				    <td>48시간</td>
				    <td>48만원</td>
				    <td>66만원</td>	     
				</tr>
				<tr>
				    <td>60시간</td>
				    <td>60만원</td>
				    <td>84만원</td>	     
				</tr>
				<tr>
				    <td rowspan="2">3박4일</td>
				    <td>72시간</td>
				    <td>72만원</td>
				    <td>95만원</td>	     
				</tr>
				<tr>
				    <td>84시간</td>
				    <td>84만원</td>
				    <td>105만원</td>	     
				</tr>																				
		    </table>			    				 		    		      
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
