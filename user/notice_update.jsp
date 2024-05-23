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
 String id=request.getParameter("nid");
 String a=request.getParameter("nf");
 String b=request.getParameter("nn");
 String c=request.getParameter("nd");

 int z=s.stm.executeUpdate("update notice_details set n_from='"+a+"',notice='"+b+"',n_date='"+c+"' where n_id='"+id+"'");
 out.println("<script>alert('Notice Updated Successfully');document.location='notice_view.jsp';</script>");
 }
 %>
 
