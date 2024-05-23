<title>Processing..</title>
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
 String c=request.getParameter("am");
 String d=request.getParameter("da");
 String crd=request.getParameter("cn");
 String pin=request.getParameter("sp");
 
	 ResultSet rs=s.stm.executeQuery("select * from bank_details b,user_details u where b.b_ac_holder=u.u_email and u.u_email='"+a+"' and b.b_cardnumber='"+crd+"' and b.b_spin='"+pin+"'");
	if(rs.next())
	{
		int bid=rs.getInt("b_id");
		String bl=rs.getString("b_amount");
		int blc=Integer.parseInt(bl);
		int am=Integer.parseInt(c);
		int nblc=blc-am;
		if(blc>am)
		{
			int z=s.stm.executeUpdate("insert into donation_details values(null,'"+a+"','"+b+"','"+c+"','"+d+"')");
			int z1= s.stm.executeUpdate("update bank_details set b_amount='"+nblc+"' where b_id='"+bid+"'");
			out.println("<script>alert('Donated Successfully');	document.location='donation_view.jsp';</script>");
		} 
	   else
	   {
		 out.println("<script>alert('Insufficient Balance');history.back();</script>");
	   }
	}
	else
	{
	   out.println("<script>alert('Invalid Card No. or Pin');history.back();</script>");
	}   
	 
 }
 %>
 
