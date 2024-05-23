<%@page import="java.sql.*"%>
<%@page import="wwa.dbconnect"%>
<jsp:useBean id="s" class="wwa.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
 String a=request.getParameter("id");
 int z=s.stm.executeUpdate("delete from notice_details where n_id='"+a+"'");
 out.println("<script>alert('Notice details deleted successfully');document.location='notice_view.jsp';</script>");
 %>
 

