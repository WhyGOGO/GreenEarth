package beans_method;

import java.sql.*;



import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

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

			String sql = "insert into campCompany(compid, compname, compaddress, compcall, compmanager, compemail,image) values(COMPID.NEXTVAL,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);


			pstmt.setString(1, member.getCompName());
			pstmt.setString(2, member.getCompAddress());
			pstmt.setString(3, member.getCompCall());
			pstmt.setString(4, member.getCompManager());
			pstmt.setString(5, member.getCompEmail());
			pstmt.setString(6, member.getIMAGE());
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

			String sql = "insert into campingcar (CAMPCARID,CAMPCARNAME,CAMPCARTYPE,CAMPCARNUMBER,CAMPCARDATE,PEOPLERIDE,CARRENTALCOST,COMPID,rentalstatus) values(CAMPCARID.NEXTVAL,?,?,?,?,?,?,?,0)";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, member.getCampCarName());
			pstmt.setInt(7, member.getCompId());
			pstmt.setString(2, member.getCampCarType());
			pstmt.setString(3, member.getCampCarNumber());
			pstmt.setString(4, member.getCampCarDate());
			pstmt.setInt(6, member.getCarRentalCost());
			pstmt.setInt(5, member.getPeopleRide());
			
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

			String sql ="insert into rental(rentalnumber,licensenumber,rentalstart,RentalEnd,rentalterm,rentalCost,rentalEtcHistory,rentalEtcCost,campCarId,compid,RentalPayDate) values (rental_number.NEXTVAL,?,TO_DATE(?,'YYYY-MM-DD'),TO_DATE(?,'YYYY-MM-DD'),?,?,?,?,?,?,TO_DATE(?,'YYYY-MM-DD'))";
			pstmt = conn.prepareStatement(sql);
			

			
			pstmt.setString(1, member.getLicenseNumber());
			pstmt.setString(2,member.getRentalStart());
			pstmt.setString(3, member.getRentalEnd());
			pstmt.setString(4, member.getRentalTerm());
			pstmt.setInt(5, member.getRentalCost());
			
			pstmt.setString(6, member.getRentalEtcHistory());
			pstmt.setInt(7, member.getRentalEtcCost());
			pstmt.setInt(8, member.getCampCarId());
			pstmt.setInt(9, member.getCompId());

			pstmt.setString(10, member.getRentalPayDate());
			
			//여기까지 insert문
			
			String sql2 ="update campingcar set rentalstatus=? where campcarid=?";
			
			pstmt = conn.prepareStatement(sql2);
			pstmt.setInt(1,1);
			pstmt.setInt(2, member.getCampCarId());
			// 여기까지 upadte 문
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

			String sql = "insert into repairinfo(REPAIRNUMBER,repairHistory, repairDate, repairCost, repairPayDate, repairEtcHistory, repairShopId, campCarId, licenseNumber) values(REPAIRNUMBER.NEXTVAL,?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, member.getRepairHistory());
			pstmt.setString(2, member.getRepairDate());
			pstmt.setInt(3, member.getRepairCost());
			pstmt.setString(4, member.getRepairPayDate());
			pstmt.setString(5, member.getRepairEtcHistory());
			pstmt.setInt(6, member.getRepairShopId());
			pstmt.setInt(7, member.getCampCarId());
			pstmt.setString(8, member.getLicenseNumber());

			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();

		}
	}
	//정비의뢰 테이블값넣기
	public void addRepairRequest(campDataBean member) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = getConnection();

			String sql = "insert into repairrequest(RENTALNUMBER,LICENSENUMBER,CAMPCARID) values(?,?,?)";
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, member.getRentalNumber());
			pstmt.setString(2, member.getLicenseNumber());
			pstmt.setInt(3, member.getCampCarId());

			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();

		}
	}
}

