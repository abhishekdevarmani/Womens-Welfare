<%@page import="java.sql.*"%>
<%@page import="wwa.dbconnect"%>
<jsp:useBean id="s" class="wwa.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
 String a=request.getParameter("id");
 int z=s.stm.executeUpdate("delete from evidence_details where ev_id='"+a+"'");
 out.println("<script>alert('Evidence Details Deleted Successfully');document.location='evidence_view.jsp';</script>");
 %>
 

