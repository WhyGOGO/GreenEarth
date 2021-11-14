package beans_method;

import java.sql.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import beans.*;;

public class insertDB {

	private insertDB() {
	}

	private static insertDB instance = new insertDB();

	public static insertDB getInstance() {
		return instance;
	}

	private Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/myoracle");

		return ds.getConnection();
	}

	// 회사정보를 등록하는 메소드
	public void addCompany(campDataBean member) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = getConnection();

			String sql = "insert into campCompany(compid, compname, compaddress, compcall, compmanager, compemail) values(?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, member.getCompId());
			pstmt.setString(2, member.getCompName());
			pstmt.setString(3, member.getCompAddress());
			pstmt.setString(4, member.getCompCall());
			pstmt.setString(5, member.getCompManager());
			pstmt.setString(6, member.getCompEmail());

			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();

		}
	}

	// 회원가입한 정보를 DB에 추가
	public void addCust(campDataBean member) throws Exception {

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = getConnection();

			String sql = "insert into customer(licenseNumber, name, address, phonenumber, email, passwd) values(?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, member.getLicenseNumber());
			pstmt.setString(2, member.getCustName());
			pstmt.setString(3, member.getCustAddress());
			pstmt.setString(4, member.getCustCall());
			pstmt.setString(5, member.getCustEmail());
			pstmt.setString(6, member.getPasswd());

			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();

		}
	}

	// 캠핑카 정보를 DB에 추가
	public void addCar(campDataBean member) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = getConnection();

			String sql = "insert into campingcar(campCarId, compId, campCarName, campCarsType, campCarNumber, campCarDate, peopleRide, carRentalCost, rentalStatus) values(?,?,?,?,?,?,?,?,0)";
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, member.getCampCarId());
			pstmt.setInt(2, member.getCompId());
			pstmt.setString(3, member.getCampCarName());
			pstmt.setString(4, member.getCampCarType());
			pstmt.setInt(5, member.getCampCarNumber());
			pstmt.setString(6, member.getCampCarDate());
			pstmt.setInt(7, member.getPeopleRide());
			pstmt.setInt(8, member.getRentalCost());

			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();

		}
	}

	// 정비소 정보를 DB에 추가
	public void addRepair(campDataBean member) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = getConnection();

			String sql = "insert into repairshop(repairShopId, repairShopName, repairShopAddress, repairShopCall, repairManager, repairManagerEmail) values(?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, member.getRepairShopId());
			pstmt.setString(2, member.getRepairShopName());
			pstmt.setString(3, member.getRepairShopAddress());
			pstmt.setString(4, member.getRepairShopCall());
			pstmt.setString(5, member.getRepairManager());
			pstmt.setString(6, member.getRepairManagerEmail());

			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();

		}
	}

	// 캠핑카 대여정보를 DB에 추가
	public void addRentInfo(campDataBean member) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = getConnection();

			String sql = "insert into rental(rentalNumber, licenseNumber, rentalStart, rentalEnd, rentalTerm, rentalCost, rentalPayDate, rentalEtcHistory, rentalEtcCost, campCarId, compid) values(?,?,?,?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, member.getRentalNumber());
			pstmt.setString(2, member.getLicenseNumber());
			pstmt.setString(3, member.getRentalStart());
			pstmt.setString(4, member.getRentalEnd());
			pstmt.setString(5, member.getRentalTerm());
			pstmt.setInt(6, member.getRentalCost());
			pstmt.setString(7, member.getRentalPayDate());
			pstmt.setString(8, member.getRentalEtcHistory());
			pstmt.setInt(9, member.getRentalEtcCost());
			pstmt.setInt(10, member.getCampCarId());
			pstmt.setInt(11, member.getCompId());

			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();

		}
	}

	// 정비의뢰 및 결과 정보를 추가
	public void addRepairInfo(campDataBean member) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = getConnection();

			String sql = "insert into repairinfo(repairNumber, repairHistory, repairDate, repairCost, repairPayDate, repairEtcHistory, repairShopId, campCarId, licenseNumber) values(?,?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, member.getRepairNumber());
			pstmt.setString(2, member.getRepairHistory());
			pstmt.setString(3, member.getRepairDate());
			pstmt.setInt(4, member.getRepairCost());
			pstmt.setString(5, member.getRepairPayDate());
			pstmt.setString(6, member.getRepairEtcHistory());
			pstmt.setInt(7, member.getRepairShopId());
			pstmt.setInt(8, member.getCampCarId());
			pstmt.setString(9, member.getLicenseNumber());

			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();

		}
	}
}
