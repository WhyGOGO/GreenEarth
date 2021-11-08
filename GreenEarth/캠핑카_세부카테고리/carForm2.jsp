<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>렌트가능 캠핑카</title>
<link href="car.css" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-2.2.4.min.js" ></script>
<script src=cars.js></script>

</head>

<body>
<div class="video-bg">
 <video width="320" height="240" autoplay loop muted>
  <source src="https://assets.codepen.io/3364143/7btrrd.mp4" type="video/mp4">

</video>
</div>
<div class="dark-light">
    <svg viewBox="0 0 24 24" stroke="currentColor" stroke-width="1.5" fill="none" stroke-linecap="round" stroke-linejoin="round">
     <path d="M21 12.79A9 9 0 1111.21 3 7 7 0 0021 12.79z" /></svg>
   </div>
<div class="app">
 <div class="header">
  <div class="menu-circle"></div>
  <div class="header-menu">
   <a class="menu-link" href="carForm.jsp">캠핑카 라인업</a>
   <a class="menu-link is-active" href="">렌트 가능 캠핑카</a>
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
       <svg viewBox="0 0 512 512">
       </svg>
     특별한 경험, 저희가 만들어 드리겠습니다.
      </h3>
     </div>

    </div>
    <div class="content-section">
     <div class="content-section-title">차량</div>
     <ul>
      <li class="adobe-product">
       <div class="products">
        차량1
       </div>
       <span class="status">
        <span class="status-circle green"></span>
        이용가능</span>
       <div class="button-wrapper">
        <button class="content-button status-button">예약</button>
       </div>
      </li>
      <li class="adobe-product">
       <div class="products">
       차량2
       </div>
       <span class="status">
        <span class="status-circle"></span>
        이용 불가능</span>
       <div class="button-wrapper">
        <button class="content-button status-button">예약</button>
       </div>
      </li>
     </ul>
    </div>

   </div>
  </div>
 </div>
 <div class="overlay-app"></div>
</div>

</body>
</html>