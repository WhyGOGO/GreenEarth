package beans_method;

import java.sql.*;
import java.util.*;

public class selectDB {

	private static selectDB instance = new selectDB();
	
	public static selectDB getInstance() {
		return instance;
	}
	
	//회사 전체 정보를 조회하는 메소드
	public ArrayList<companyDataBean> selCompany(String name) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		conn = DBUtil.getMySQLConnection(); // DB 연결
		
		ArrayList<companyDataBean> list = new ArrayList<companyDataBean>();
		
		String sql ="select * from campingCarRentalCompany where name=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		
		rs = pstmt.executeQuery();
		
		
		
		while(rs.next()) {
			companyDataBean sdb = new companyDataBean();
			sdb.setCompanyid(rs.getInt("companyid"));
			sdb.setName(rs.getString("name"));
			sdb.setAddress(rs.getString("address"));
			sdb.setPhoneNumber(rs.getInt("phoneNumber"));
			sdb.setManager(rs.getString("manager"));
			sdb.setEmail(rs.getString("email"));
			
			list.add(sdb);
			
		}
		

		DBUtil.close(conn);
		DBUtil.close(pstmt);
		
		
		return list;
	}
	
	//캠핑카 전체 정보를 조회하는 메소드
	public ArrayList<companyDataBean> selCar() throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		conn = DBUtil.getMySQLConnection(); // DB 연결
		
		ArrayList<companyDataBean> list = new ArrayList<companyDataBean>();
		
		String sql ="select * from campingCar";
		pstmt = conn.prepareStatement(sql);
		
		rs = pstmt.executeQuery();
		
		
		//수정이 필요한 메소드
		while(rs.next()) {
			companyDataBean sdb = new companyDataBean();
			sdb.setCompanyid(rs.getInt("campingcarid"));
			sdb.setName(rs.getString("campingcarName"));
			sdb.setAddress(rs.getString("typesCampingCars"));
			sdb.setPhoneNumber(rs.getInt("carSNumber"));
			sdb.setManager(rs.getString("registationDate"));
			sdb.setEmail(rs.getString("numberPeopleRide"));
			sdb.setPhoneNumber(rs.getInt("rentalCosts"));
			
			list.add(sdb);
			
		}
		

		DBUtil.close(conn);
		DBUtil.close(pstmt);
		
		
		return list;
	}
	
	
	//고객의 이용이력 정보를 조회하는 메소드
	public ArrayList<companyDataBean> selUseHistory(String customerid) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		conn = DBUtil.getMySQLConnection(); // DB 연결
		
		ArrayList<companyDataBean> list = new ArrayList<companyDataBean>();
		
		String sql ="select * from usehistory where customerid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, customerid);
		
		rs = pstmt.executeQuery();
		
		
		//수정이 필요한 메소드
		while(rs.next()) {
			companyDataBean sdb = new companyDataBean();
			
			list.add(sdb);
			
		}
		

		DBUtil.close(conn);
		DBUtil.close(pstmt);
		
		
		return list;
	}
	
	//정비소 정보 전체를 조회하는 메소드
	public ArrayList<companyDataBean> selRepair() throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		conn = DBUtil.getMySQLConnection(); // DB 연결
		
		ArrayList<companyDataBean> list = new ArrayList<companyDataBean>();
		
		String sql ="select * from repairshop";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		
		//수정이 필요한 메소드
		while(rs.next()) {
			companyDataBean sdb = new companyDataBean();
			
			list.add(sdb);
			
		}
		

		DBUtil.close(conn);
		DBUtil.close(pstmt);
		
		
		return list;
	}
	
	
	//대여가능한 캠핑카 조회 메소드
	//캠핑카 대여정보 조회 메소드
	//고객에 의한 캠핑카 정비 의뢰 및 결과 정보를 조회하는 메소드
	
}
