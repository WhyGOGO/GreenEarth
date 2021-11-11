package beans_method;

import java.sql.*;
import beans.*;;

public class insertDB {

	// 회사정보를 등록하는 메소드
	public void addCompany(campDataBean member) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;

		conn = DBUtil.getMySQLConnection(); // DB 연결
		String sql = "insert into campCompany(companyid, name, address, phoneNumber, manager, email) values(?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);

		pstmt.setInt(1, member.getCompanyId());
		pstmt.setString(2, member.getName());
		pstmt.setString(3, member.getAddress());
		pstmt.setInt(4, member.getPhoneNumber());
		pstmt.setString(5, member.getManager());
		pstmt.setString(6, member.getEmail());

		pstmt.executeUpdate();
	}

	// 회원가입한 정보를 DB에 추가
	public void addCust(campDataBean member) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;

		conn = DBUtil.getMySQLConnection(); // DB 연결
		String sql = "insert into customer(customerid, passwd, name, licenseNumber, address, phoneNumber, email) values(?,?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);

		pstmt.setString(1, member.getCustomerId());
		pstmt.setString(2, member.getPasswd());
		pstmt.setString(3, member.getName());
		pstmt.setInt(4, member.getLicenseNumber());
		pstmt.setString(5, member.getAddress());
		pstmt.setInt(6, member.getPhoneNumber());
		pstmt.setString(7, member.getEmail());

		pstmt.executeUpdate();
	}

	// 캠핑카 정보를 DB에 추가
	public void addCar(campDataBean member) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;

		conn = DBUtil.getMySQLConnection(); // DB 연결
		String sql = "insert into campingcar(campingCarId, campingCarName, typesCampingCars, carsNumber, registrationDate, numberPeopleRide, rentalCosts, rentalStatus) values(?,?,?,?,?,?,?,0)";
		pstmt = conn.prepareStatement(sql);

		pstmt.setInt(1, member.getCampingCarId());
		pstmt.setString(2, member.getCampingCarName());
		pstmt.setString(3, member.getTypesCampingCars());
		pstmt.setInt(4, member.getCarsNumber());
		pstmt.setString(5, member.getRegistrationDate());
		pstmt.setString(6, member.getNumberPeopleRide());
		pstmt.setInt(7, member.getRentalCosts());

		pstmt.executeUpdate();
	}

	// 정비소 정보를 DB에 추가
	public void addRepair(campDataBean member) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;

		conn = DBUtil.getMySQLConnection(); // DB 연결
		String sql = "insert into repairshop(repairShopId, carRepairNumber, repairShopName, repairShopAddress, repairShopCallNumber, repairShopNamepersonCharge, repairShopEmail) values(?,?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);

		pstmt.setInt(1, member.getRepairShopId());
		pstmt.setInt(2, member.getCarRepairNumber());
		pstmt.setString(3, member.getRepairShopName());
		pstmt.setString(4, member.getRepairShopAddress());
		pstmt.setInt(5, member.getRepairShopCallNumber());
		pstmt.setString(6, member.getRepairShopNamepersonCharge());
		pstmt.setString(7, member.getRepairShopEmail());

		pstmt.executeUpdate();
	}

	// 캠핑카 대여정보를 DB에 추가
	public void addRentInfo(campDataBean member) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;

		conn = DBUtil.getMySQLConnection(); // DB 연결
		String sql = "insert into rental(rentalNumber, rentalCampingCarId, licenseNumber, rentalStartDate, rentalEndDate, rentalPeriod, requsetCharges, dueDatePayment, otherRequestDetails, otherClaims, rentalInformation) values(?,?,?,?,?,?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);

		pstmt.setInt(1, member.getRentalNumber());
		pstmt.setInt(2, member.getRentalCampingCarId());
		pstmt.setInt(3, member.getLicenseNumber());
		pstmt.setString(4, member.getRentalStartDate());
		pstmt.setString(5, member.getRentalEndDate());
		pstmt.setString(6, member.getRentalPeriod());
		pstmt.setString(7, member.getRequestCharges());
		pstmt.setString(8, member.getDueDatePayment());
		pstmt.setString(9, member.getOtherRequestDetails());
		pstmt.setString(10, member.getOtherClaims());
		pstmt.setString(11, member.getRentalInformation());

		pstmt.executeUpdate();
	}

	// 정비의뢰 및 결과 정보를 추가
	public void addRepairInfo(campDataBean member) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;

		conn = DBUtil.getMySQLConnection(); // DB 연결
		String sql = "insert into maintain_info(carRepairNumber, campingCarId, repairShopId, licenseNumber, carRepairHistory, carRepairDate, carRepairCost, dueDatePayment, otherMaintenanceDetails) values(?,?,?,?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);

		pstmt.setInt(1, member.getCarRepairNumber());
		pstmt.setInt(2, member.getCampingCarId());
		pstmt.setInt(3, member.getRepairShopId());
		pstmt.setInt(4, member.getLicenseNumber());
		pstmt.setString(5, member.getCarRepairHistory());
		pstmt.setString(6, member.getCarRepairDate());
		pstmt.setInt(7, member.getCarRepairCost());
		pstmt.setString(8, member.getDueDatePayment());
		pstmt.setString(9, member.getOtherMaintenanceDetails());

		pstmt.executeUpdate();
	}
}
