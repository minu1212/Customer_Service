<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑몰데이터베이스(shopmall) DB 생성(shopmall_db_create.jap)</title>
</head>

<body>
	<%
	
	//JDBC 드라이버 로딩(loading JDBC driver)
	String driverClass = "org.mariadb.jdbc.Driver";
	
	try {
		Class.forName(driverClass);
		out.println("JDBC Driver loading 성공! <br>");
	} catch (ClassNotFoundException err) {
		out.println("JDBC Dricer loading 실패!!....WEB-INF/lib 폴더 확인<br>");
	}
	
	
	//MariaDB  서버연결(connect server)
	//"jdbc:mariadb://server_IP"3306/database_name
	String url = "jdbc:mariadb://localhost:3306/";
	String id = "root";
	String pw = "0000";
	
	//객체 참조 변수
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	try {
		conn = DriverManager.getConnection(url,id,pw);
		
		//SQL 질의어 처리(Perform SQL query(DDL))
		//쇼핑몰데이터베이스(shopmall) 스키마 생성
		String sql = "CREATE DATABASE shopmall";
		pstmt = conn.prepareStatement(sql);
		pstmt.executeUpdate();
		out.println("쇼핑몰데이터베이스(shopmall) 생성 성공 !<br>");
		
	}catch (SQLException sqlerr) {
		out.println("쇼핑몰데이터베이스(shopmall) 생성 실패 !" + sqlerr.getMessage() + "<br>");
		
	}finally {
		//데이터베이스 연결 종료 (close database)
		if (pstmt != null) try {pstmt.close();} catch (SQLException sqlerr) {}
		if (conn != null) try {conn.close();} catch (SQLException sqlerr) {}
	}
	%>



</body>
</html>