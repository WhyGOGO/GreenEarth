package beans_method;


import java.sql.*	;


import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import beans.*;


import java.util.*;



public class deleteDB {

	private deleteDB() {
	}

	private static deleteDB instance = new deleteDB();

	public static deleteDB getInstance() {
		return instance;
	}

	private Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/myoracle");

		return ds.getConnection();
	}
	
	// 대여회사 삭제 기능
	public void deleteComp(campDataBean member) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList<campDataBean> list = new ArrayList<campDataBean>();
		
		try {
			conn = getConnection(); //DB연결

			String sql = "delete from campcompany where CompName=? ";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.executeUpdate();
			
			while(rs.next()) {
			pstmt.setInt(1,member.getCompId());
			pstmt.setString(2, member.getCompName());
			pstmt.setString(3, member.getCompAddress());
			pstmt.setString(4, member.getCompCall());
			pstmt.setString(5, member.getCompManager());
			pstmt.setString(6, member.getCompEmail());
			pstmt.setString(7, member.getIMAGE());
			}
			pstmt.executeUpdate();
			
			/*rs = pstmt.executeQuery();
		    
			if(rs.next()){ 
			  String rId=rs.getString("CompId");
			  String rName=rs.getString("CompName");

		      if(CompId.equals(rId) && passwd.equals(rPasswd)){
			    sql = "delete from member where id=?";
			    pstmt = conn.prepareStatement(sql);
			    pstmt.setString(1,id);

			    pstmt.executeUpdate();*/
			
			
		} catch (Exception ex) {
			ex.printStackTrace();
		}



	}
	//캠핑카 삭제 메소드
	public void deleteCampcar(int CampCarId) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
	try {
		conn = getConnection(); //DB연결
		
		String sql = "delete from campingcar where CampCarId=? ";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, CampCarId);
		
		
		pstmt.executeUpdate();
		
		}
	
	catch (Exception ex) {
		ex.printStackTrace();
		}
	}	
	public void deleteCompany(int compId) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
	try {
		conn = getConnection(); //DB연결
		
		String sql = "delete from CAMPCOMPANY where CompId=? ";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, compId);
		
		
		pstmt.executeUpdate();
		
		}
	
	catch (Exception ex) {
		ex.printStackTrace();
		}
	}
	
	public void delete_customer(String custEmail) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
	try {
		conn = getConnection(); //DB연결
		
		String sql = "delete from customer where email=? ";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, custEmail);
		
		
		pstmt.executeUpdate();
		
		}
	
	catch (Exception ex) {
		ex.printStackTrace();
		}
	}
	public void delete_repairshop(int repairShopId) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
	try {
		conn = getConnection(); //DB연결
		
		String sql = "delete from repairshop where REPAIRSHOPID=? ";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, repairShopId);
		
		
		pstmt.executeUpdate();
		
		}
	
	catch (Exception ex) {
		ex.printStackTrace();
		}
	}
}
