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
                                <h3 class="title">Evidence Details | <a href="usercomplaindetails_view.jsp">Back</a></h3>
                            </div>
                            <div class="content table-responsive table-full-width">
<table class="table table-striped">
<thead>
  <tr>
    <th width="119"><div align="center"><strong>Sl.No</strong></div></th>
    <th width="122"><div align="center"><strong>Complain </strong></div></th>
    <th width="174"><div align="center"><strong>Upload Date</strong></div></th>
	<th width="174"><div align="center"><strong>Uploaded File</strong></div></th>
  </tr>
  </thead>
<%@page import="java.sql.*"%>
<%@page import="wwa.dbconnect"%>
<jsp:useBean id="s" class="wwa.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
int sl=0;
String cid=request.getParameter("cid");
ResultSet rs=s.stm.executeQuery("select * from evidence_details ed,usercomplain_details ucd where ed.c_id=ucd.c_id and ucd.c_id='"+cid+"'");
while(rs.next())
{
int ev_id=rs.getInt("ev_id");
sl++;
String evlnk=rs.getString("ev_link");
%>
<tbody>
  <tr>
    <td height="42"><div align="center"><%=sl%></div></td>
    <td><div align="center"><%=rs.getString("c_details")%></div></td>
    <td><div align="center"><%=rs.getString("upload_date")%></div></td>
	 <td><div align="center"><a href="../uploads/<%=evlnk%>" target="_blank"><img class="img-wfs" src="../uploads/<%=evlnk%>"width="120px" height="80px"/></a></div></td>

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
