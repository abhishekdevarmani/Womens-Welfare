<!-- Session Start -->
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
if(session.getAttribute("uname")==null)
{
out.println("<script>alert('Session Expired');document.location='../index.jsp';</script>");
}
else
{
%>
<!-- Session End -->

<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar_and_topbar.jsp"></jsp:include>

<div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h3 class="title">Donation Details <!--<a class="btn btn-success btn-sm" href="donation_form.jsp"><i class="ti-plus"></i> Add New</a> --></h3>
                            </div>
                            <div class="content table-responsive table-full-width">
<table class="table table-striped">
<thead>
  <tr>
    <th width="79"><div align="center"><strong>SL.No </strong></div></th>
    <th width="79"><div align="center"><strong>User Name </strong></div></th>
    <th width="73"><div align="center"><strong>Women's Welfare </strong></div></th>
    <th width="120"><div align="center"><strong>Amount </strong></div></th>
    <th width="104"><div align="center"><strong>Date </strong></div></th>
	<!--<th width="82"><div align="center"><strong>Action</strong></div></th> -->
    </tr>
 </thead>
<%@page import="java.sql.*"%>
<%@page import="wwa.dbconnect"%>
<jsp:useBean id="s" class="wwa.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
int sl=0;
String rz=session.getAttribute("uname").toString();
ResultSet rs=s.stm.executeQuery("select * from donation_details d,user_details u,wwa_details w where d.u_id=u.u_email and d.w_id=w.w_email and w.w_email='"+rz+"'");
while(rs.next())
{
int d_id=rs.getInt("d_id");
sl++;
%>
  <tr>
    <td height="42"><div align="center"><%=sl%></div></td>
    <td><div align="center"><%=rs.getString("u_fname")+" "+rs.getString("u_lname")%></div></td>
    <td><div align="center"><%=rs.getString("w_name")%></div></td>
    <td><div align="center"><%=rs.getString("amount")%> /-</div></td>
    <td><div align="center"><%=rs.getString("date")%></div></td>
<!--   <td><div align="center"><a href="donation_edit.jsp?id=<%=d_id%>" class="btn btn-primary btn-sm"><i class="ti-pencil"></i> Edit </a> <a onClick="return confirm('Are you sure?')" href="donation_delete.jsp?id=<%=d_id%>" class="btn btn-danger btn-sm"><i class="ti-trash"></i>Delete</a></div></td>
 -->  </tr>
<%
}
%>
</tbody>					
</table>
</br>
 <%
	ResultSet rs2=s.stm.executeQuery("select sum(amount) from donation_details where w_id='"+rz+"'");
	rs2.next();
	int c2=rs2.getInt(1);
 %>
 <p style="margin-left:10px; font-size:22px; color:#0066FF">Total Donation: <%=c2%> /-</p>
 </div>
                        </div>
                    </div>
<jsp:include page="footer.jsp"></jsp:include>
<!-- Session -->
<%
}
%>
<!-- Session -->
