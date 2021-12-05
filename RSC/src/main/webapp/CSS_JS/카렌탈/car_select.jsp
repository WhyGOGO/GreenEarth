<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  	<script>
  		function btn_alert(clicked_id){
  			if (clicked_id==1)
  				alert("죄송합니다 고객님! 이 차량은 현재 예약 불가입니다.");
  		}
  		
		function printTerm()  {
			var RENTALSTART = document.getElementById('RENTALSTART').value;
			var RENTALEND = document.getElementById('RENTALEND').value;
			RENTALSTART = RENTALSTART.replaceAll("-","/");
			RENTALEND = RENTALEND.replaceAll("-","/");				// 날짜를 Date() 메소드에 맞게 형변환

			
			RENTALSTART = new Date(RENTALSTART);
			RENTALEND = new Date(RENTALEND);
	
			var differ = document.getElementById('RENTALTERM').value = (RENTALEND.getTime()-RENTALSTART.getTime())/ 1000 / 60 / 60 / 24 +1;
			var cost = <%=select_carInfo.getCarRentalCost()%> * differ;	
			var payday = new Date(RENTALSTART.getTime()-60000*2000);
			var payday1 = payday.toLocaleDateString()
			var payday2 = payday1.replaceAll('. ','/');	
			var payday3 = payday2.replaceAll('.','');	
			
			document.getElementById('RENTALCOST').value = cost;
			
			
			document.getElementById('RentalPayDate').value =payday3;
		}
		// 여기까지 날짜 계산 자바스크립트
		
		function printETCcost(){
			
			document.getElementById('RentalEtcCost').value = 30000;
		}//여기는 기타 청구내역에 값 넣기
		


		function set_disalble(){
			$('#forSelectBox').find(".Date_,button,.for_disable,.event,.form-check-input").attr("disabled",true);		
		}

	</script>
		
	<script src="http://code.jquery.com/jquery-latest.js">
	$(selecto).datepicker({
		  dateFormat: 'yy-mm-dd',
		  minDate: 0
		  maxDate: new Date('2021-12-31')
		});
	</script>