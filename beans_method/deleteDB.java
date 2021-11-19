package beans_method;


import java.sql.*	;
import java.util.*;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import beans.*;

public class deleteDB {

	private deleteDB() {
	}

	private static deleteDB instance = new deleteDB();

	public static deleteDB getInstance() {
		return instance;
	}

	private Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/myoracle");

		return ds.getConnection();
	}
	
	// 대여회사 삭제 기능
	public void deleteComp(campDataBean member) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = getConnection();

			String sql = "delete from campcompany where CompName=? ";
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, member.getCompId());
			pstmt.setString(2, member.getCompName());
			pstmt.setString(3, member.getCompAddress());
			pstmt.setString(4, member.getCompCall());
			pstmt.setString(5, member.getCompManager());
			pstmt.setString(6, member.getCompEmail());
			pstmt.setString(7, member.getIMAGE());

			pstmt.executeUpdate();
			
			/*rs = pstmt.executeQuery();
		    
			if(rs.next()){ 
			  String rId=rs.getString("CompId");
			  String rName=rs.getString("CompName");

		      if(CompId.equals(rId) && passwd.equals(rPasswd)){
			    sql = "delete from member where id=?";
			    pstmt = conn.prepareStatement(sql);
			    pstmt.setString(1,id);

			    pstmt.executeUpdate();*/
			
			
		} catch (Exception ex) {
			ex.printStackTrace();
		}

			
			}
		
	}







