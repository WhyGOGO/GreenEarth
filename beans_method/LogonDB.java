package beans_method;

import java.sql.*;	

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import beans.*;

public class LogonDB {

	private static LogonDB instance = new LogonDB();

	public static LogonDB getInstance() {
		return instance;
	}

	private LogonDB() {
	}

	private Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/myoracle");

		return ds.getConnection();
	}

	// 회원가입한 정보를 DB에 추가
	public void insertMember(campDataBean member) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = getConnection(); // DB 연결

			String sql = "insert into customer(name, licenseNumber, address, phoneNumber, email, passwd) values(?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, member.getCustName());
			pstmt.setString(2, member.getLicenseNumber());
			pstmt.setString(3, member.getCustAddress());
			pstmt.setString(4, member.getCustCall());
			pstmt.setString(5, member.getCustEmail());
			pstmt.setString(6, member.getPasswd());

			pstmt.executeUpdate();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	// 회원탈퇴 기능
	public void deleteMember(String id, String passwd) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = getConnection();

			String sql = "delete from customer where email=? and passwd=?";
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, id);
			pstmt.setString(2, passwd);

			pstmt.executeUpdate();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

	}

	// 아이디 비밀번호 인증
	public int userCheck(String id, String passwd) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String dbpasswd = "";
		int x = -1;

		try {
			conn = getConnection(); // DB 연결

			pstmt = conn.prepareStatement("select passwd from customer where email = ?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				dbpasswd = rs.getString("passwd");
				if (dbpasswd.equals(passwd))
					x = 1; // 인증 성공
				else
					x = 0; // 비밀번호 틀림
			} else
				x = -1;// 해당 아이디 없음

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return x;
	}

	// 아이디 중복체크
	public int idCheck(String id) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int x = -1;

		try {
			conn = getConnection(); // DB 연결

			pstmt = conn.prepareStatement("select passwd from customer where email = ?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				x = 1; // 아이디 중복
			} else
				x = -1;// 중복 아이디 없음

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return x;
	}
	

		
		
}
