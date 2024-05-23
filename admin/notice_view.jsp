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
                                <h3 class="title">Notice Details <a class="btn btn-success btn-sm" href="notice_form.jsp"><i class="ti-plus"></i> Send New</a></h3>
                            </div>
                            <div class="content table-responsive table-full-width">
<table class="table table-striped">
<thead>
  <tr>
    <th width="79"><div align="center"><strong>SL.No</strong></div></th>
    <th width="79"><div align="center"><strong>Notice From</strong></div></th>
    <th width="73"><div align="center"><strong> Notice</strong></div></th>
    <th width="120"><div align="center"><strong>Notice Date</strong></div></th>
    <th width="82"><div align="center"><strong>Action</strong></div></th>
  </tr>
  </thead>
<%@page import="java.sql.*"%>
<%@page import="wwa.dbconnect"%>
<jsp:useBean id="s" class="wwa.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
int sl=0;
ResultSet rs=s.stm.executeQuery("select * from notice_details");
while(rs.next())
{
int n_id=rs.getInt("n_id");
sl++;
%>
<tbody>
  <tr>
    <td height="42"><div align="center"><%=sl%></div></td>
    <td><div align="center"><%=rs.getString("n_from")%></div></td>
    <td><div align="center"><%=rs.getString("notice")%></div></td>
    <td><div align="center"><%=rs.getString("n_date")%></div></td>
    <td><div align="center"><!--<a href="notice_edit.jsp?id=<%=n_id%>" class="btn btn-primary btn-sm"><i class="ti-pencil"></i>Edit</a>  --><a href="notice_delete.jsp?id=<%=n_id%>" class="btn btn-danger btn-sm"><i class="ti-trash"></i> Delete</a></div>
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

