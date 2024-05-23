<%@page import="java.sql.*"%>
<%@page import="wwa.dbconnect"%>
<jsp:useBean id="s" class="wwa.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
 String a=request.getParameter("id");
 int z=s.stm.executeUpdate("delete from donation_details where d_id='"+a+"'");
 out.println("<script>alert('Donation Details Deleted Successfully');document.location='donation_view.jsp';</script>");
 %>
 

