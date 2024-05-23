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
 String a=request.getParameter("nm");
  String b=request.getParameter("eml");
 String c=request.getParameter("mbl");
 String d=request.getParameter("est");
 //String e=request.getParameter("div");
 String f=request.getParameter("cty");
 //String e=request.getParameter("ass"); 
 ResultSet rs=s.stm.executeQuery("select * from wwa_details where w_email='"+b+"'");
 if(rs.next())
 {
   out.println("<script>alert('Email Already Exists');history.back();</script>");
 }
 else
 {
    String ans=c.substring(c.length()-4);
	ResultSet rs1=s.stm.executeQuery("select * from wwa_details where w_mobile='"+c+"'");
	if(rs1.next())
	{
	out.println("<script>alert('Mobile No Already Exists');history.back();</script>");
	}
    else
    {
    int z=s.stm.executeUpdate("insert into wwa_details values(null,'"+a+"','"+b+"','"+c+"','"+d+"','-','"+f+"','noimg.png','nodoc.pdf','Pending')");
    int z1=s.stm.executeUpdate("insert into login values('"+b+"','"+c+"','welfare','Enter Last 4 Digits of Reg No.','"+ans+"','pending')");
    out.println("<script>alert('You Have Registered Successfully');alert('Username: Reg. Email & Password: Reg. Mobile No.');document.location='login.jsp';</script>");
 }
 }
 }
 %>
 
