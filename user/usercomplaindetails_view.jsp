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
                                <h3 class="title">User Complaints <a class="btn btn-success btn-sm" href="usercomplaindetails_form.jsp"><i class="ti-plus"></i> Add New</a></h3>
                            </div>
                            <div class="content table-responsive table-full-width">
<table class="table table-striped">
<thead>
  <tr>
    <td width="95"><div align="center"><strong>Complain Id </strong></div></td>
    <td width="100"><div align="center"><strong>Name Of User </strong></div></td>
    <td width="100"><div align="center"><strong>Association Name</strong> </strong></div></td>
    <td width="150"><div align="center"><strong>Complain Details</strong></div></td>
	<td width="100"><div align="center"><strong>Complain Date</strong></div></td>
	<td width="100"><div align="center"><strong>Complain Status</strong></div></td>
	<td width="90"><div align="center"><strong>Action</strong></div></td>
	<td width="90"><div align="center"><strong>Action</strong></div></td>
  </tr>
 </thead>
<%@page import="java.sql.*"%>
<%@page import="wwa.dbconnect"%>
<jsp:useBean id="s" class="wwa.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
int sl=0;
String rz=session.getAttribute("uname").toString();
ResultSet rs=s.stm.executeQuery("select * from usercomplain_details ucd,user_details u,wwa_details w where ucd.u_id=u.u_email and ucd.w_id=w.w_email and u.u_email='"+rz+"'");
while(rs.next())
{
int c_id=rs.getInt("c_id");
sl++;
String sts=rs.getString("c_status");
%>
<tbody>
  <tr>
    <td height="42"><div align="center"><%=sl%></div></td>
    <td><div align="center"><%=rs.getString("u_fname")+" "+rs.getString("u_lname")%></div></td>
    <td><div align="center"><%=rs.getString("w_name")%></div></td>
    <td><div align="center"><%=rs.getString("c_details")%></div></td>
	<td><div align="center"><%=rs.getString("c_date")%></div></td>
	 <% if(sts.equals("requested")) { %>
	<td><div align="center"><div style="background-color:blue; color:#FFFFFF; border-radius: 50px 50px; width:50%">Requested</div></div></td>
	<% } else if(sts.equals("Accepted")) { %>
	 <td width="147"><div align="center"><div style="background-color:green; color:#FFFFFF; border-radius: 50px 50px; width:50%">Accepted</div></div></td>
	 <% } else { %>
	 <td width="147"><div align="center"><div style="background-color:red; color:#FFFFFF; border-radius: 50px 50px; width:50%">Rejected</div></div></td>
	 <% } %>
	<td><div align="center"><a class="btn btn-warning" href="evidence_form.jsp?cid=<%=c_id%>"><i class="ti-upload"></i> Upload Evidence</a></div></td>
   <td><div align="center"><!--<a href="usercomplaindetails_edit.jsp?id=<%=c_id%>" class="btn btn-primary btn-sm"><i class="ti-pencil"></i> Edit </a>  --><a href="usercomplaindetails_delete.jsp?id=<%=c_id%>" class="btn btn-danger btn-sm"><i class="ti-trash"></i> Delete</a></div>
  </tr>
<%
}
%>
</tbody>
</table>
 </div>
                        </div>
                    </div>
<jsp:include page="footer.jsp"></jsp:include>
<!-- Session -->
<%
}
%>
<!-- Session -->