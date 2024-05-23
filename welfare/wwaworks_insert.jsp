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
 String a=request.getParameter("wi");
 String b=request.getParameter("tl");
 String c=request.getParameter("dsr");
 //String c=request.getParameter("ph");
 String d=request.getParameter("da");
 
 int z=s.stm.executeUpdate("insert into wwa_works values(null,'"+a+"','"+b+"','"+c+"','noimg.png','"+d+"')");
 out.println("<script>alert('Work Details Addedd Successfully');document.location='wwaworks_view.jsp';</script>");
 }
 %>
 
