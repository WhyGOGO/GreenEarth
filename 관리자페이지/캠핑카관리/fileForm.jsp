<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>캠핑카이미지추가</title>
</head>
<body>
	<form method="post" action="fileupload.jsp" enctype="multipart/form-data">
		<input type="file" name="photo"/>		
		<input type="submit" value="upload" />
	</form>
	
	<!-- https://juyoungit.tistory.com/183 참고해서 만듬 -->
</body>
</html>