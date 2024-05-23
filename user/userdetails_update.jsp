<%@page import="java.sql.*"%>
<%@page import="wwa.dbconnect"%>
<jsp:useBean id="s" class="wwa.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
 <%
  String chk=request.getParameter("Submit");
  if(chk==null)
  {
   out.println("<script>history.back();</script>");
  }
  else
  {
 String id=request.getParameter("uid");
 String a=request.getParameter("fn");
 String b=request.getParameter("ln");
 String c=request.getParameter("mbl");
// String d=request.getParameter("em");
 String e=request.getParameter("cty");
 String f=request.getParameter("dsi");
 //String g=request.getParameter("ph");
 int z=s.stm.executeUpdate("update user_details set u_fname='"+a+"',u_lname='"+b+"',u_mobile='"+c+"',u_city='"+e+"',u_designation='"+f+"' where u_id='"+id+"'");
 out.println("<script>alert('Profile Updated Successfully');document.location='my_profile.jsp';</script>");
 }
 %>
 