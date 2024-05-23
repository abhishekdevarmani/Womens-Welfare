<%@page import="java.sql.*"%>
<%@page import="wwa.dbconnect"%>
<jsp:useBean id="s" class="wwa.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("id");
 int z=s.stm.executeUpdate("delete from user_details where u_id='"+a+"'");
 out.println("<script>alert('User Details Deleted Successfully');document.location='userdetails_view.jsp';</script>");
 %>
 
