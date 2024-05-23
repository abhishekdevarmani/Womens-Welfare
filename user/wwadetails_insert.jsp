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
 String b=request.getParameter("est");
 String c=request.getParameter("div");
 String d=request.getParameter("cty");
 //String e=request.getParameter("ass");
 
 int z=s.stm.executeUpdate("insert into wwa_details values(null,'"+a+"','"+b+"','"+c+"','"+d+"','noimg.png')");
 out.println("<script>alert('WWA Details Addedd Successfully');document.location='wwadetails_view.jsp';</script>");
 }
 %>
 
