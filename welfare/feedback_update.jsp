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
 String id=request.getParameter("fid");
 String a=request.getParameter("ud");
 String b=request.getParameter("wd");
 String c=request.getParameter("fb");
 String d=request.getParameter("sd");
 String e=request.getParameter("st");

 int z=s.stm.executeUpdate("update feedback_details set u_id='"+a+"',w_id='"+b+"',feedback='"+c+"',senddate='"+d+"',status='"+e+"' where f_id='"+id+"'");
 out.println("<script>alert('feedback Details Updated Successfully');document.location='feedback_view.jsp';</script>");
 }
%>
 
