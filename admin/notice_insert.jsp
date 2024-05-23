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
 String a=request.getParameter("nf");
 String b=request.getParameter("nn");
 String c=request.getParameter("da");
 int z=s.stm.executeUpdate("insert into notice_details values(null,'"+a+"','"+b+"','"+c+"')");
 out.println("<script>alert('Notice Sent Successfully');document.location='notice_view.jsp';</script>");
 }
 %>
 
