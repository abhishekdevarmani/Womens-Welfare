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
 String a=request.getParameter("fn");
 String b=request.getParameter("ln");
 String c=request.getParameter("mbl");
 String d=request.getParameter("em");
 String e=request.getParameter("cty");
 String f=request.getParameter("dsi");
 //String g=request.getParameter("ph");
 
 int z=s.stm.executeUpdate("insert into user_details values(null,'"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','noimg.png')");
 out.println("<script>alert('User Details Addedd Successfully');document.location='userdetails_view.jsp';</script>");
 }
 %>
 
