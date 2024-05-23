<%@page import="java.sql.*"%>
<%@page import="wwa.dbconnect"%>
<jsp:useBean id="s" class="wwa.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("id");
 int z=s.stm.executeUpdate("delete from wwa_works where ww_id='"+a+"'");
 out.println("<script>alert('WWA Work Details Deleted Successfully');document.location='wwaworks_view.jsp';</script>");
 %>
 
