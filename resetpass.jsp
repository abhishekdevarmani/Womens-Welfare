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
	 String np=request.getParameter("npass");
	 String cp=request.getParameter("cpass");
     String un=request.getParameter("un");
	
	    if(np.equals(cp))
		{
		   int z=s.stm.executeUpdate("update login set password='"+np+"' where username='"+un+"'");
		   out.println("<script>alert('Password Reset Successfully');document.location='login.jsp';</script>");
		}
		else
		{
		  out.println("<script>alert('New & Confirm Password Does not matched..!');history.back();</script>");
		}
	
 }
 %>
 