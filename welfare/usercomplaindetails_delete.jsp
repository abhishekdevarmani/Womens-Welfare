<%@page import="java.sql.*"%>
<%@page import="wwa.dbconnect"%>
<jsp:useBean id="s" class="wwa.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
 String a=request.getParameter("id");
 int z=s.stm.executeUpdate("delete from usercomplain_details where c_id='"+a+"'");
 out.println("<script>alert('Complain Details Deleted Successfully');document.location='usercomplaindetails_view.jsp';</script>");
 %>
 
