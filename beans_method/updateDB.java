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



public class updateDB {

	private updateDB() {
	}

	private static updateDB instance = new updateDB();

	public static updateDB getInstance() {
		return instance;
	}

	private Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/myoracle");

		return ds.getConnection();
	}
	public void updateCampcar(campDataBean member) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = getConnection(); //DB연결
			
			String sql = "update campingcar set CAMPCARNAME=?,CAMPCARTYPE=?,CAMPCARNUMBER=?,CAMPCARDATE=?,PEOPLERIDE=?,CARRENTALCOST=?,RENTALSTATUS=? where CampCarId=? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,member.getCampCarName());
			pstmt.setString(2,member.getCampCarType());
			pstmt.setString(3,member.getCampCarNumber());
			pstmt.setString(4,member.getCampCarDate());
			pstmt.setInt(5,member.getPeopleRide());
			pstmt.setInt(6,member.getCarRentalCost());
			pstmt.setInt(7,member.getRentalStatus());
			pstmt.setInt(8,member.getCampCarId());
			pstmt.executeUpdate();
		
	} catch (Exception e) {
		e.printStackTrace();

		}

	}
	public void updateCompany(campDataBean member) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = getConnection(); //DB연결
			
			String sql = "update campcompany set compid=?,compname=?,compaddress=?,compcall=?,compmanager=?,compemail=?,image=? where compid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,member.getCompId());
			pstmt.setString(2,member.getCompName());
			pstmt.setString(3,member.getCompAddress());
			pstmt.setString(4,member.getCompCall());
			pstmt.setString(5,member.getCompManager());
			pstmt.setString(6,member.getCompEmail());
			pstmt.setString(7,member.getIMAGE());
			pstmt.setInt(8,member.getCompId());
			pstmt.executeUpdate();
		
	} catch (Exception e) {
		e.printStackTrace();

		}

	}



}
