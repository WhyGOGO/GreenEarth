<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<link href="registerForm.css" rel="stylesheet" type="text/css">

</head>
<body> 
	<div class="container"> 
		<div class="input-form-backgroud row"> 
			<div class="input-form col-md-12 mx-auto"> 
				<h4 class="mb-3">회원가입</h4> 
			
				<form method="post" action="registerPro.jsp" class="validation-form" novalidate >			<!-- 정보 보내는 부분 -->
				 
					<div class="row"> 
						<div class="col-md-6 mb-3"> <label for="nickname">이름</label> 
							<input type="text" class="form-control" name="custName" placeholder="홍길동"  maxlength=10 required> 
						<div class="invalid-feedback"> 이름을 입력해주세요. </div> 
						</div> 
					</div> 
					<div class="row"> 
						<div class="col-md-6 mb-3"> <label for="nickname">면허증번호</label> 
							<input type="text" class="form-control" name="licenseNumber" placeholder="11-111111-11"   maxlength=15 required> 
						<div class="invalid-feedback"> 면허증번호 입력해주세요. </div> 
						</div> 					
						<div class="col-md-6 mb-3"> 
							<label for="name">핸드폰번호</label> 
							<input type="text" class="form-control" name="custCall" placeholder="010-0000-0000" maxlength=13 required> 
							<div class="invalid-feedback"> 핸드폰번호를 입력해주세요. </div> 
						</div> 

					</div> 		
								
					<div class="mb-3"> 
						<label for="email">이메일</label> 
						<input type="email" class="form-control" name="custEmail" placeholder="Hello@Gmail.com" maxlength=254 required> 
						<div class="invalid-feedback"> 이메일을 입력해주세요. </div> 
					</div> 					
					<div class="row"> 

						<div class="col-md-6 mb-3"> 
							<label for="nickname">비밀번호</label> 
							<input type="text" class="form-control" name="passwd" placeholder="최대 10자리"  maxlength=10 required> 
						<div class="invalid-feedback"> 비밀번호를 입력해주세요. </div> 
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
					
					<div class="mb-3"> 
						<input type="hidden" name="custAddress" id="custAddress" /> <!--실질적인 주소 값부분 -->
					</div> 					
			
					
					<hr class="mb-4"> 
					<div class="custom-control custom-checkbox"> 
						<input type="checkbox" class="custom-control-input" id="aggrement" required> 
						<label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label> 					
					</div> 
					<div class="mb-4"></div> 
					<button class="btn btn-primary btn-lg btn-block" type="submit">가입 완료</button>				
				</form> 
			</div> 
		</div> 
		<footer class="my-3 text-center text-small"> 
			<p class="mb-1">
				<a href="../로그인/login.jsp" style="color:black;">
					🐸 다시 로그인
				</a>
			</p> 
		</footer> 
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

			  document.getElementById("custAddress").value =member_post+","+member_addr+","+address2;	//값 넣어주기
			}
	</script>
	
</body>
</html>