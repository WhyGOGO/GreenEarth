<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정비소 삭제</title>

<%@ include file="../관리자페이지메뉴/managerMenu.jsp" %>	<!-- 메뉴 바  -->

<main class="page-content">
    <div class="container">
      <h2>정비소 삭제</h2>
      <hr>
          <div class="col-9">
      <form method="post" action="manager1_delete_pro.jsp">
        <div class="mb-3">
          <label for="id" class="form-label">회사ID</label>
          <input type="text" class="form-control" name="id" id="id"  maxlength="50">
        </div>
        
        <div class="mb-3">
          <input type="submit" class="btn btn-primary" value="입력완료">
        </div>
      </form>
    </div>
    </div>
</main>
</head>
<body>

</body>
</html>