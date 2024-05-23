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
 String id=request.getParameter("wwid");
 String a=request.getParameter("tl");
 String b=request.getParameter("dsr");
 String c=request.getParameter("ph");
 String d=request.getParameter("dt");
 
int z=s.stm.executeUpdate("update wwa_works set w_title='"+a+"',w_description='"+b+"',w_photo='"+c+"',w_date='"+d+"' where ww_id='"+id+"'");
 out.println("<script>alert('WWA Work Details Updated Successfully');document.location='wwaworks_view.jsp';</script>");
 }
 %>
 
