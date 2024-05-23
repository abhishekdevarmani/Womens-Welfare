<%@page import="java.sql.*"%>
<%@page import="wwa.dbconnect"%>
<jsp:useBean id="s" class="wwa.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
 String un=request.getParameter("id");
 String pr=request.getParameter("pr");
 if(pr.equals("ac"))
 {
   int z=s.stm.executeUpdate("update wwa_details set w_status='Accepted' where w_email='"+un+"'");
   int z1=s.stm.executeUpdate("update login set status='active' where username='"+un+"'");
   response.sendRedirect("wwadetails_view.jsp");
 }
 else if(pr.equals("rj"))
 {
   int z=s.stm.executeUpdate("update wwa_details set w_status='Rejected' where w_email='"+un+"'");
   int z1=s.stm.executeUpdate("update login set status='rejected' where username='"+un+"'");
   response.sendRedirect("wwadetails_view.jsp");
 }
 else
 {
  response.sendRedirect("wwadetails_view.jsp");
 }
 %>
 
