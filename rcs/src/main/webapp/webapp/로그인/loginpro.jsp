<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="beans_method.LogonDB" %>
<%@page import="javax.servlet.http.HttpSession;"%>
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

		
%>	
	<script>
		if(<%=answer%>==1){
			location.href="../이용안내/main/guide.jsp";			
		}
		else if(<%=answer%>==-1){alert('아이디가 틀렸습니다.'); location.href="login.jsp";}
		else if(<%=answer%>==0){alert('비밀번호가 틀렸습니다.'); location.href="login.jsp";}

	</script>
	
</body>
</body>
</html>