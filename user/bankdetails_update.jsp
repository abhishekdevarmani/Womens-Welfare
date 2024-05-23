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
 String id=request.getParameter("bid");
 String a=request.getParameter("nm");
 String b=request.getParameter("ac");
 String c=request.getParameter("cn");
 String d=request.getParameter("sp");
 String e=request.getParameter("am");
 String f=request.getParameter("st");
 int z=s.stm.executeUpdate("update bank_details set b_name='"+a+"',b_ac_holder='"+b+"',b_cardnumber='"+c+"',b_spin='"+d+"',b_amount='"+e+"',b_status='"+f+"' where b_id='"+id+"'");
 out.println("<script>alert('Bank Details Updated Successfully');document.location='bankdetails_view.jsp';</script>");
 }
 %>
 