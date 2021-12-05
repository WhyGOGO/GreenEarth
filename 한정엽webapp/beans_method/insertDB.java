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
			pstmt.close();
			conn.close();
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
			pstmt.close();
			conn.close();
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

			String sql = "insert into campingcar (CAMPCARID,CAMPCARNAME,CAMPCARTYPE,CAMPCARNUMBER,CAMPCARDATE,PEOPLERIDE,CARRENTALCOST,COMPID,rentalstatus,camp_image,CAMPCARINFO) values(CAMPCARID.NEXTVAL,?,?,?,?,?,?,?,0,?,?)";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, member.getCampCarName());
			pstmt.setString(2, member.getCampCarType());
			pstmt.setString(3, member.getCampCarNumber());
			pstmt.setString(4, member.getCampCarDate());
			pstmt.setInt(5, member.getPeopleRide());
			pstmt.setInt(6, member.getCarRentalCost());
			pstmt.setInt(7, member.getCompId());

			pstmt.setString(8, member.getcamp_image());
			pstmt.setString(9, member.getCampcarinfo());

			pstmt.executeUpdate();
			pstmt.close();
			conn.close();
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

			String sql = "insert into repairshop(repairShopId, repairShopName, repairShopAddress, repairShopCall, repairManager, repairManagerEmail,SHOPIMAGE) values(REPAIRSHOPID.nextval,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, member.getRepairShopName());
			pstmt.setString(2, member.getRepairShopAddress());
			pstmt.setString(3, member.getRepairShopCall());
			pstmt.setString(4, member.getRepairManager());
			pstmt.setString(5, member.getRepairManagerEmail());
			pstmt.setString(6, member.getShopImage());
			
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();
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

			String sql ="insert into rental(rentalnumber,licensenumber,rentalstart,RentalEnd,rentalterm,rentalCost,rentalEtcHistory,rentalEtcCost,campCarId,RentalPayDate) values (rental_number.NEXTVAL,?,TO_DATE(?,'YYYY-MM-DD'),TO_DATE(?,'YYYY-MM-DD'),?,?,?,?,?,TO_DATE(?,'YYYY-MM-DD'))";
			pstmt = conn.prepareStatement(sql);
			

			
			pstmt.setString(1, member.getLicenseNumber());
			pstmt.setString(2,member.getRentalStart());
			pstmt.setString(3, member.getRentalEnd());
			pstmt.setString(4, member.getRentalTerm());
			pstmt.setInt(5, member.getRentalCost());
			
			pstmt.setString(6, member.getRentalEtcHistory());
			pstmt.setInt(7, member.getRentalEtcCost());
			pstmt.setInt(8, member.getCampCarId());

			pstmt.setString(9, member.getRentalPayDate());


			pstmt.executeUpdate();
			//여기까지 insert문
			
			String sql2 ="update campingcar set rentalstatus=? where campcarid=?";
			
			pstmt = conn.prepareStatement(sql2);
			pstmt.setInt(1,1);
			pstmt.setInt(2, member.getCampCarId());
			// 여기까지 upadte 문
			pstmt.executeUpdate(); 
			
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();

		}
	}



	// 정비의뢰 및 결과 정보를 추가
	public void addRepairInfo(campDataBean member,campDataBean member2) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = getConnection();

			String sql = "insert into repairinfo(REPAIRNUMBER,repairHistory, repairDate, repairCost, repairPayDate, repairEtcHistory, repairShopId, campCarId, licenseNumber) values(REPAIRNUMBER.NEXTVAL,?,?,?,to_date(?,'yy-mm-dd'),?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, member.getRepairHistory());
			pstmt.setString(2, member.getRepairDate());
			pstmt.setInt(3, member.getRepairCost());
			pstmt.setString(4, member.getRepairPayDate());
			pstmt.setString(5, member.getRepairEtcHistory());
			pstmt.setInt(6, member.getRepairShopId());
			pstmt.setInt(7, member2.getCampCarId());
			pstmt.setString(8, member.getLicenseNumber());

			pstmt.executeUpdate();
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();

		}
	}
	//정비의뢰 테이블값넣기
	public void addRepairRequest(campDataBean member, campDataBean member2) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = getConnection();

			String sql = "insert into repairrequest(repairrequest_num,rentalnumber,repairhistory,repairdate,repaircost,repairpaydate,repairetchistory,repairshopid)\n "
										+ "values( repairrequest_num.NEXTVAL,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, member2.getRentalNumber());
			pstmt.setString(2, member.getRepairHistory());
			pstmt.setString(3, member.getRepairDate());
			pstmt.setInt(4, member.getRepairCost());
			pstmt.setString(5, member.getRepairPayDate());
			pstmt.setString(6, member.getRepairEtcHistory());
			pstmt.setInt(7, member.getRepairShopId());

			pstmt.executeUpdate();
			
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();

		}
	}
	
	public void add_RepairInfo(campDataBean member) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = getConnection();

			String sql = "insert into repairinfo(repairinfo_num,repairrequest_num) values(repairinfo_num.NEXTVAL,?)";
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, member.getRepairNumber());

			pstmt.executeUpdate();
			
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();

		}
	}
}

