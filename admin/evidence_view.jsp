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
                                <h3 class="title">Evidence Details <a class="btn btn-success btn-sm" href="evidence_form.jsp"><i class="ti-plus"></i> Add New</a></h3>
                            </div>
                            <div class="content table-responsive table-full-width">
<table class="table table-striped">
<thead>
  <tr>
    <th width="119"><div align="center"><strong>Sl.No</strong></div></th>
    <th width="122"><div align="center"><strong>Complain </strong></div></th>
    <th width="119"><div align="center"><strong>Evidence Link</strong> </strong></div></th>
    <th width="174"><div align="center"><strong>Upload Date</strong></div></th>
	<th width="174"><div align="center"><strong>Uploaded File</strong></div></th>
	<th width="82"><div align="center"><strong>Action</strong></div></th>
  </tr>
  </thead>
<%@page import="java.sql.*"%>
<%@page import="wwa.dbconnect"%>
<jsp:useBean id="s" class="wwa.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
int sl=0;
ResultSet rs=s.stm.executeQuery("select * from evidence_details ed,usercomplain_details ucd where ed.c_id=ucd.c_id");
while(rs.next())
{
int ev_id=rs.getInt("ev_id");
sl++;
%>
<tbody>
  <tr>
    <td height="42"><div align="center"><%=sl%></div></td>
    <td><div align="center"><%=rs.getString("c_details")%></div></td>
    <td><div align="center"><%=rs.getString("ev_link")%></div></td>
    <td><div align="center"><%=rs.getString("upload_date")%></div></td>
	 <td><div align="center"><img class="img-wfs" src="../uploads/<%=rs.getString("ev_link")%>"width="120px" height="80px"/></br><a href="evidence_select_photo.jsp?id=<%=ev_id%>">Change Pic</a></div></td>
   <td width="201"><div align="center"><a href="evidence_edit.jsp?id=<%=ev_id%>" class="btn btn-primary btn-sm"><i class="ti-pencil"></i> Edit </a> <a onClick="return confirm('Are you sure?')" href="evidence_delete.jsp?id=<%=ev_id%>" class="btn btn-danger btn-sm"><i class="ti-trash"></i>Delete</a></div></td>
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
