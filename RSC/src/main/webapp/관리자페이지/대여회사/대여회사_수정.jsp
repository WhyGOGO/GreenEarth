<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%@page import="beans_method.selectDB" %>
<%@page import="java.util.ArrayList" %>
<%@page import="beans.campDataBean" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회사추가</title>

  <%@ include file="../../관리자페이지메뉴/managerMenu.jsp" %>	<!-- 메뉴 바  -->
  <%
 		 request.setCharacterEncoding("UTF-8");
  %>
  <jsp:useBean id="update_comp" class="beans.campDataBean"/>
  <jsp:setProperty property="*" name="update_comp"/>
  
  <main class="page-content">
 <div class="container"> 
		<div class="input-form-backgroud row"> 
			<div class="input-form col-md-12 mx-auto"> 
				<h4 class="mb-3">대여 회사 추가하기</h4> <hr>

				<form method="post" action="대여회사_추가Pro.jsp" class="validation-form" novalidate >			<!-- 정보 보내는 부분 -->
					<div class="row"> 
						<div class="col-md-6 mb-3"> <label for="nickname">회사 이미지</label> 
							<input type="file" class="form-control" name="IMAGE" value="<%=update_comp.getIMAGE()%>"  maxlength=10 required> 
						<div class="invalid-feedback"> 이미지는 다시 추가해주세요. </div> 
						</div> 
					</div> 				 
					<div class="row"> 
						<div class="col-md-6 mb-3"> <label for="nickname">회사 이름</label> 
							<input type="text" class="form-control" name="compName" placeholder="홍길동"  maxlength=10 value="<%=update_comp.getCompName()%>" required> 
						<div class="invalid-feedback"> 회사 이름 입력해주세요. </div> 
						</div> 
					</div> 
					<div class="row"> 
				
						<div class="col-md-6 mb-3"> 
							<label for="name">담당자 핸드폰 번호</label> 
							<input type="text" class="form-control" name="compCall" placeholder="010-0000-0000" value="<%=update_comp.getCompCall()%>" maxlength=13 required> 
							<div class="invalid-feedback"> 핸드폰번호를 입력해주세요. </div> 
						</div> 

					</div> 		
					<div class="row"> 

						<div class="col-md-6 mb-3"> 
							<label for="nickname">담당자 이름</label> 
							<input type="text" class="form-control" name="compManager" placeholder="최대 10자리"  value="<%=update_comp.getCompManager()%>" maxlength=10 required> 
						<div class="invalid-feedback"> 비밀번호를 입력해주세요. </div> 
						</div> 
					</div> 									
					<div class="mb-3"> 
						<label for="email">담당자 이메일</label> 
						<input type="email" class="form-control" name="compEmail" placeholder="Hello@Gmail.com" value="<%=update_comp.getCompEmail()%>" maxlength=254 required> 
						<div class="invalid-feedback"> 이메일을 입력해주세요. </div> 
					</div> 					
				
					

					<div class="mb-3"> <label for="address">주소</label> 
						<input type="text" class="form-control"  name="member_post"	id="member_post" placeholder="우편번호"  onclick="findAddr()"   required>
						<input type="text" class="form-control"  name="member_addr"	id="member_addr" placeholder="서울특별시 강남구" readonly  required> 
						<div class="invalid-feedback"> 주소는 다시 입력해주세요. </div> 
					</div> 
					<div class="mb-3"> 
						<label for="address2">상세주소<span class="text-muted">&nbsp;</span></label> 
						<input type="text" class="form-control" name="address2" id="address2" placeholder="상세주소를 입력해주세요." onkeyup='printName()' required> 
						<div class="invalid-feedback"> 상세주소는 다시 입력해주세요 </div> 
					</div> 
					
					<div class="mb-3"> 
						<input type="hidden" name="compAddress" value="<%=update_comp.getCompAddress()%>" id="custAddress" /> <!--실질적인 주소 값부분 -->
					</div> 					
					
					
					<hr class="mb-4"> 
					<input type="hidden" value="<%=update_comp.getCompId()%>">
					<div class="mb-4"></div> 
					<button class="btn btn-primary btn-lg btn-block" type="submit">수정완료</button>				
				</form> 
				
			</div> 
		</div> 
		<footer class="my-3 text-center text-small"> 
			<p class="mb-1">
				<a href="대여회사.jsp" style="color:black;">
					뒤로가기
				</a>
			</p> 
		</footer> 
	</div> 
	
      <hr>
      <footer class="text-center">
        <div class="mb-2">
          <small>
            © 2021 데이터베이스 과제 <a target="_blank" rel="noopener noreferrer" href="https://azouaoui.netlify.com">             
            </a>
          </small>
        </div>
      </footer>

	<script> 
		window.addEventListener('load', () => { 
				const forms = document.getElementsByClassName('validation-form');
				Array.prototype.filter.call(forms, (form) => { 
					form.addEventListener('submit', function (event) {
						if (form.checkValidity() === false) { 
							event.preventDefault(); event.stopPropagation(); 
						} form.classList.add('was-validated'); 
					}, false);
				}); 
		}, false); 
	</script>
	<script>
	function findAddr(){
		new daum.Postcode({
	        oncomplete: function(data) {
	        	
	        	console.log(data);
	        	
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
	            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	            var roadAddr = data.roadAddress; // 도로명 주소 변수
	            var jibunAddr = data.jibunAddress; // 지번 주소 변수
	            // 우편번호와 주소 정보를 해당 필드에 넣는다.
	            document.getElementById('member_post').value = data.zonecode;
	            if(roadAddr !== ''){
	                document.getElementById("member_addr").value = roadAddr;
	            } 
	            else if(jibunAddr !== ''){
	                document.getElementById("member_addr").value = jibunAddr;
	            }
	        }
	    }).open();
	}
	</script>	 
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
	
	<script>
		function printName()  {
			  const member_post = document.getElementById('member_post').value;		//변수 선언
			  const member_addr = document.getElementById('member_addr').value;
			  const address2 = document.getElementById('address2').value;

			  document.getElementById("custAddress").value =member_post+","+member_addr+","+address2;	//값 넣어주기
			}
	</script>
  </main>
  <!-- page-content" -->

<!-- page-wrapper -->
 </body>
 </html>