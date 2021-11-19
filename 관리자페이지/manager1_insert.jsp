<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="beans.campDataBean"%>
<%@page import="beans_method.insertDB" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대여회사 정보 추가</title>

<%@ include file="../관리자페이지메뉴/managerMenu.jsp" %>	<!-- 메뉴 바  -->

<main class="page-content">
    <div class="container">
      <h2>대여회사 추가</h2>
      <hr>
      	<form method="post" action="manager1_insert_pro.jsp" class="validation-form" novalidate >			<!-- 정보 보내는 부분 -->
				 
					<div class="row"> 
						<div class="mb-3"> <label for="nickname">회사ID</label> 
							<input type="text" class="form-control" name="compId" maxlength=10 required> 
						<div class="invalid-feedback"> 회사ID를 입력해주세요. </div> 
						</div>
					</div> 
					<div class="row"> 
						<div class="mb-3"> <label for="nickname">회사이름</label> 
							<input type="text" class="form-control" name="compName" placeholder="홍길동" maxlength=10 required> 
						<div class="invalid-feedback"> 이름을 입력해주세요. </div> 
						</div> 
					</div>
					<div class="row"> 
						<div class="mb-3"> <label for="nickname">회사주소</label> 
							<input type="text" class="form-control" name="compAddress" placeholder="서울특별시" maxlength=50 required> 
						<div class="invalid-feedback"> 주소를 입력해주세요. </div> 
						</div> 
					</div>
					<div class="row"> 
						<div class="mb-3"> <label for="nickname">전화번호</label> 
							<input type="text" class="form-control" name="compCall" placeholder="010-0000-0000" maxlength=20 required> 
						<div class="invalid-feedback"> 전화번호를 입력해주세요. </div> 
						</div>
					</div> 
					<div class="row"> 
						<div class="mb-3"> <label for="nickname">매니저 이름</label> 
							<input type="text" class="form-control" name="compManager" placeholder="홍길동"  maxlength=10 required> 
						<div class="invalid-feedback"> 이름을 입력해주세요. </div> 
						</div>
					</div>
					<div class="row"> 
						<div class="mb-3"> <label for="nickname">회사 이메일</label> 
							<input type="text" class="form-control" name="compEmail" placeholder="hello@gmail.com"  maxlength=30 required> 
						<div class="invalid-feedback"> 이메일을 입력해주세요. </div> 
						</div>
					</div> 
					<div class="row"> 
						<div class="mb-3"> <label for="nickname">사진</label> 
							<input type="text" class="form-control" name="Image" placeholder="...jpg"  maxlength=10 required> 
						<div class="invalid-feedback"> 사진을 입력해주세요. </div> 
						</div>
					</div> 					 
					<button class="btn btn-primary btn-lg btn-block" type="submit">추가 하기</button>							
		</form>		
    </div>
</main>
</head>
<body>

</body>
</html>