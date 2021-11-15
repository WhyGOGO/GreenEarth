<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://code.jquery.com/jquery-2.2.4.min.js" ></script>

<link href="../CSS_JS/manager_me_page/my.css" rel="stylesheet" type="text/css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

</head>

																<!-- 관리자 페이지 메뉴 입니다. -->

 <body>
<div class="page-wrapper chiller-theme toggled">
  <a id="show-sidebar" class="btn btn-sm btn-dark" href="#">
    <i class="fas fa-bars"></i>
  </a>
  <nav id="sidebar" class="sidebar-wrapper">
    <div class="sidebar-content">
      <div class="sidebar-brand">
        <a href="../관리자페이지/manager.jsp">관리자 페이지</a>
        
        <div id="close-sidebar">
          <i class="fas fa-times"></i>
        </div>
        
      </div>
      <div class="sidebar-header">
        <div class="user-pic">
          <img class="img-responsive img-rounded" src="https://raw.githubusercontent.com/azouaoui-med/pro-sidebar-template/gh-pages/src/img/user.jpg" alt="User picture">         
        </div>
        <div class="user-info">
          <span class="user-name">이름
            <strong>성</strong>
          </span>
          <span class="user-status">
            <i class="fa fa-circle"></i>
          </span>
        </div>
      </div>
      <!-- sidebar-header  -->
    

      <div class="sidebar-menu">
        <ul>
          <li class="header-menu">
            <span>관리</span>
          </li>
          <li class="sidebar-dropdown1">
            <a href="../이용안내/main/guide.jsp">
              <i class="fa fa-tachometer-alt"></i>
              <span>홈으로</span>
            </a>
          </li>
          <li class="sidebar-dropdown1">
            <a href="../관리자페이지/manager.jsp">
              <i class="fa fa-tachometer-alt"></i>
              <span>대여회사 관리</span>
            </a>

          </li>
          <li class="sidebar-dropdown1">
            <a href="../관리자페이지/manager2.jsp">
              <i class="fa fa-tachometer-alt"></i>
              <span>캠핑카 관리</span>
            </a>
          </li>
          <li class="sidebar-dropdown1">
            <a href="../관리자페이지/manager3.jsp">
              <i class="fa fa-tachometer-alt"></i>
              <span>고객정보 관리</span>
            </a>
          </li>
          <li class="sidebar-dropdown1">
            <a href="../관리자페이지/manager4.jsp">
              <i class="fa fa-tachometer-alt"></i>
              <span>정비소 관리</span>
            </a>
          </li>
          <li class="sidebar-dropdown1">
            <a href="../관리자페이지/manager5.jsp">
              <i class="fa fa-tachometer-alt"></i>
              <span>캠핑카 정비 의뢰 및 결과 정보</span>
            </a>
          </li>                    
        </ul>
      </div>
      <!-- sidebar-menu  -->
    </div>
  </nav>
  <!-- sidebar-wrapper  -->