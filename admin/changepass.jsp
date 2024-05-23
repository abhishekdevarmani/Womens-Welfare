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
	 String op=request.getParameter("opass");
	 String np=request.getParameter("npass");
	 String cp=request.getParameter("cpass");
     String un=session.getAttribute("uname").toString();
	 ResultSet rs=s.stm.executeQuery("select * from login where username='"+un+"' and password='"+op+"'");
	 if(rs.next())
	 {
	    if(np.equals(cp))
		{
		   int z=s.stm.executeUpdate("update login set password='"+np+"' where username='"+un+"'");
		   out.println("<script>alert('Password Changed Successfully');document.location='home.jsp';</script>");
		}
		else
		{
		  out.println("<script>alert('New & Confirm Password Does not matched..!');history.back();</script>");
		}
	 }
	 else
	 {
	   out.println("<script>alert('Invaild Old / Current Password');history.back();</script>");
	 }
 }
 %>
 