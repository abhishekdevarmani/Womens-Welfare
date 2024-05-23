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
 String id=request.getParameter("did");
 String a=request.getParameter("ui");
 String b=request.getParameter("wi");
 String c=request.getParameter("am");
 String d=request.getParameter("dt");
 int z=s.stm.executeUpdate("update donation_details set u_id='"+a+"',w_id='"+b+"',amount='"+c+"',date='"+d+"' where d_id='"+id+"'");
 out.println("<script>alert('Donation Details Updated Successfully');document.location='donation_view.jsp';</script>");
 }
 %>
 