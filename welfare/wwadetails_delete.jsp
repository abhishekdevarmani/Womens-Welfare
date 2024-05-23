<%@page import="java.sql.*"%>
<%@page import="wwa.dbconnect"%>
<jsp:useBean id="s" class="wwa.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("id");
 int z=s.stm.executeUpdate("delete from wwa_details where w_id='"+a+"'");
 out.println("<script>alert('WWA Details Deleted Successfully');document.location='wwadetails_view.jsp';</script>");
 %>
 
