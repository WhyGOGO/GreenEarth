<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%@page import="beans_method.selectDB" %>
<%@page import="java.util.ArrayList" %>
<%@page import="beans.campDataBean" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정비소추가</title>

  <%@ include file="../../관리자페이지메뉴/managerMenu.jsp" %>	<!-- 메뉴 바  -->
<body>
  <main class="page-content">
 	<div class="container"></div> 
		<div class="input-form-backgroud row"> 
			<div class="input-form col-md-12 mx-auto"> 
				<h4 class="mb-3"> 정비소 이미지 추가</h4> <hr>
				
	<form method="post" action="fileupload.jsp" enctype="multipart/form-data">
		<input type="file" name="photo" required>		
		<input type="submit" value="upload">
	</form>
			</div>
		</div>	
	</main>
</body>
 </html>