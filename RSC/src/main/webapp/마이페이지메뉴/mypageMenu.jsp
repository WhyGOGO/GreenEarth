<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="beans_method.selectDB" %>
<%@ page import="beans.campDataBean" %>
<%@ page import="java.util.*" %>



			<!--  마이페이지 메뉴입니다. -->


<script src="https://code.jquery.com/jquery-2.2.4.min.js" ></script>

<link href="../CSS_JS/manager_me_page/my.css" rel="stylesheet" type="text/css">
<link href="../CSS_JS/table/table.css" rel="stylesheet" type="text/css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

</head>


 
 <body>
 <%@ include file="../세션/trySession.jsp"%>
 <%
 request.setCharacterEncoding("UTF-8");	

	selectDB sd = selectDB.getInstance();
	ArrayList<campDataBean> dtos = sd.selUser(email);
	
	if (dtos.size()!=0){
		campDataBean dto = dtos.get(0);
		String name = dto.getCustName();
 %>
<div class="page-wrapper chiller-theme toggled">
  <a id="show-sidebar" class="btn btn-sm btn-dark" href="#">
    <i class="fas fa-bars"></i>
  </a>
  <nav id="sidebar" class="sidebar-wrapper">
    <div class="sidebar-content">
      <div class="sidebar-brand">
        <a href="#">마이페이지</a>
        
        <div id="close-sidebar">
          <i class="fas fa-times"></i>
        </div>
        
      </div>
      <div class="sidebar-header">
        <div class="user-pic">
          <img class="img-responsive img-rounded" src="https://raw.githubusercontent.com/azouaoui-med/pro-sidebar-template/gh-pages/src/img/user.jpg" alt="User picture">         
        </div>
        <div class="user-info">
          <span class="user-name">
          	<strong><%=name %></strong> 님
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
            <span>일반</span>
          </li>
          <li class="sidebar-dropdown1">
            <a href="../이용안내/main/guide.jsp">
              <i class="fa fa-tachometer-alt"></i>
              <span>홈으로</span>
            </a>

          </li><li class="sidebar-dropdown1">
            <a href="myForm1.jsp">
              <i class="fa fa-tachometer-alt"></i>
              <span>대여현황</span>
            </a>

          </li>
          <li class="sidebar-dropdown1">
            <a href="myForm.jsp">
              <i class="fa fa-tachometer-alt"></i>
              <span>대여내역</span>
            </a>

          </li>
          <li class="sidebar-dropdown1">
            <a href="myForm2.jsp">
              <i class="fa fa-tachometer-alt"></i>
              <span>수리내역</span>
            </a>
          </li>

        </ul>
      </div>
      <!-- sidebar-menu  -->
    </div>
  </nav>
  <!-- sidebar-wrapper  -->
  <%}
  }
  
  %>
  