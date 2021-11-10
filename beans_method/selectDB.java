package beans_method;

import java.sql.*;
import java.util.*;

import beans.*;;

public class selectDB {

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
			sdb.setCompanyId(rs.getInt(1));
			sdb.setName(rs.getString(2));
			sdb.setAddress(rs.getString(3));
			sdb.setPhoneNumber(rs.getInt(4));
			sdb.setManager(rs.getString(5));
			sdb.setEmail(rs.getString(6));

			list.add(sdb);

		}

		return list;
	}

	// 고객 정보를 전부 조회
	public ArrayList<campDataBean> selCust() throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		conn = DBUtil.getMySQLConnection(); // DB 연결

		ArrayList<campDataBean> list = new ArrayList<campDataBean>();

		String sql = "select * from customer";

		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();

		while (rs.next()) {
			campDataBean sdb = new campDataBean();
			sdb.setCustomerId(rs.getString(1));
			sdb.setPasswd(rs.getString(2));
			sdb.setName(rs.getString(3));
			sdb.setLicenseNumber(rs.getInt(4));
			sdb.setAddress(rs.getString(5));
			sdb.setPhoneNumber(rs.getInt(6));
			sdb.setEmail(rs.getString(7));
			
			list.add(sdb);
			
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

		String sql = "select * from campingCar";
		pstmt = conn.prepareStatement(sql);

		rs = pstmt.executeQuery();

		// 수정이 필요한 메소드
		while (rs.next()) {
			campDataBean sdb = new campDataBean();
			sdb.setCampingCarId(rs.getInt(1));
			sdb.setCampingCarName(rs.getString(4));
			sdb.setTypesCampingCars(rs.getString(5));
			sdb.setCarsNumber(rs.getInt(6));
			sdb.setRegistrationDate(rs.getString(7));
			sdb.setNumberPeopleRide(rs.getString(8));
			sdb.setRentalCosts(rs.getInt(9));
			sdb.setRentalStatus(rs.getInt(10));

			list.add(sdb);

		}

		return list;
	}

	// 고객의 이용이력 정보를 조회하는 메소드
	public ArrayList<campDataBean> selUseHistory(String customerid) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		conn = DBUtil.getMySQLConnection(); // DB 연결

		ArrayList<campDataBean> list = new ArrayList<campDataBean>();

		String sql = "select * from usehistory where customerid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, customerid);

		rs = pstmt.executeQuery();

		// 수정이 필요한 메소드
		while (rs.next()) {
			campDataBean sdb = new campDataBean();
			sdb.setHistoryNumber(rs.getInt(1));
			sdb.setCustomerId(rs.getString(2));
			sdb.setUseDate(rs.getString(3));
			sdb.setTypesCampingCars(rs.getString(4));
			sdb.setNumberDayUsed(rs.getString(5));
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
			sdb.setCarRepairNumber(rs.getInt(2));
			sdb.setRepairShopName(rs.getString(3));
			sdb.setRepairShopAddress(rs.getString(4));
			sdb.setRepairShopCallNumber(rs.getInt(5));
			sdb.setRepairShopNamepersonCharge(rs.getString(6));
			sdb.setRepairShopEmail(rs.getString(7));
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

		String sql = "select * from campingCar where rentalStatus=0";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();

		// 수정이 필요한 메소드
		while (rs.next()) {
			campDataBean sdb = new campDataBean();
			sdb.setCampingCarId(rs.getInt(1));
			sdb.setCampingCarName(rs.getString(4));
			sdb.setTypesCampingCars(rs.getString(5));
			sdb.setCarsNumber(rs.getInt(6));
			sdb.setRegistrationDate(rs.getString(7));
			sdb.setNumberPeopleRide(rs.getString(8));
			sdb.setRentalCosts(rs.getInt(9));
			sdb.setRentalStatus(rs.getInt(10));
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
			sdb.setRentalCampingCarId(rs.getInt(2));
			sdb.setLicenseNumber(rs.getInt(3));
			sdb.setRentalStartDate(rs.getString(4));
			sdb.setRentalEndDate(rs.getString(5));
			sdb.setRentalPeriod(rs.getString(6));
			sdb.setRequestCharges(rs.getString(7));
			sdb.setDueDatePayment(rs.getString(8));
			sdb.setOtherRequestDetails(rs.getString(9));
			sdb.setOtherClaims(rs.getString(10));
			sdb.setRentalInformation(rs.getString(11));
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

		String sql = "select * from maintain_info";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();

		// 수정이 필요한 메소드
		while (rs.next()) {
			campDataBean sdb = new campDataBean();
			sdb.setCarRepairNumber(rs.getInt(1));
			sdb.setCampingCarId(rs.getInt(2));
			sdb.setRepairShopId(rs.getInt(3));
			sdb.setLicenseNumber(rs.getInt(4));
			sdb.setCarRepairHistory(rs.getString(5));
			sdb.setCarRepairDate(rs.getString(6));
			sdb.setCarRepairCost(rs.getInt(7));
			sdb.setDueDatePayment(rs.getString(8));
			sdb.setOtherMaintenanceDetails(rs.getString(9));
			list.add(sdb);

		}

		return list;
	}
}
