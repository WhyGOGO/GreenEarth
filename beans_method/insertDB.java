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
}
