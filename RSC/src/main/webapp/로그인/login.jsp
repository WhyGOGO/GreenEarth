<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >

<link href="../CSS_JS/login/loginForm.css" rel="stylesheet" type="text/css">

</head>
		

 <body>
    <div class="login-page">
      <div class="form">
        <div class="login">
          <div class="login-header">
            <h1>🚙</h1>
            <h4>로그인</h4>
          </div>
        </div>
        <form class="login-form" method="post" action="loginpro.jsp">
          <input type="text" name="custEmail" placeholder="계정이름" required>
          <input type="password" name="passwd" placeholder="비밀번호" required>
          <button type="submit">로그인</button>
        </form>
         <p class="message">아직 회원가입 안 하셨나요? <a href="../회원가입/register.jsp">계정을 만드세요.</a></p>
      </div>
    </div>
		<%  
			session.invalidate(); 
		 %>
</body>
</html>