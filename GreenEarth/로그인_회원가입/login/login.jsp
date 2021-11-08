<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<link href="loginForm.css" rel="stylesheet" type="text/css">

</head>
<body>
  <body>
    <div class="login-page">
      <div class="form">
        <div class="login">
          <div class="login-header">
            <h1>🚙</h1>
            <h4>로그인</h4>
          </div>
        </div>
        <form class="login-form">
          <input type="text" placeholder="계정이름"/>
          <input type="password" placeholder="비밀번호"/>
          <button>로그인</button>
          <p class="message">아직 회원가입 안 하셨나요? <a href="../register/register.jsp">계정을 만드세요.</a></p>
        </form>
      </div>
    </div>
</body>
</body>
</html>