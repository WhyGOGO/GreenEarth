<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="beans_method.LogonDB" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<link href="loginForm.css" rel="stylesheet" type="text/css">

</head>
<body>
 	<%
		request.setCharacterEncoding("UTF-8");
	
		String email =request.getParameter("email");
		String passwd =request.getParameter("passwd");

		
		
		LogonDB sd = LogonDB.getInstance(); //	

		int answer=sd.userCheck(email,passwd);	

	
		if(answer==1){
			session.setAttribute("email", email);
			%>
			<script>
				alert('로그인이 승인되었습니다.);
			</script><% 
			response.sendRedirect("../이용안내/guide.jsp");
		}
		else if(answer==-1){
			%>
			<script>
			alert('아이디가 틀렸습니다.'); 
			location.href="login.jsp";
			</script><% 
		}
		else if(answer==0){
			%>
			<script>
			alert('비밀번호가 틀렸습니다.'); 
			location.href="login.jsp";
			</script><% 
		}
%>
	
</body>
</body>
</html>