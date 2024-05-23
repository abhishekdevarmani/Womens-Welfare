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
 String a=request.getParameter("nm");
 String b=request.getParameter("uid");
 String c=request.getParameter("cn");
 String d=request.getParameter("sp");
 String e=request.getParameter("am");
 String f=request.getParameter("st");
 int z=s.stm.executeUpdate("insert into bank_details values(null,'"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"')");
  out.println("<script>alert('Bank Details Addedd Successfully');document.location='bankdetails_view.jsp';</script>");
 }
 %>
 