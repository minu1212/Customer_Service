<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*" %>

<%@ page import="src.dbconnclose.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑몰 데이터베이스(shopmall) 삭제 (shopmall_db_drop.jsp)</title>
</head>

<body>


<%

Connection conn = null;
PreparedStatement pstmt = null;

conn = DbConnClose.getConnection();

try {
	String sql  = "DROP DATABASE shopmall";
	pstmt = conn.prepareStatement(sql);
	pstmt.executeUpdate();
	out.print("쇼핑몰데이터베이스 삭제 성공<br>");
	
}catch (SQLException sqlerr) {
	out.print("SQL 질의처리 오류!" + sqlerr.getMessage());
	
}finally {
	DbConnClose.resourceClose(pstmt,conn);
}


%>
</body>
</html>