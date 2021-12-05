package beans_method;

import java.sql.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import beans.*;

public class updateDB {
	
	private updateDB() {}
	
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
	
	
	//예약상태인 대여정보를 취소요청하는 메소드
	public void requestCancel(int num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = getConnection();
			
			String sql = "update rental set rental_state=2 where rental_state=0 and rentalnumber=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			pstmt.executeUpdate();
			
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//취소상태인 요청정보를 다시금 취소요청하는 메소드, 취소요청-2 -> 예약0
	public void requestCancel2(int num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = getConnection();
			
			String sql = "update rental set rental_state=0 where rental_state=2 and rentalnumber=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			pstmt.executeUpdate();
			
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	  public void requestCancel4(int num) {
	        Connection conn = null;
	        PreparedStatement pstmt = null;

	        try {
	            conn = getConnection();

	            String sql = "update rental set rental_state=-2 where rental_state=0 and rentalnumber=?";
	            pstmt=conn.prepareStatement(sql);
	            pstmt.setInt(1, num);

	            pstmt.executeUpdate();

	            pstmt.close();
	            conn.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
	
	
	
	
	
	//취소요청-2 -> 취소-2
	public void requestCancel3(int num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = getConnection();
			
			String sql = "update rental set rental_state=-2 where rental_state=2 and rentalnumber=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			pstmt.executeUpdate();
			
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//예약0 -> 대여 1
	public void requestPro0(int num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = getConnection();
			
			String sql = "update rental set rental_state=1 where rental_state=0 and rentalnumber=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			pstmt.executeUpdate();
			
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//대여 1 -> 반납 -1
	public void requestPro1(int num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = getConnection();
			
			String sql = "update rental set rental_state=-1 where rental_state=1 and rentalnumber=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			pstmt.executeUpdate();
			
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//대여 -> 대여가능
	public void requestPro2(String car) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = getConnection();
			
			String sql = "update campingcar set rentalstatus=0 where campcarnumber=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, car);
			
			pstmt.executeUpdate();
			
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//요청대기1 -> 예약0
	public void repairCancel2(int num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = getConnection();
			
			String sql = "update repairrequest set repair_state=? where repairrequest_num=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, 0);
			pstmt.setInt(2, num);
			
			pstmt.executeUpdate();
			
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void repairCancel(int num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = getConnection();
			
			String sql = "update repairrequest set repair_state=? where repairrequest_num=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, 1);
			pstmt.setInt(2, num);
			
			pstmt.executeUpdate();
			
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void updateCampcar(campDataBean member) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = getConnection(); //DB연결
			
			String sql = "update campingcar set CAMPCARNAME=?,CAMPCARTYPE=?,CAMPCARNUMBER=?,CAMPCARDATE=TO_DATE(?,'YYYY-MM-DD'),PEOPLERIDE=?,CARRENTALCOST=?,RENTALSTATUS=? where CAMPCARID=? ";
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
		
			pstmt.close();
			conn.close();
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
		
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();

		}

	}
	
	public void update_customer(campDataBean member) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = getConnection(); //DB연결
			
			String sql = "update customer set name=?,LICENSENUMBER=?,ADDRESS=?,PHONENUMBER=?,EMAIL=?,PASSWD=? where EMAIL=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,member.getCustName());
			pstmt.setString(2,member.getLicenseNumber());
			pstmt.setString(3,member.getCustAddress());
			pstmt.setString(4,member.getCustCall());
			pstmt.setString(5,member.getCustEmail());
			pstmt.setString(6,member.getPasswd());
			pstmt.setString(7,member.getCustEmail());
			pstmt.executeUpdate();
		
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();

		}

	}
	public void update_repairshop(campDataBean member) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = getConnection(); //DB연결
			
			String sql = "update repairshop set REPAIRSHOPNAME=?,REPAIRSHOPADDRESS=?,REPAIRSHOPCALL=?,REPAIRMANAGER=?,REPAIRMANAGEREMAIL=?,SHOPIMAGE=? where REPAIRSHOPID=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,member.getRepairShopName());
			pstmt.setString(2,member.getRepairShopAddress());
			pstmt.setString(3,member.getRepairShopCall());
			pstmt.setString(4,member.getRepairManager());
			pstmt.setString(5,member.getRepairManagerEmail());
			pstmt.setString(6,member.getShopImage());
			pstmt.setInt(7,member.getRepairShopId());
			pstmt.executeUpdate();
		
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();

		}

	}
	//정비의뢰 정비가격변경 누르는 쪽
	public void update_repairpayupdate(campDataBean member) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = getConnection(); //DB연결
			
			String sql = "update repairrequest set REPAIR_STATE=1,REPAIRCOST=? where REPAIR_STATE=0 and repairrequest_num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, member.getRepairCost());
			pstmt.setInt(2,member.getRepairNumber());
			pstmt.executeUpdate();
		
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();

		}

	}
	//정비의뢰 승낙버튼 누르는 쪽
	public void update_repairupdate(campDataBean member) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = getConnection(); //DB연결
			
			String sql = "update repairrequest set REPAIR_STATE=2 where REPAIR_STATE=1 and repairrequest_num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,member.getRepairNumber());
			pstmt.executeUpdate();
		
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();

		}

	}
	//정비의뢰 취소버튼 누르는 쪽
		public void update_repairupcancle(campDataBean member) throws Exception {
			Connection conn = null;
			PreparedStatement pstmt = null;
			try {
				conn = getConnection(); //DB연결
				
				String sql = "update repairinfo set REPAIR_STATE=-1 where REPAIR_STATE=1 and repairnumber=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1,member.getRepairNumber());
				pstmt.executeUpdate();
			
				pstmt.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();

			}

		}
	
}
