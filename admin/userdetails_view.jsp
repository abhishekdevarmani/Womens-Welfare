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
                                <h3 class="title">User Details <!--<a class="btn btn-success btn-sm" href="userdetails_form.jsp"><i class="ti-plus"></i> Add New</a> --></h3>
                            </div>
                            <div class="content table-responsive table-full-width">
<table class="table table-striped">
<thead>
    <tr>
      <td width="45"><div align="center"><strong>SL.No</strong></div></td>
      <td width="51"><div align="center"><strong>First Name</strong></div></td>
      <td width="63"><div align="center"><strong>Last Name</strong></div></td>
      <td width="68"><div align="center"><strong>Mobile No</strong></div></td>
      <td width="45"><div align="center"><strong>Email</strong></div></td>
      <td width="61"><div align="center"><strong>City</strong></div></td>
      <td width="52"><div align="center"><strong>Designation</strong></div></td>
      <td width="201"><div align="center"><strong>Photo</strong></div></td>
	   <!--<td width="201"><div align="center"><strong>Action</strong></div></td> -->
    </tr>
</thead>
<%@page import="java.sql.*"%>
<%@page import="wwa.dbconnect"%>
<jsp:useBean id="s" class="wwa.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
int sl=0;
ResultSet rs=s.stm.executeQuery("select * from user_details");
while(rs.next())
{
int u_id=rs.getInt("u_id");
sl++;
%>
<tbody>
    <tr>
      <td><div align="center"><%=sl%></div></td>
      <td><div align="center"><%=rs.getString("u_fname")%></div></td>
      <td><div align="center"><%=rs.getString("u_lname")%></div></td>
      <td><div align="center"><%=rs.getString("u_mobile")%></div></td>
      <td><div align="center"><%=rs.getString("u_email")%></div></td>
      <td><div align="center"><%=rs.getString("u_city")%></div></td>
      <td><div align="center"><%=rs.getString("u_designation")%></div></td>
	  <td><div align="center"><img class="img-wfs" src="../uploads/<%=rs.getString("u_photo")%>"width="120px" height="80px"/><!--</br><a href="userdetails_select_photo.jsp?id=<%=u_id%>">Change Pic</a> --></div></td>
      <!--<td width="201"><div align="center"><a href="userdetails_edit.jsp?id=<%=u_id%>" class="btn btn-primary btn-sm"><i class="ti-pencil"></i>Edit</a>  <a onClick="return confirm('Are you sure?')" href="userdetails_delete.jsp?id=<%=u_id%>" class="btn btn-danger btn-sm"><i class="ti-trash"></i>Delete</a> </div></td> -->
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
