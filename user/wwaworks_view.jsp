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
                                <h3 class="title">Welfare Work Details </h3>
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
    </tr>
	</thead>
<%@page import="java.sql.*"%>
<%@page import="wwa.dbconnect"%>
<jsp:useBean id="s" class="wwa.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
int sl=0;
String rz=request.getParameter("eml");
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
      <td><div align="center"><a title="View" href="work_photo_view.jsp?id=<%=ww_id%>&eml=<%=rz%>"><img class="img-wfs" src="../uploads/<%=rs.getString("w_photo")%>" width="120px" height="80px"/></a></div></td>
      <td><div align="center"><%=rs.getString("w_date")%></div></td>
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

