package src.dbconnclose;  //패키지 이름(소문자)

import java.sql.*;

public class DbConnClose {//클래스 이름(대문자)

		public static Connection getConnection() {

			//JDBC드라이버 로딩
		String driverClass = "org.mariadb.jdbc.Driver";
		  
		  try{
		     Class.forName(driverClass);
		  } catch (ClassNotFoundException err) {
		     System.out.println("JDBC Driver 로딩 오류!!" + err.getMessage());
		  }
		  
		  
		  //MariaDB 서버와 데이터 연결
		  String url = "jdbc:mariadb://localhost:3306/shopmall";
		  String id = "root";
		  String pw = "0000";
		  
		  Connection conn = null;
		  
		   try{
		     conn = DriverManager.getConnection(url, id, pw);
		  } catch (SQLException sqlerr) {
		     System.out.println("데이터 베이스 연결오류!" + sqlerr.getMessage());
		  } 
		 return conn;
		}
		
		//데이터 베이스 연결종료
		
		public static void resourceClose(ResultSet rset, Statement stmt, Connection conn) {
										//메소드 오버라이딩 
			try {
				if (rset != null) rset.close();
				if (stmt != null) stmt.close();
				if (conn != null) conn.close();
			}catch (SQLException sqlerr) {
				System.out.println("데이터베이스 종료 오류! " + sqlerr.getMessage());
			}
		}
		
		public static void resourceClose(Statement stmt, Connection conn) {
										//메소드 오버라이딩 				
			try {
				if (stmt != null) stmt.close();
				if (conn != null) conn.close();
			}catch (SQLException sqlerr) {
				System.out.println("데이터베이스 종료 오류! " + sqlerr.getMessage());
			}
		}
		
}
