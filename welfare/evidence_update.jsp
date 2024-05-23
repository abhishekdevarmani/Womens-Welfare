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
 String id=request.getParameter("eid");
 String a=request.getParameter("ci");
 String b=request.getParameter("el");
 String c=request.getParameter("ud");
 int z=s.stm.executeUpdate("update evidence_details set c_id='"+a+"',ev_link='"+b+"',upload_date='"+c+"' where ev_id='"+id+"'");
 out.println("<script>alert('Evidence Details Updated Successfully');document.location='evidence_view.jsp';</script>");
 }
 %>
 