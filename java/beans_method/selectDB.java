package beans_method;

import java.sql.*;
import java.util.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import beans.*;

public class selectDB {

	private selectDB() {
	}

	private static selectDB instance = new selectDB();

	public static selectDB getInstance() {
		return instance;
	}

	private Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/myoracle");

		return ds.getConnection();
	}
	
	// 해당 고객의 정보를 가져오는 메소드
	public ArrayList<campDataBean> selUser(String email) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		ArrayList<campDataBean> list = new ArrayList<campDataBean>();
		try {

			conn = getConnection(); // DB 연결

			String sql = "SELECT * FROM CUSTOMER WHERE EMAIL=?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();

			// 수정이 필요한 메소드
			while (rs.next()) {
				campDataBean sdb = new campDataBean();
				sdb.setCustName(rs.getString(1));
				sdb.setLicenseNumber(rs.getString(2));
				sdb.setCustAddress(rs.getString(3));
				sdb.setCustCall(rs.getString(4));
				sdb.setCustEmail(rs.getString(5));
				sdb.setPasswd(rs.getString(6));

				list.add(sdb);
			}

			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}

		return list;
	}
	
	

	// 회사정보조회하는메소드
	public ArrayList<campDataBean> selCompany() throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<campDataBean> list = new ArrayList<campDataBean>();
		try {
			conn = getConnection(); // DB 연결

			String sql = "select compname,compaddress,compcall,compmanager,compemail,IMAGE,compId from campcompany";

			pstmt = conn.prepareStatement(sql);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				campDataBean sdb = new campDataBean();
				sdb.setCompName(rs.getString(1));
				sdb.setCompAddress(rs.getString(2));
				sdb.setCompCall(rs.getString(3));
				sdb.setCompManager(rs.getString(4));
				sdb.setCompEmail(rs.getString(5));
				sdb.setIMAGE(rs.getString(6));
				sdb.setCompId(rs.getInt(7));

				list.add(sdb);

			}
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}

		return list;
	}
	
	// 회사정보조회하는메소드
		public ArrayList<campDataBean> selCompany(String name) throws SQLException {
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			ArrayList<campDataBean> list = new ArrayList<campDataBean>();
			try {
				conn = getConnection(); // DB 연결

				String sql = "select compname,compaddress,compcall,compmanager,compemail,IMAGE,compId from campcompany where compname=?";

				pstmt = conn.prepareStatement(sql);

				rs = pstmt.executeQuery();

				while (rs.next()) {
					campDataBean sdb = new campDataBean();
					sdb.setCompName(rs.getString(1));
					sdb.setCompAddress(rs.getString(2));
					sdb.setCompCall(rs.getString(3));
					sdb.setCompManager(rs.getString(4));
					sdb.setCompEmail(rs.getString(5));
					sdb.setIMAGE(rs.getString(6));
					sdb.setCompId(rs.getInt(7));

					list.add(sdb);

				}
				pstmt.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();

			} finally {
				if (rs != null)
					try {
						rs.close();
					} catch (SQLException ex) {
					}
				if (pstmt != null)
					try {
						pstmt.close();
					} catch (SQLException ex) {
					}
				if (conn != null)
					try {
						conn.close();
					} catch (SQLException ex) {
					}
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
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}

		return list;
	}

	// 해당 회사 캠핑카 전체 정보를 조회하는 메소드
	public ArrayList<campDataBean> selCar(int num) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		ArrayList<campDataBean> list = new ArrayList<campDataBean>();
		try {
			conn = getConnection(); // DB 연결

			String sql = "SELECT * FROM CAMPINGCAR WHERE compid=?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();

			// 수정이 필요한 메소드
			while (rs.next()) {
				campDataBean sdb = new campDataBean();
				sdb.setCampCarId(rs.getInt(1));
				sdb.setCampCarName(rs.getString(3));
				sdb.setCampCarType(rs.getString(4));
				sdb.setCampCarNumber(rs.getString(5));
				sdb.setCampCarDate(rs.getString(6));
				sdb.setPeopleRide(rs.getInt(7));
				sdb.setCarRentalCost(rs.getInt(8));
				sdb.setCompId(rs.getInt(9));
				sdb.setCampcarinfo(rs.getString(10));;
				sdb.setRentalStatus(rs.getInt(11));
				sdb.setcamp_image(rs.getString(2));

				list.add(sdb);
			}
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}

		return list;
	}
	
	public ArrayList<campDataBean> selCar() throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		ArrayList<campDataBean> list = new ArrayList<campDataBean>();
		try {
			conn = getConnection(); // DB 연결

			String sql = "SELECT * FROM CAMPINGCAR";

			pstmt = conn.prepareStatement(sql);
	
			rs = pstmt.executeQuery();

			
			// 수정이 필요한 메소드
			while (rs.next()) {
				campDataBean sdb = new campDataBean();
				sdb.setCampCarId(rs.getInt(1));
				sdb.setCampCarName(rs.getString(3));
				sdb.setCampCarType(rs.getString(4));
				sdb.setCampCarNumber(rs.getString(5));
				sdb.setCampCarDate(rs.getString(6));
				sdb.setPeopleRide(rs.getInt(7));
				sdb.setCarRentalCost(rs.getInt(8));
				sdb.setCompId(rs.getInt(9));
				sdb.setCampcarinfo(rs.getString(10));
				sdb.setRentalStatus(rs.getInt(11));

				list.add(sdb);
			}

			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}

		return list;
	}
	
	// 고객의 이용이력 정보를 조회하는 메소드
		public ArrayList<campDataBean> selCustHis(String email) throws SQLException {
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;

			ArrayList<campDataBean> list = new ArrayList<campDataBean>();

			try {
				conn = getConnection(); // DB 연결

				String sql = "select * from v_his where 이메일 = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1,email);

				rs = pstmt.executeQuery();

				// 수정이 필요한 메소드
				while (rs.next()) {
					campDataBean sdb = new campDataBean();
					sdb.setCustEmail(rs.getString(1));
					sdb.setRentalNumber(rs.getInt(2));
					sdb.setRentalStart(rs.getString(3));
					sdb.setRentalEnd(rs.getString(4));
					sdb.setCampCarName(rs.getString(5));
					sdb.setCompName(rs.getString(6));
					sdb.setRentalCost(rs.getInt(7));
					sdb.setRentalEtcCost(rs.getInt(8));
					list.add(sdb);

				}
				pstmt.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if (rs != null)
					try {
						rs.close();
					} catch (SQLException ex) {
					}
				if (pstmt != null)
					try {
						pstmt.close();
					} catch (SQLException ex) {
					}
				if (conn != null)
					try {
						conn.close();
					} catch (SQLException ex) {
					}
			}

			return list;
		}

	// 대여여부 관계없이 고객의 이용이력 정보를 조회하는 메소드
	public ArrayList<campDataBean> selCustHis2(String email) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		ArrayList<campDataBean> list = new ArrayList<campDataBean>();

		try {
			conn = getConnection(); // DB 연결

			String sql = "select * from v_his2 where 이메일 = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,email);

			rs = pstmt.executeQuery();

			// 수정이 필요한 메소드
			while (rs.next()) {
				campDataBean sdb = new campDataBean();
				sdb.setCustEmail(rs.getString(1));
				sdb.setRentalNumber(rs.getInt(2));
				sdb.setRentalStart(rs.getString(3));
				sdb.setRentalEnd(rs.getString(4));
				sdb.setCampCarName(rs.getString(5));
				sdb.setCampCarNumber(rs.getString(6));
				sdb.setCompName(rs.getString(7));
				sdb.setCompManager(rs.getString(8));
				sdb.setCompCall(rs.getString(9));
				sdb.setRentalCost(rs.getInt(10));
				sdb.setRentalEtcCost(rs.getInt(11));
				sdb.setRentalState(rs.getString(12));
				list.add(sdb);

			}
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}

		return list;
	}
	
	// 대여중인 대여 정보를 조회하는 메소드
	public ArrayList<campDataBean> selRentNow(String email) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		ArrayList<campDataBean> list = new ArrayList<campDataBean>();

		try {
			conn = getConnection(); // DB 연결

			String sql = "select * from v_his3 where 예약상태 = '대여' and 이메일 = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,email);

			rs = pstmt.executeQuery();

			// 수정이 필요한 메소드
			while (rs.next()) {
				campDataBean sdb = new campDataBean();
				sdb.setCustEmail(rs.getString(1));
				sdb.setCustName(rs.getString(2));
				sdb.setRentalNumber(rs.getInt(3));
				sdb.setRentalStart(rs.getString(4));
				sdb.setRentalEnd(rs.getString(5));
				sdb.setCampCarName(rs.getString(6));
				sdb.setCampCarNumber(rs.getString(7));
				sdb.setCompName(rs.getString(8));
				sdb.setCompManager(rs.getString(9));
				sdb.setCompCall(rs.getString(10));
				sdb.setRentalCost(rs.getInt(11));
				sdb.setRentalEtcCost(rs.getInt(12));
				sdb.setRentalPayDate(rs.getString(13));
				sdb.setRentalState(rs.getString(14));
				list.add(sdb);

			}
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}

		return list;
	}
	// 대여중인 대여 정보를 조회하는 메소드
	public ArrayList<campDataBean> selRentNow() throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		ArrayList<campDataBean> list = new ArrayList<campDataBean>();

		try {
			conn = getConnection(); // DB 연결

			String sql = "select * from v_his3 where 예약상태 = '대여'";
			pstmt = conn.prepareStatement(sql);

			rs = pstmt.executeQuery();

			// 수정이 필요한 메소드
			while (rs.next()) {
				campDataBean sdb = new campDataBean();
				sdb.setCustEmail(rs.getString(1));
				sdb.setCustName(rs.getString(2));
				sdb.setRentalNumber(rs.getInt(3));
				sdb.setRentalStart(rs.getString(4));
				sdb.setRentalEnd(rs.getString(5));
				sdb.setCampCarName(rs.getString(6));
				sdb.setCampCarNumber(rs.getString(7));
				sdb.setCompName(rs.getString(8));
				sdb.setCompManager(rs.getString(9));
				sdb.setCompCall(rs.getString(10));
				sdb.setRentalCost(rs.getInt(11));
				sdb.setRentalEtcCost(rs.getInt(12));
				sdb.setRentalPayDate(rs.getString(13));
				sdb.setRentalState(rs.getString(14));
				list.add(sdb);

			}
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}

		return list;
	}

	// 대여 내역을 조회하는 메소드
	public ArrayList<campDataBean> selRentBD(String email) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		ArrayList<campDataBean> list = new ArrayList<campDataBean>();

		try {
			conn = getConnection(); // DB 연결

			String sql = "select * from v_his3 where 이메일 = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,email);

			rs = pstmt.executeQuery();

			// 수정이 필요한 메소드
			while (rs.next()) {
				campDataBean sdb = new campDataBean();
				sdb.setCustEmail(rs.getString(1));
				sdb.setCustName(rs.getString(2));
				sdb.setRentalNumber(rs.getInt(3));
				sdb.setRentalStart(rs.getString(4));
				sdb.setRentalEnd(rs.getString(5));
				sdb.setCampCarName(rs.getString(6));
				sdb.setCampCarNumber(rs.getString(7));
				sdb.setCompName(rs.getString(8));
				sdb.setCompManager(rs.getString(9));
				sdb.setCompCall(rs.getString(10));
				sdb.setRentalCost(rs.getInt(11));
				sdb.setRentalEtcCost(rs.getInt(12));
				sdb.setRentalPayDate(rs.getString(13));
				sdb.setRentalState(rs.getString(14));
				list.add(sdb);

			}
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}

		return list;
	}

	// 대여 내역을 조회하는 메소드
	public ArrayList<campDataBean> selRentBD() throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		ArrayList<campDataBean> list = new ArrayList<campDataBean>();

		try {
			conn = getConnection(); // DB 연결

			String sql = "select * from v_his3";
			pstmt = conn.prepareStatement(sql);

			rs = pstmt.executeQuery();

			// 수정이 필요한 메소드
			while (rs.next()) {
				campDataBean sdb = new campDataBean();
				sdb.setCustEmail(rs.getString(1));
				sdb.setCustName(rs.getString(2));
				sdb.setRentalNumber(rs.getInt(3));
				sdb.setRentalStart(rs.getString(4));
				sdb.setRentalEnd(rs.getString(5));
				sdb.setCampCarName(rs.getString(6));
				sdb.setCampCarNumber(rs.getString(7));
				sdb.setCompName(rs.getString(8));
				sdb.setCompManager(rs.getString(9));
				sdb.setCompCall(rs.getString(10));
				sdb.setRentalCost(rs.getInt(11));
				sdb.setRentalEtcCost(rs.getInt(12));
				sdb.setRentalPayDate(rs.getString(13));
				sdb.setRentalState(rs.getString(14));
				list.add(sdb);

			}
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}

		return list;
	}	
	
	
	// 정비소 정보 전체를 조회하는 메소드
	public ArrayList<campDataBean> selRepair() throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		ArrayList<campDataBean> list = new ArrayList<campDataBean>();

		try {
			conn = getConnection(); // DB 연결

			String sql = "select * from repairshop";
			
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();

			// 수정이 필요한 메소드
			while (rs.next()) {
				campDataBean sdb = new campDataBean();
				sdb.setRepairShopId(rs.getInt(1));
				sdb.setRepairShopName(rs.getString(2));
				sdb.setRepairShopAddress(rs.getString(3));
				sdb.setRepairShopCall(rs.getString(4));
				sdb.setRepairManager(rs.getString(5));
				sdb.setRepairManagerEmail(rs.getString(6));
				sdb.setShopImage(rs.getString(7));
				list.add(sdb);

			}
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}

		return list;
	}
	
	// 정비내역 조회하는 메소드
	public ArrayList<campDataBean> selVRepair(String email) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		ArrayList<campDataBean> list = new ArrayList<campDataBean>();

		try {
			conn = getConnection(); // DB 연결

			String sql = "select * from v_repair where 이메일 = ?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,email);
			
			
			rs = pstmt.executeQuery();
			
			// 수정이 필요한 메소드
			while (rs.next()) {
				campDataBean sdb = new campDataBean();
				sdb.setRepairNumber(rs.getInt(1));
				sdb.setRepairDate(rs.getString(2));
				sdb.setCampCarNumber(rs.getString(3));
				sdb.setCampCarName(rs.getString(4));
				sdb.setCustName(rs.getString(5));
				sdb.setRepairShopName(rs.getString(6));
				sdb.setRepairHistory(rs.getString(7));
				sdb.setRepairShopCall(rs.getString(8));
				sdb.setRepairCost(rs.getInt(9));
				sdb.setRepairPayDate(rs.getString(10));
				sdb.setCustEmail(rs.getString(11));
				sdb.setRentalState(rs.getString(12));
				list.add(sdb);

			}
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}

		return list;
	}
	
	// 예약상태인 정비내역 조회하는 메소드
	public ArrayList<campDataBean> selVRepair() throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		ArrayList<campDataBean> list = new ArrayList<campDataBean>();

		try {
			conn = getConnection(); // DB 연결

			String sql = "select * from v_repair";

			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			// 수정이 필요한 메소드
			while (rs.next()) {
				campDataBean sdb = new campDataBean();
				sdb.setRepairNumber(rs.getInt(1));
				sdb.setRepairDate(rs.getString(2));
				sdb.setCampCarNumber(rs.getString(3));
				sdb.setCampCarName(rs.getString(4));
				sdb.setCustName(rs.getString(5));
				sdb.setRepairShopName(rs.getString(6));
				sdb.setRepairHistory(rs.getString(7));
				sdb.setRepairShopCall(rs.getString(8));
				sdb.setRepairCost(rs.getInt(9));
				sdb.setRepairPayDate(rs.getString(10));
				sdb.setCustEmail(rs.getString(11));
				sdb.setRepairState(rs.getString(12));
				list.add(sdb);

			}
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}

		return list;
	}
	
	
	// 예약상태인 정비내역 null인지 확인하는 메소드
		public Boolean selVRepairCheck_null() throws SQLException {
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			Boolean think = false;

			try {
				conn = getConnection(); // DB 연결

				String sql = "select * from v_repair where 상태 = '승인'";

				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				
				 think = rs.next();
					pstmt.close();
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if (rs != null)
					try {
						rs.close();
					} catch (SQLException ex) {
					}
				if (pstmt != null)
					try {
						pstmt.close();
					} catch (SQLException ex) {
					}
				if (conn != null)
					try {
						conn.close();
					} catch (SQLException ex) {
					}
			}

			return think;
		}

	
	
	
	
	// 예약상태인 정비내역 조회하는 메소드
	public ArrayList<campDataBean> selVRepairCheck() throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		ArrayList<campDataBean> list = new ArrayList<campDataBean>();

		try {
			conn = getConnection(); // DB 연결

			String sql = "select * from v_repair where 상태 = '승인'";

			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			// 수정이 필요한 메소드
			while (rs.next()) {
				campDataBean sdb = new campDataBean();
				sdb.setRepairNumber(rs.getInt(1));
				sdb.setRepairDate(rs.getString(2));
				sdb.setCampCarNumber(rs.getString(3));
				sdb.setCampCarName(rs.getString(4));
				sdb.setCustName(rs.getString(5));
				sdb.setRepairShopName(rs.getString(6));
				sdb.setRepairHistory(rs.getString(7));
				sdb.setRepairShopCall(rs.getString(8));
				sdb.setRepairCost(rs.getInt(9));
				sdb.setRepairPayDate(rs.getString(10));
				sdb.setCustEmail(rs.getString(11));
				sdb.setRentalState(rs.getString(12));
				list.add(sdb);

			}
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}

		return list;
	}

	// 대여가능한 캠핑카 조회 메소드
	public ArrayList<campDataBean> selRentCar() throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		ArrayList<campDataBean> list = new ArrayList<campDataBean>();

		try {
			conn = getConnection(); // DB 연결

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
				sdb.setCampCarNumber(rs.getString(5));
				sdb.setCampCarDate(rs.getString(6));
				sdb.setPeopleRide(rs.getInt(7));
				sdb.setCarRentalCost(rs.getInt(8));
				sdb.setRentalStatus(rs.getInt(9));
				list.add(sdb);

			}
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}

		return list;
	}

	// 캠핑카 대여정보 조회 메소드

	public ArrayList<campDataBean> selRentInfo() throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		ArrayList<campDataBean> list = new ArrayList<campDataBean>();

		try {
			conn = getConnection(); // DB 연결

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
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}

		return list;
	}
	
	//  캠핑카 해당 대여 아이디

	public ArrayList<campDataBean> selcampCar_id(String licensenumber) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		ArrayList<campDataBean> list = new ArrayList<campDataBean>();

		try {
			conn = getConnection(); // DB 연결

			String sql = "select r.campcarid,r.rentalnumber,c.campcarname from rental r,campingcar c where c.campcarid = r.campcarid and licensenumber = ? and c.rentalstatus = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,licensenumber);
			pstmt.setInt(2,1);
			rs = pstmt.executeQuery();

			// 수정이 필요한 메소드
			while (rs.next()) {
				campDataBean sdb = new campDataBean();
				
				sdb.setCampCarId((rs.getInt(1))); // 대여번호
				sdb.setRentalNumber((rs.getInt(2)));  // 렌탈넘버
				sdb.setCampCarName((rs.getString(3)));  // 캠핑카이름
				list.add(sdb);

			}
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}

		return list;
	}


	// 고객에 의한 캠핑카 정비 의뢰 및 결과 정보를 조회하는 메소드

	public ArrayList<campDataBean> selRepairInfo() throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		ArrayList<campDataBean> list = new ArrayList<campDataBean>();

		try {
			conn = getConnection(); // DB 연결

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
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}

		return list;
	}
	

	// 해당 현재 렌탈 고객 정보가져오기
	public ArrayList<campDataBean> selCusRent(String email) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<campDataBean> list = new ArrayList<campDataBean>();
		try {
			conn = getConnection(); // DB 연결

			String sql = "select * from customer where email=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			
			
			
			rs = pstmt.executeQuery();

			
			while (rs.next()) {
				campDataBean sdb = new campDataBean();

				sdb.setLicenseNumber(rs.getString(2));

				list.add(sdb);

			}
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}

		return list;
	}
	
	public ArrayList<campDataBean> selrepairrequest() throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<campDataBean> list = new ArrayList<campDataBean>();
		try {
			conn = getConnection(); // DB 연결

			String sql = "select * from repairrequest";
			pstmt = conn.prepareStatement(sql);

			
			
			rs = pstmt.executeQuery();

			
			while (rs.next()) {				
				campDataBean sdb = new campDataBean();
				sdb.setRentalNumber(rs.getInt(1));
				sdb.setLicenseNumber(rs.getString(2));
				sdb.setCampCarId(rs.getInt(3));				
				list.add(sdb);

			}
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}

		return list;
	}
	public ArrayList<campDataBean> selNum(String licen) throws SQLException {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        ArrayList<campDataBean> list = new ArrayList<campDataBean>();
        try {
            conn = getConnection(); // DB 연결

            String sql = "select repairnumber\r\n"
                    + "from repairinfo r_if,rental rt\r\n"
                    + "where rt.licensenumber = ? and rt.licensenumber=r_if.licensenumber\r\n"
                    + "group by repairnumber";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, licen);



            rs = pstmt.executeQuery();


            while (rs.next()) {
                campDataBean sdb = new campDataBean();
                sdb.setRentalNumber(rs.getInt(1));
                sdb.setLicenseNumber(rs.getString(2));
                sdb.setCampCarId(rs.getInt(3));
                list.add(sdb);

            }
            pstmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();

        } finally {
            if (rs != null)
                try {
                    rs.close();
                } catch (SQLException ex) {
                }
            if (pstmt != null)
                try {
                    pstmt.close();
                } catch (SQLException ex) {
                }
            if (conn != null)
                try {
                    conn.close();
                } catch (SQLException ex) {
                }
        }

        return list;
    }
}
