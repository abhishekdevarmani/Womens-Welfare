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
 String a=request.getParameter("uid");
 String b=request.getParameter("wid");
 String c=request.getParameter("am");
 String d=request.getParameter("da");
 int z=s.stm.executeUpdate("insert into donation_details values(null,'"+a+"','"+b+"','"+c+"','"+d+"')");
 out.println("<script>alert('Donation Details Addedd Successfully');document.location='donation_view.jsp';</script>");
 }
 %>
 
