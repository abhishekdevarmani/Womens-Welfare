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
 String c=request.getParameter("cdl");
 String d=request.getParameter("da");
 String e=request.getParameter("cs");
 int z=s.stm.executeUpdate("insert into usercomplain_details values(null,'"+a+"','"+b+"','"+c+"','"+d+"','"+e+"')");
 out.println("<script>alert('Complain Details Addedd Successfully');document.location='usercomplaindetails_view.jsp';</script>");
 }
 %>
 
