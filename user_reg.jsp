<%@page import="java.sql.*"%>
<%@page import="wwa.dbconnect"%>
<jsp:useBean id="s" class="wwa.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
 String chk=request.getParameter("login");
 if(chk==null)
 {
 out.println("<script>history.back();</script>");
 }
 else
 {
 String a=request.getParameter("fn");
 String b=request.getParameter("ln");
 String c=request.getParameter("mbl");
 String d=request.getParameter("em");
 String e=request.getParameter("cty");
 String f=request.getParameter("dsi");
 //String g=request.getParameter("ph");
 String ans=c.substring(c.length()-4);
 ResultSet rs=s.stm.executeQuery("select * from user_details where u_mobile='"+c+"'");
 if(rs.next())
 {
   out.println("<script>alert('Mobile No. Already Exists');history.back();</script>");
 }
 else
 {
	ResultSet rs1=s.stm.executeQuery("select * from user_details where u_email='"+d+"'");
	if(rs1.next())
	{
	out.println("<script>alert('E-Mail Already Exists');history.back();</script>");
	}
	else
	{
	   int z=s.stm.executeUpdate("insert into user_details values(null,'"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','noimg.png')");
       int z1=s.stm.executeUpdate("insert into login values('"+d+"','"+c+"','user','Enter Last 4 Digits of Reg. Mobile No.','"+ans+"','active')");
       out.println("<script>alert('You have Registred Successfully');alert('Username: Reg. Email & Password: Reg. Mobile No.');document.location='login.jsp';</script>");
	}
 }
 
 }
 %>
 
