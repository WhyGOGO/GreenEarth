<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="beans_method.selectDB" %>
<%@ page import="beans.campDataBean" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수리내역</title>

<%@ include file="../마이페이지메뉴/mypageMenu.jsp" %>	<!-- 메뉴 바  -->

<%
	request.setCharacterEncoding("UTF-8");	

	selectDB sd = selectDB.getInstance();
	ArrayList<campDataBean> dtos = sd.selVRepair(email); 
	
	
	if (dtos.size()!=0){	
		
%>

<main class="page-content">
    <div class="container">
      <h2>정비내역</h2>
      <hr>
      
			<table class="table table-success table-striped">
			    <tr>
				    <th scope="row">정비번호</th>
					<td>차량번호</td>
					<td colspan="2" class="table-active">대여차량</td>
					<td>정비소</td>
					<td>정비내용</td>
					<td>전화번호</td>
					<td>정비비용</td>
			    </tr>
			    <% for (int i=0; i<dtos.size(); i++){ 
			    	
			    	campDataBean dto = dtos.get(i); 
			    	
			    	int r_num = dto.getRepairNumber();
			    	String c_num = dto.getCampCarNumber();
			    	String c_name = dto.getCampCarName();
			    	String r_shop = dto.getRepairShopName();
			    	String r_his = dto.getRepairHistory();
			    	String r_call = dto.getRepairShopCall();
			    	int r_cost = dto.getRepairCost();
			    	
			    
			    %>
			    <tr>
				    <th scope="row"><%= r_num %></th>
					<td><%= c_num %></td>
					<td colspan="2" class="table-active"><%= c_name%></td>
					<td><%= r_shop%></td>
					<td><%= r_his%></td>
					<td><%= r_call%></td>
					<td><%= r_cost%></td>
			    </tr>
			    <%} %>
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
<!-- page-wrapper -->
<%} else {%>
	<main class="page-content">
    <div class="container">
      <h2>정비내역</h2>
      <hr>
      
			<table class="table table-success table-striped">
			    <tr>
				    <th scope="row">정비번호</th>
					<td>차량번호</td>
					<td colspan="2" class="table-active">대여차량</td>
					<td>정비소</td>
					<td>정비내용</td>
					<td>전화번호</td>
					<td>정비비용</td>
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
<!-- page-wrapper -->
<%} %>
 </body>
 </html>