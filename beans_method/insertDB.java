package beans_method;

import java.sql.*;
import beans.*;;

public class insertDB {

	// 회사정보를 등록하는 메소드
	public void addCompany(campDataBean member) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;

		conn = DBUtil.getMySQLConnection(); // DB 연결
		String sql = "insert into campCompany(compid, compname, compaddress, compcall, compmanager, compemail) values(?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);

		pstmt.setInt(1, member.getCompId());
		pstmt.setString(2, member.getCompName());
		pstmt.setString(3, member.getCompAddress());
		pstmt.setString(4, member.getCompCall());
		pstmt.setString(5, member.getCompManager());
		pstmt.setString(6, member.getCompEmail());

		pstmt.executeUpdate();
	}

	// 회원가입한 정보를 DB에 추가
	public void addCust(campDataBean member) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;

		conn = DBUtil.getMySQLConnection(); // DB 연결
		String sql = "insert into customer(licenseNumber, custname, custaddress, custcall, custemail, passwd) values(?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);

		pstmt.setString(1, member.getLicenseNumber());
		pstmt.setString(2, member.getCustName());
		pstmt.setString(3, member.getCustAddress());
		pstmt.setString(4, member.getCustCall());
		pstmt.setString(5, member.getCustEmail());
		pstmt.setString(6, member.getPasswd());

		pstmt.executeUpdate();
	}

	// 캠핑카 정보를 DB에 추가
	public void addCar(campDataBean member) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;

		conn = DBUtil.getMySQLConnection(); // DB 연결
		String sql = "insert into campingcar(campCarId, compId, campCarName, campCarsType, campCarNumber, campCarDate, peopleRide, rentalCost, rentalStatus) values(?,?,?,?,?,?,?,?,0)";
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
	}

	// 정비소 정보를 DB에 추가
	public void addRepair(campDataBean member) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;

		conn = DBUtil.getMySQLConnection(); // DB 연결
		String sql = "insert into repairshop(repairShopId, repairShopName, repairShopAddress, repairShopCall, repairManager, repairManagerEmail) values(?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);

		pstmt.setInt(1, member.getRepairShopId());
		pstmt.setString(2, member.getRepairShopName());
		pstmt.setString(3, member.getRepairShopAddress());
		pstmt.setString(4, member.getRepairShopCall());
		pstmt.setString(5, member.getRepairManager());
		pstmt.setString(6, member.getRepairManagerEmail());

		pstmt.executeUpdate();
	}

	// 캠핑카 대여정보를 DB에 추가
	public void addRentInfo(campDataBean member) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;

		conn = DBUtil.getMySQLConnection(); // DB 연결
		String sql = "insert into rental(rentalNumber, CampCarId, licenseNumber, rentalStart, rentalEnd, rentalTerm, rentalCost, rentalPayDate, rentalEtcHistory, rentalEtcCost, compid) values(?,?,?,?,?,?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);

		pstmt.setInt(1, member.getRentalNumber());
		pstmt.setInt(2, member.getCampCarId());
		pstmt.setString(3, member.getLicenseNumber());
		pstmt.setString(4, member.getRentalStart());
		pstmt.setString(5, member.getRentalEnd());
		pstmt.setString(6, member.getRentalTerm());
		pstmt.setInt(7, member.getRentalCost());
		pstmt.setString(8, member.getRentalPayDate());
		pstmt.setString(9, member.getRentalEtcHistory());
		pstmt.setInt(10, member.getRentalEtcCost());
		pstmt.setInt(11, member.getCompId());

		pstmt.executeUpdate();
	}

	// 정비의뢰 및 결과 정보를 추가
	public void addRepairInfo(campDataBean member) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;

		conn = DBUtil.getMySQLConnection(); // DB 연결
		String sql = "insert into maintain_info(repairNumber, campCarId, repairShopId, licenseNumber, repairHistory, repairDate, repairCost, repairPayDate, repairEtcHistory) values(?,?,?,?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);

		pstmt.setInt(1, member.getRepairNumber());
		pstmt.setInt(2, member.getCampCarId());
		pstmt.setInt(3, member.getRepairShopId());
		pstmt.setString(4, member.getLicenseNumber());
		pstmt.setString(5, member.getRepairHistory());
		pstmt.setString(6, member.getRepairDate());
		pstmt.setInt(7, member.getRepairCost());
		pstmt.setString(8, member.getRepairPayDate());
		pstmt.setString(9, member.getRepairEtcHistory());

		pstmt.executeUpdate();
	}
}
