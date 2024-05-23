<%@page import="java.sql.*"%>
<%@page import="wwa.dbconnect"%>
<jsp:useBean id="s" class="wwa.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
 String id=request.getParameter("cid");
 String pr=request.getParameter("pr");
 if(pr.equals("ac"))
 {
   int z=s.stm.executeUpdate("update usercomplain_details set c_status='Accepted' where c_id='"+id+"'");
   response.sendRedirect("usercomplaindetails_view.jsp");
 }
 else if(pr.equals("rj"))
 {
   int z=s.stm.executeUpdate("update usercomplain_details set c_status='Rejected' where c_id='"+id+"'");
   response.sendRedirect("usercomplaindetails_view.jsp");
 }
 else
 {
  response.sendRedirect("usercomplaindetails_view.jsp");
 }
 %>
 
