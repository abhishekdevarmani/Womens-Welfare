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
 String id=request.getParameter("wid");
 String a=request.getParameter("nm");
 String b=request.getParameter("est");
 String c=request.getParameter("div");
 String d=request.getParameter("cty");
 String e=request.getParameter("ass");
 
int z=s.stm.executeUpdate("update wwa_details set w_name='"+a+"',w_establishdate='"+b+"',w_divisionname='"+c+"',w_city='"+d+"',w_associationlogo='"+e+"' where w_id='"+id+"'");
 out.println("<script>alert('WWA Details Updated Successfully');document.location='wwadetails_view.jsp';</script>");
 }
 %>
 
