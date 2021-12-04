<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="beans.campDataBean"%>
<%@page import="beans_method.insertDB" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정비소 정보 추가</title>

<%@ include file="../../관리자페이지메뉴/managerMenu.jsp" %>	<!-- 메뉴 바  -->
  <%
 		 request.setCharacterEncoding("UTF-8");
		 String filename = request.getParameter("filename");

  %>

<main class="page-content">
    <div class="container">
      <h2>정비소 추가</h2>
      <hr> 
      	<form method="post" action="manager4_insert_pro.jsp" class="validation-form" novalidate >			<!-- 정보 보내는 부분 -->
				  	<div class="row"> 
						<div class="col-md-6 mb-3"> <label for="nickname">회사 이미지</label> 
							<input type="text" class="form-control" name="shopImage" value="<%=filename%>"  maxlength=10 readonly> 
						<div class="invalid-feedback"> 이미지를 추가해주세요. </div> 
						</div> 
					</div> 		
					<div class="row"> 
						<div class="mb-3"> <label for="nickname">정비소이름</label> 
							<input type="text" class="form-control" name="repairShopName" placeholder="홍길동" maxlength=10 required> 
						<div class="invalid-feedback"> 회사이름을 입력해주세요. </div> 
						</div> 
					</div>

					<div class="mb-3"> <label for="address">주소</label> 
						<input type="text" class="form-control"  name="member_post"	id="member_post" placeholder="우편번호"  onclick="findAddr()"   required>
						<input type="text" class="form-control"  name="member_addr"	id="member_addr" placeholder="서울특별시 강남구" readonly  required> 
						<div class="invalid-feedback"> 주소를 입력해주세요. </div> 
					</div> 
					<div class="mb-3"> 
						<label for="address2">상세주소<span class="text-muted">&nbsp;</span></label> 
						<input type="text" class="form-control" name="address2" id="address2" placeholder="상세주소를 입력해주세요." onkeyup='printName()' required> 
						<div class="invalid-feedback"> 상세주소를 입력해주세요 </div> 
					</div> 					
					<div class="row"> 
						<div class="mb-3"> <label for="nickname">전화번호</label> 
							<input type="text" class="form-control" name="repairShopCall" placeholder="010-0000-0000" maxlength=20 required> 
						<div class="invalid-feedback"> 전화번호를 입력해주세요. </div> 
						</div>
					</div> 
					<div class="row"> 
						<div class="mb-3"> <label for="nickname">매니저 이름</label> 
							<input type="text" class="form-control" name="repairManager" placeholder="홍길동"  maxlength=10 required> 
						<div class="invalid-feedback"> 이름을 입력해주세요. </div> 
						</div>
					</div>
					<div class="row"> 
						<div class="mb-3"> <label for="nickname">정비소 이메일</label> 
							<input type="text" class="form-control" name="repairManagerEmail" placeholder="hello@gmail.com"  maxlength=30 required> 
						<div class="invalid-feedback"> 이메일을 입력해주세요. </div> 
						</div>
					</div>  
					<div class="mb-3"> 
						<input type="text" name="repairShopAddress" id="repairShopAddress" /> <!--실질적인 주소 값부분 -->
					</div> 										 
					<button class="btn btn-primary btn-lg btn-block" type="submit">추가 하기</button>							
		</form>		
    </div>
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

			  document.getElementById("repairShopAddress").value =member_post+","+member_addr+","+address2;	//값 넣어주기
			}
	</script>    
    
    
    
</main>
</head>
<body>

</body>
</html>