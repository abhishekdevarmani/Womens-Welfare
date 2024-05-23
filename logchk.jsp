<title>Validating...</title>
<%@page import="java.sql.*"%>
<%@page import="wwa.dbconnect"%>
<jsp:useBean id="s" class="wwa.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String un=request.getParameter("uname");
String ps=request.getParameter("pass");
ResultSet rs=s.stm.executeQuery("select * from login where username='"+un+"'");
if(rs.next())
{
	ResultSet rs1=s.stm.executeQuery("select * from login where password='"+ps+"'");
	if(rs1.next())
	{
		ResultSet rs2=s.stm.executeQuery("select * from login where username='"+un+"' and password='"+ps+"' and status='active'");
		if(rs2.next())
		{
		   String utp=rs2.getString("utype");
		   session.setAttribute("uname",un);
		   if(utp.equals("admin"))
		   {
		     response.sendRedirect("admin/home.jsp");
		   }
		   else if(utp.equals("welfare"))
		   {
		     response.sendRedirect("welfare/home.jsp");
		   }
		   else if(utp.equals("user"))
		   {
		     response.sendRedirect("user/home.jsp");
		   }
		   else
		   {
		    out.println("<script>alert('Invalid Module');document.location='login.jsp';</script>");
		   }
		} 
		else
		{
		out.println("<script>alert('Sorry You dont have Permission to Access');document.location='login.jsp';</script>");
		}   
	}
	else
	{
	out.println("<script>alert('Invalid OR Wrong Password');document.location='login.jsp';</script>");
	}
}
else
{
out.println("<script>alert('Invalid Username OR Username Not Found..!');document.location='login.jsp';</script>");
}
%>