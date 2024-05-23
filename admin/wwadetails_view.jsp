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
                                <h3 class="title">WWA Details<!-- <a class="btn btn-success btn-sm" href="wwadetails_form.jsp"><i class="ti-plus"></i> Add New</a> --></h3>
                            </div>
                            <div class="content table-responsive table-full-width">
<table class="table table-striped">
<thead>
    <tr>
      <td width="80"><div align="center"><strong>SL.No</strong></div></td>
      <td width="127"><div align="center"><strong>Women's Welfare Name</strong></div></td>
      <td width="132"><div align="center"><strong>Established Date</strong></div></td>
      <td width="152"><div align="center"><strong>Email</strong></div></td>
	   <td width="82"><div align="center"><strong>Mobile.</strong></div></td>
	   <td width="82"><div align="center"><strong>City</strong></div></td>
      <td width="147"><div align="center"><strong>Logo</strong></div></td>
	  <td width="147"><div align="center"><strong>Status</strong></div></td>
	   <td width="147"><div align="center"><strong>Action</strong></div></td>
    </tr>
  </thead>
<%@page import="java.sql.*"%>
<%@page import="wwa.dbconnect"%>
<jsp:useBean id="s" class="wwa.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
int sl=0;
ResultSet rs=s.stm.executeQuery("select * from wwa_details");
while(rs.next())
{
int w_id=rs.getInt("w_id");
sl++;
String eml=rs.getString("w_email");
String sts=rs.getString("w_status");
%>
<tbody>
    <tr>
      <td><div align="center"><%=sl%></div></td>
      <td><div align="center"><%=rs.getString("w_name")%></div></td>
      <td><div align="center"><%=rs.getString("w_establishdate")%></div></td>
      <td><div align="center"><%=eml%></div></td>
	  <td><div align="center"><%=rs.getString("w_mobile")%></div></td>
      <td><div align="center"><%=rs.getString("w_city")%></div></td>
      <td><div align="center"><img class="img-wfs" src="../uploads/<%=rs.getString("w_associationlogo")%>" width="120px" height="80px"/></div></td>
	  <% if(sts.equals("Pending")) { %>
	  <td width="147"><div align="center"><div style="background-color:blue; color:#FFFFFF; border-radius: 50px 50px; width:50%">Pending</div></div></td>
     <td width="147"><div align="center"><a onclick="return confirm('Are you sure?')" href="wwa_prms.jsp?id=<%=eml%>&pr=ac" class="btn btn-success btn-sm"><i class="ti-check"></i> Accept</a> <a onclick="return confirm('Are you sure?')" href="wwa_prms.jsp?id=<%=eml%>&pr=rj" class="btn btn-danger btn-sm"><i class="ti-close"></i> Reject</a></div></td> 
	 <% } else if(sts.equals("Accepted")) { %>
	 <td width="147"><div align="center"><div style="background-color:green; color:#FFFFFF; border-radius: 50px 50px; width:50%">Accepted</div></div></td>
	 <td><div align="center">-</div></td>
	 <% } else { %>
	 <td width="147"><div align="center"><div style="background-color:red; color:#FFFFFF; border-radius: 50px 50px; width:50%">Rejected</div></div></td>
	 <td><div align="center">-</div></td>
	 <% } %>
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
