<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>λ‘κ·ΈμΈ</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >

<link href="../CSS_JS/login/loginForm.css" rel="stylesheet" type="text/css">

</head>
		

 <body>
    <div class="login-page">
      <div class="form">
        <div class="login">
          <div class="login-header">
            <h1>π</h1>
            <h4>λ‘κ·ΈμΈ</h4>
          </div>
        </div>
        <form class="login-form" method="post" action="loginpro.jsp">
          <input type="text" name="custEmail" placeholder="κ³μ μ΄λ¦" required>
          <input type="password" name="passwd" placeholder="λΉλ°λ²νΈ" required>
          <button type="submit">λ‘κ·ΈμΈ</button>
        </form>
         <p class="message">μμ§ νμκ°μ μ νμ¨λμ? <a href="../νμκ°μ/register.jsp">κ³μ μ λ§λμΈμ.</a></p>
      </div>
    </div>
		<%  
			session.invalidate(); 
		 %>
</body>
</html>