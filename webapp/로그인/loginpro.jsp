<%@page import="beans.campDataBean"%>
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
 		
 		String id = request.getParameter("custEmail");
 		String passwd = request.getParameter("passwd");
 		session.setAttribute("email", id);							

	%>

	
	
	<%
		
		int answer=0;
		LogonDB sd = LogonDB.getInstance(); 

		answer=sd.userCheck(id,passwd);	

	%>
	<script>
		if(<%=answer%>==1){location.href="../이용안내/main/guide.jsp";}
		else if(<%=answer%>==-1){alert('아이디가 틀렸습니다.'); location.href="login.jsp";}
		else if(<%=answer%>==0){alert('비밀번호가 틀렸습니다.'); location.href="login.jsp";}

	</script>
</body>
</body>
</html>