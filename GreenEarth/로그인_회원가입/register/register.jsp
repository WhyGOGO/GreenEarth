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
			
				<form class="validation-form" novalidate>
				 
					<div class="row"> 
						<div class="col-md-6 mb-3"> 
							<label for="name">이름</label> 
							<input type="text" class="form-control" id="name" placeholder="" value="" required> 
							<div class="invalid-feedback"> 이름을 입력해주세요. </div> 
						</div> <div class="col-md-6 mb-3"> <label for="nickname">별명</label> 
						<input type="text" class="form-control" id="nickname" placeholder="" value="" required> 
						<div class="invalid-feedback"> 별명을 입력해주세요. </div> </div> 
					</div> 
					
					<div class="mb-3"> 
						<label for="email">이메일</label> <input type="email" class="form-control" id="email" placeholder="you@example.com" required> 
						<div class="invalid-feedback"> 이메일을 입력해주세요. </div> 
					</div> 
					<div class="mb-3"> <label for="address">주소</label> 
						<input type="text" class="form-control" id="member_post" placeholder="우편번호 (Click me)" readonly onclick="findAddr()" required>
						<input type="text" class="form-control" id="member_addr" placeholder="서울특별시 강남구" readonly required> 
						<div class="invalid-feedback"> 주소를 입력해주세요. </div> 
					</div> <div class="mb-3"> 
						<label for="address2">상세주소<span class="text-muted">&nbsp;(필수 아님)</span></label> 
						<input type="text" class="form-control" id="address2" placeholder="상세주소를 입력해주세요."> 
					</div> 
					<div class="row"> 
						<div class="col-md-8 mb-3"> <label for="root">가입 경로</label> 
							<select class="custom-select d-block w-100" id="root"> <option value=""></option> 
								<option>포털사이트</option> 
								<option>유튜브</option>
								<option>검색</option>
								<option>광고</option>
							</select> 
							<div class="invalid-feedback"> 가입 경로를 선택해주세요. </div> 
						</div> 
						<div class="col-md-4 mb-3"> <label for="code">추천인 코드</label> 
							<input type="text" class="form-control" id="code" placeholder="" required> 
							<div class="invalid-feedback"> 추천인 코드를 입력해주세요. </div> 
						</div>

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
				<a href="javascript:history.back()" style="color:black;">
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
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>	<!--카카오 api-->
</body>
</html>