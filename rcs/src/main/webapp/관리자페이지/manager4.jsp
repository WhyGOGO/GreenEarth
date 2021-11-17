<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%@page import="beans_method.selectDB" %>
<%@page import="java.util.ArrayList" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정비소</title>

  <%@ include file="../관리자페이지메뉴/managerMenu.jsp" %>	<!-- 메뉴 바  -->
  
  <main class="page-content">
    <div class="container">
      <h2>정비소</h2>
      <hr>
      
<table class="table table-success table-striped">
    <tr>
      <th scope="row">정비소명</th>
      <td colspan="2" class="table-active">주소</td>
      <td>전화번호</td>
      <td>담당자 성명</td>
      <td>담당자이메일 정보</td>
    </tr>
  </tbody>  
</table>     
      
      </div>
      
      
      <hr>

      <footer class="text-center">
        <div class="mb-2">
          <small>
            © 2021 데이터베이스 과제 <a target="_blank" rel="noopener noreferrer" href="https://azouaoui.netlify.com">             
            </a>
          </small>
        </div>


      </footer>

    </div>
  </main>
  <!-- page-content" -->
</div>
<!-- page-wrapper -->ㄴ
 </body>
 </html>