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
 String c=request.getParameter("fb");
 String d=request.getParameter("da");
 String e=request.getParameter("st");
 int z=s.stm.executeUpdate("insert into feedback_details values(null,'"+a+"','"+b+"','"+c+"','"+d+"','"+e+"')");
 out.println("<script>alert('feedback Details Addedd Successfully');document.location='feedback_view.jsp';</script>");
 }
 %>
 
