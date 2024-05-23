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
                                <h3 class="title">Our Work Details <a class="btn btn-success btn-sm" href="wwaworks_form.jsp"><i class="ti-plus"></i> Upload New</a></h3>
                            </div>
                            <div class="content table-responsive table-full-width">
<table class="table table-striped">
<thead>
    <tr>
      <td width="114"><div align="center"><strong>SL.No</strong></div></td>
      <td width="127"><div align="center"><strong>Title</strong></div></td>
      <td width="132"><div align="center"><strong>Description</strong></div></td>
      <td width="152"><div align="center"><strong>Photo</strong></div></td>
      <td width="82"><div align="center"><strong>Date</strong></div></td>
	   <td width="147"><div align="center"><strong>Action</strong></div></td>
    </tr>
	</thead>
<%@page import="java.sql.*"%>
<%@page import="wwa.dbconnect"%>
<jsp:useBean id="s" class="wwa.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
int sl=0;
String rz=session.getAttribute("uname").toString();
ResultSet rs=s.stm.executeQuery("select * from wwa_works where w_id='"+rz+"'");
while(rs.next())
{
int ww_id=rs.getInt("ww_id");
sl++;
%>
<tbody>
    <tr>
      <td><div align="center"><%=sl%></div></td>
      <td><div align="center"><%=rs.getString("w_title")%></div></td>
      <td><div align="center"><%=rs.getString("w_description")%></div></td>
      <td><div align="center"><img class="img-wfs" src="../uploads/<%=rs.getString("w_photo")%>" width="120px" height="80px"/></br><a href="wwaworks_select_photo.jsp?id=<%=ww_id%>">Change Pic</a></div></td>
      <td><div align="center"><%=rs.getString("w_date")%></div></td>
      <td width="147"><div align="center"><!--<a href="wwaworks_edit.jsp?id=<%=ww_id%>" class="btn btn-primary btn-sm"><i class="ti-pencil"></i>Edit</a>   --><a onClick="return confirm('Are you sure?')" href="wwaworks_delete.jsp?id=<%=ww_id%>" class="btn btn-danger btn-sm"><i class="ti-trash"></i>Delete</a> </div></td>
  </tr>
<%
}
%>
</tbody>	
  </table>
<!-- Session -->
<%
}
%>
<!-- Session -->

