package beans_method;

import java.sql.*;
import java.util.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import beans.*;

public class selectDB {

	private selectDB() {}
	
    private static selectDB instance = new selectDB();
    
    public static selectDB getInstance() {
        return instance;
    }

	
	private Connection getConnection() throws Exception {
	    Context initCtx = new InitialContext();
	    Context envCtx = (Context) initCtx.lookup("java:comp/env");
	    DataSource ds = (DataSource)envCtx.lookup("jdbc/myoracle");

	    return ds.getConnection();
	}
	
	// 회사 전체 정보를 조회하는 메소드
	public ArrayList<campDataBean> selCompany(String name) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		conn = DBUtil.getMySQLConnection(); // DB 연결

		ArrayList<campDataBean> list = new ArrayList<campDataBean>();

		String sql = "select * from campCompany where name=?";

		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);

		rs = pstmt.executeQuery();

		while (rs.next()) {
			campDataBean sdb = new campDataBean();
			sdb.setCompId(rs.getInt(1));
			sdb.setCompName(rs.getString(2));
			sdb.setCompAddress(rs.getString(3));
			sdb.setCompCall(rs.getString(4));
			sdb.setCompManager(rs.getString(5));
			sdb.setCompEmail(rs.getString(6));

			list.add(sdb);

		}

		return list;
	}

	// 고객 정보를 전부 조회
	public ArrayList<campDataBean> selCust() throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<campDataBean> list = new ArrayList<campDataBean>();
	try {	
		conn = getConnection(); // DB 연결

		

		String sql = "select * from customer";

		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();

		while (rs.next()) {
			campDataBean sdb = new campDataBean();
			sdb.setLicenseNumber(rs.getString(2));
			sdb.setCustName(rs.getString(1));
			sdb.setCustAddress(rs.getString(3));
			sdb.setCustCall(rs.getString(4));
			sdb.setCustEmail(rs.getString(5));
			sdb.setPasswd(rs.getString(6));
			
			list.add(sdb);
			
		}
	}
		catch(Exception e) {
				e.printStackTrace();
			
	}finally{
		if (rs != null) 
			try { rs.close(); } catch(SQLException ex) {}
		if (pstmt != null) 
			try { pstmt.close(); } catch(SQLException ex) {}
		if (conn != null) 
			try { conn.close(); } catch(SQLException ex) {}
	}
		
		return list;
	}
	
	

	// 캠핑카 전체 정보를 조회하는 메소드
	public ArrayList<campDataBean> selCar() throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		conn = DBUtil.getMySQLConnection(); // DB 연결

		ArrayList<campDataBean> list = new ArrayList<campDataBean>();

		String sql = "select a.campcarid, b.compname, a.campcarname, a.campcartype, a.campcarnumber, a.campcardate, a.peopleride, a.carrentalcost, a.rentalstatus  from campingCar a, campCompany b where a.compId=b.compId";
		pstmt = conn.prepareStatement(sql);

		rs = pstmt.executeQuery();

		// 수정이 필요한 메소드
		while (rs.next()) {
			campDataBean sdb = new campDataBean();
			sdb.setCampCarId(rs.getInt(1));
			sdb.setCompName(rs.getString(2));
			sdb.setCampCarName(rs.getString(3));
			sdb.setCampCarType(rs.getString(4));
			sdb.setCampCarNumber(rs.getInt(5));
			sdb.setCampCarDate(rs.getString(6));
			sdb.setPeopleRide(rs.getInt(7));
			sdb.setCarRentalCost(rs.getInt(8));
			sdb.setRentalStatus(rs.getInt(9));

			list.add(sdb);

		}

		return list;
	}

	// 고객의 이용이력 정보를 조회하는 메소드
	public ArrayList<campDataBean> selCustHis(String email) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		conn = DBUtil.getMySQLConnection(); // DB 연결

		ArrayList<campDataBean> list = new ArrayList<campDataBean>();

		String sql = "select * from rental where email=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, email);

		rs = pstmt.executeQuery();

		// 수정이 필요한 메소드
		while (rs.next()) {
			campDataBean sdb = new campDataBean();
			sdb.setRentalNumber(rs.getInt(1));
			sdb.setRentalStart(rs.getString(4));
			sdb.setRentalEnd(rs.getString(5));
			sdb.setRentalTerm(rs.getString(6));
			sdb.setRentalCost(rs.getInt(7));
			sdb.setRentalPayDate(rs.getString(8));
			sdb.setRentalEtcHistory(rs.getString(9));
			sdb.setRentalEtcCost(rs.getInt(10));
			list.add(sdb);

		}

		return list;
	}

	// 정비소 정보 전체를 조회하는 메소드
	public ArrayList<campDataBean> selRepair() throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		conn = DBUtil.getMySQLConnection(); // DB 연결

		ArrayList<campDataBean> list = new ArrayList<campDataBean>();

		String sql = "select * from repairshop";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();

		// 수정이 필요한 메소드
		while (rs.next()) {
			campDataBean sdb = new campDataBean();
			sdb.setRepairShopId(rs.getInt(1));
			sdb.setRepairShopName(rs.getString(3));
			sdb.setRepairShopAddress(rs.getString(4));
			sdb.setRepairShopCall(rs.getString(5));
			sdb.setRepairManager(rs.getString(6));
			sdb.setRepairManagerEmail(rs.getString(7));
			list.add(sdb);

		}

		return list;
	}

	// 대여가능한 캠핑카 조회 메소드
	public ArrayList<campDataBean> selRentCar() throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		conn = DBUtil.getMySQLConnection(); // DB 연결

		ArrayList<campDataBean> list = new ArrayList<campDataBean>();

		String sql = "select a.campcarid, b.compname, a.campcarname, a.campcartype, a.campcarnumber, a.campcardate, a.peopleride, a.carrentalcost, a.rentalstatus  from campingCar a, campCompany b where rentalStatus=0";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();

		// 수정이 필요한 메소드
		while (rs.next()) {
			campDataBean sdb = new campDataBean();
			sdb.setCampCarId(rs.getInt(1));
			sdb.setCompName(rs.getString(2));
			sdb.setCampCarName(rs.getString(3));
			sdb.setCampCarType(rs.getString(4));
			sdb.setCampCarNumber(rs.getInt(5));
			sdb.setCampCarDate(rs.getString(6));
			sdb.setPeopleRide(rs.getInt(7));
			sdb.setCarRentalCost(rs.getInt(8));
			sdb.setRentalStatus(rs.getInt(9));
			list.add(sdb);

		}

		return list;
	}

	// 캠핑카 대여정보 조회 메소드

	public ArrayList<campDataBean> selRentInfo() throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		conn = DBUtil.getMySQLConnection(); // DB 연결

		ArrayList<campDataBean> list = new ArrayList<campDataBean>();

		String sql = "select * from rental";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();

		// 수정이 필요한 메소드
		while (rs.next()) {
			campDataBean sdb = new campDataBean();
			sdb.setRentalNumber(rs.getInt(1));
			sdb.setCampCarId(rs.getInt(2));
			sdb.setLicenseNumber(rs.getString(3));
			sdb.setRentalStart(rs.getString(4));
			sdb.setRentalEnd(rs.getString(5));
			sdb.setRentalTerm(rs.getString(6));
			sdb.setRentalCost(rs.getInt(7));
			sdb.setRentalPayDate(rs.getString(8));
			sdb.setRentalEtcHistory(rs.getString(9));
			sdb.setRentalEtcCost(rs.getInt(10));
			sdb.setCompId(rs.getInt(11));
			list.add(sdb);

		}

		return list;
	}

	// 고객에 의한 캠핑카 정비 의뢰 및 결과 정보를 조회하는 메소드

	public ArrayList<campDataBean> selRepairInfo() throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		conn = DBUtil.getMySQLConnection(); // DB 연결

		ArrayList<campDataBean> list = new ArrayList<campDataBean>();

		String sql = "select * from repairInfo";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();

		// 수정이 필요한 메소드
		while (rs.next()) {
			campDataBean sdb = new campDataBean();
			sdb.setRepairNumber(rs.getInt(1));
			sdb.setLicenseNumber(rs.getString(2));
			sdb.setCampCarId(rs.getInt(3));
			sdb.setRepairShopId(rs.getInt(4));
			sdb.setRepairHistory(rs.getString(5));
			sdb.setRepairDate(rs.getString(6));
			sdb.setRepairCost(rs.getInt(7));
			sdb.setRepairPayDate(rs.getString(8));
			sdb.setRepairEtcHistory(rs.getString(9));
			list.add(sdb);

		}

		return list;
	}
}
