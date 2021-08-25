
<%

//<%@ page include file = ../WebContent/common/include/datadase_close.inc %>

	if (rset != null) {
        try{
           rset.close();
        } catch(SQLException sqlerr) {}
     }


	if (pstmt != null) {
        try{
           pstmt.close();
        } catch(SQLException sqlerr) {}
     }


     if (conn != null) {
        try{
           conn.close();
        } catch (Exception conerr) {}
     }
  