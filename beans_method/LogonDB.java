package beans_method;

import java.sql.*;

import beans.logonDataBean;

public class LogonDB {

	private static LogonDB instance = new LogonDB();

	public static LogonDB getInstance() {
		return instance;
	}

	private LogonDB() {
	}
	
	//회원가입한 정보를 DB에 추가
	public void insertMember(logonDataBean member) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;

		conn = DBUtil.getMySQLConnection(); // DB 연결
		String sql ="insert into customer(customerid, passwd, name, licenseNumber, address, phoneNumber, email) values(?,?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		
		
		pstmt.setString(1, member.getId());
		pstmt.setString(2, member.getPasswd());
		pstmt.setString(3, member.getName());
		pstmt.setString(4, member.getLicenseNumber());
		pstmt.setString(5, member.getAddress());
		pstmt.setString(6, member.getPhone());
		pstmt.setString(7, member.getEmail());

		pstmt.executeUpdate();
	}
	
	//회원탈퇴 기능
	public void deleteMember(String id, String passwd) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		conn = DBUtil.getMySQLConnection(); // DB 연결
		String sql = "delete from customer where id=? and passwd=?";
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, id);
		pstmt.setString(2, passwd);
		
		pstmt.executeUpdate();
		
	}

	// 아이디 비밀번호 인증
	public int userCheck(String id, String passwd) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String dbpasswd = "";
		int x = -1;

		try {
			conn = DBUtil.getMySQLConnection(); // DB 연결

			pstmt = conn.prepareStatement("select passwd from customer where id = ?");
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
			conn = DBUtil.getMySQLConnection(); // DB 연결

			pstmt = conn.prepareStatement("select passwd from customer where id = ?");
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
