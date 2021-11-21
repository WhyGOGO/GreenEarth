<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.io.File" %>   
<%@page import = "com.oreilly.servlet.MultipartRequest" %>   
<%@page import = "
com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%
			String filename="";
			int sizeLimit = 15*200*200;
			
			String realPath =
"C:/_server/eclipse_workspace/rcs/src/main/webapp/이미지/대여사이미지/";
			
			MultipartRequest multipartRequest = null;
			multipartRequest = new MultipartRequest(request,realPath,sizeLimit,"utf-8",new DefaultFileRenamePolicy());
			
			filename = 
multipartRequest.getFilesystemName("photo");
		%>
		폼에서 전송된 원래 파일명 :
<%=multipartRequest.getOriginalFileName("photo") %> <br />
		파일명 : <%=filename %> <br />
		
<script>
	location.href='manager4_insert.jsp?filename=<%=filename%>';

</script>
</body>
</html>