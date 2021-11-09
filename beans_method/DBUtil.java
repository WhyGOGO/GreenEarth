package beans_method;

import java.sql.*;

public class DBUtil {

	public static Connection getMySQLConnection() {
		Connection conn = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/LoginSys";
			String user = "scott";
			String pwd = "tiger";
			conn = DriverManager.getConnection(url,user,pwd);
			
		} catch (ClassNotFoundException e) {
			System.out.println("oracle 드라이버가 없습니다. <br/>");
		} catch (SQLException e) {
			System.out.println("사용자가 계정 또는 비밀번호가 일치하지 않습니다. <br/>");
		}
		return conn;
	}
	
	public static void close(Connection conn) {
		try { if(conn != null) {conn.close();} } catch(Exception e) {e.printStackTrace();}
	}
	public static void close(Statement stmt) {
		try { if(stmt != null) {stmt.close();} } catch(Exception e) {e.printStackTrace();}
	}
	public static void close(PreparedStatement pstmt) {
		try { if(pstmt != null) {pstmt.close();} } catch(Exception e) {e.printStackTrace();}
	}
	public static void close(ResultSet rs) {
		try { if(rs != null) {rs.close();} } catch(Exception e) {e.printStackTrace();}
	}	
}
