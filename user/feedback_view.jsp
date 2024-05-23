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
                                <h3 class="title">Feedback Details <a class="btn btn-success btn-sm" href="feedback_form.jsp"><i class="ti-plus"></i> Send New</a></h3>
                            </div>
                            <div class="content table-responsive table-full-width">
<table class="table table-striped">
<thead>
  <tr>
    <th width="120"><div align="center"><strong>Sl No.</strong></div></th>
    <th width="73"><div align="center"><strong> User </strong></div></th>
    <th width="125"><div align="center"><strong>Women's welfare </strong></div></th>
    <th width="104"><div align="center"><strong>Feedback </strong></div></th>
    <th width="94"><div align="center"><strong>Sent Date </strong></div></th>
    <th width="56"><div align="center"><strong>Status</strong></div></th>
	<!--<th width="80"><div align="center"><strong>Action</strong></div></th> -->
  </tr>
  </thead>
<%@page import="java.sql.*"%>
<%@page import="wwa.dbconnect"%>
<jsp:useBean id="s" class="wwa.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
int sl=0;
String rz=session.getAttribute("uname").toString();
ResultSet rs=s.stm.executeQuery("select * from feedback_details f,user_details u,wwa_details w where f.u_id=u.u_email and f.w_id=w.w_email and u.u_email='"+rz+"'");
while(rs.next())
{
int f_id=rs.getInt("f_id");
sl++;
%>
<tbody>
  <tr>
    <td><div align="center"><%=sl%></div></td>
    <td><div align="center"><%=rs.getString("u_fname")+" "+rs.getString("u_lname")%></div></td>
    <td><div align="center"><%=rs.getString("w_name")%></div></td>
    <td><div align="center"><%=rs.getString("feedback")%></div></td>
    <td><div align="center"><%=rs.getString("senddate")%></div></td>
	<td><div align="center"><%=rs.getString("status")%></div></td>
  <!--  <td width="80"><div align="center"><a href="feedback_edit.jsp?id=<%=f_id%>" class="btn btn-primary btn-sm"><i class="ti-pencil"></i> Edit</a>  <a onClick="return confirm('Are you sure?')" href="feedback_delete.jsp?id=<%=f_id%>" class="btn btn-danger btn-sm"><i class="ti-trash"></i> Delete</a> </div></td> -->
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
