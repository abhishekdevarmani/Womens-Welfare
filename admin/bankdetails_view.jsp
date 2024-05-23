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
                                <h3 class="title">Bank Details <a class="btn btn-success btn-sm" href="bankdetails_form.jsp"><i class="ti-plus"></i> Add New</a></h3>
                            </div>
                            <div class="content table-responsive table-full-width">
<table class="table table-striped">
<thead>
    <tr>
      <th width="80"><div align="center"><strong>Sl. No.</strong></div></th>
      <th width="120"><div align="center"><strong>Bank Name</strong></div></th>
      <th width="120"><div align="center"><strong>Account Holder</strong></div></th>
      <th width="80"><div align="center"><strong>Card Number</strong></div></th>
      <th width="100"><div align="center"><strong>Security pin</strong></div></th>
      <th width="80"><div align="center"><strong>Amount</strong></div></th>
      <th width="80"><div align="center"><strong>Status</strong></div></th>
      <th width="90"><div align="center"><strong>Action</strong></div></th>
    </tr>
</thead>
<%@page import="java.sql.*"%>
<%@page import="wwa.dbconnect"%>
<jsp:useBean id="s" class="wwa.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
int sl=0;
ResultSet rs=s.stm.executeQuery("select * from bank_details b,user_details u where b.b_ac_holder=u.u_id");
while(rs.next())
{
int b_id=rs.getInt("b_id");
sl++;
%>
<tbody>
    <tr>
      <td><div align="center"><%=sl%></div></td>
      <td><div align="center"><%=rs.getString("b_name")%></div></td>
      <td><div align="center"><%=rs.getString("u_fname")+" "+rs.getString("u_lname")%></div></td>
      <td><div align="center"><%=rs.getString("b_cardnumber")%></div></td>
      <td><div align="center"><%=rs.getString("b_spin")%></div></td>
      <td><div align="center"><%=rs.getString("b_amount")%></div></td>
      <td><div align="center"><%=rs.getString("b_status")%></div></td>
      <td width="201"><div align="center"><a href="bankdetails_edit.jsp?id=<%=b_id%>" class="btn btn-primary btn-sm"><i class="ti-pencil"></i> Edit</a>  <a onClick="return confirm('Are you sure?')" href="bankdetails_delete.jsp?id=<%=b_id%>" class="btn btn-danger btn-sm"><i class="ti-trash"></i> Delete</a> </div></td>
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
