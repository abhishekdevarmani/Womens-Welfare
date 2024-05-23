<%@page import="java.sql.*"%>
<%@page import="wwa.dbconnect"%>
<jsp:useBean id="s" class="wwa.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
 String a=request.getParameter("id");
 int z=s.stm.executeUpdate("delete from feedback_details where f_id='"+a+"'");
 out.println("<script>alert('feedback Details Deleted Successfully');document.location='feedback_view.jsp';</script>");
 %>
 
