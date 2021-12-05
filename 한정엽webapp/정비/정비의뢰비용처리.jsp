<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="beans.campDataBean"%>
<%@page import="beans_method.deleteDB" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
<title>정비의뢰비용수정</title>

<%@ include file="../../관리자페이지메뉴/managerMenu.jsp" %>	<!-- 메뉴 바  -->

<% 
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="manager2" class="beans.campDataBean" scope="page"/>
<jsp:setProperty name="manager2" property="*" />
	

<main class="page-content">
    <div class="container">
      <h2>비용수정</h2>
      <hr> 
          <div class="col-9">
      <form method="post" action="정비의뢰비용처리pro.jsp">
        <div class="mb-3">
          <label for="id" class="form-label">정비비용을입력해주세요</label>
          <input type="text" class="form-control" name="repairCost" value="">
          <input type="hidden" class ="form-control" name="repairNumber" value="<%=manager2.getRepairNumber()%>">
        </div>
        
        <div class="mb-3">
          <input type="submit" class="btn btn-primary" value="입력완료">
        </div>
      </form>
    </div>
    </div>
</main>
</head>
<body>

</body>
</html>