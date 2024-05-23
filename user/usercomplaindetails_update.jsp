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
 String id=request.getParameter("cid");
 String a=request.getParameter("uid");
 String b=request.getParameter("wi");
 String c=request.getParameter("cdl");
 String d=request.getParameter("cd");
 String e=request.getParameter("cs");
 int z=s.stm.executeUpdate("update usercomplain_details set u_id='"+a+"',w_id='"+b+"',c_details='"+c+"',c_date='"+d+"',c_status='"+e+"' where c_id='"+id+"'");
 out.println("<script>alert('Complain Details Updated Successfully');document.location='usercomplaindetails_view.jsp';</script>");
 }
 %>
 