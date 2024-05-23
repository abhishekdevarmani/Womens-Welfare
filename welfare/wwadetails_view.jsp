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
                                <h3 class="title">Our Profile</h3>
                            </div>
                            <div class="content table-responsive table-full-width">
<table class="table table-striped">
<thead>
    <tr>
      <td width="114" height="89"><div align="center"><strong>SL.No</strong></div></td>
      <td width="127"><div align="center"><strong>Women's Welfare Name</strong></div></td>
      <td width="132"><div align="center"><strong>Established Date</strong></div></td>
      <td width="152"><div align="center"><strong>Email</strong></div></td>
	   <td width="82"><div align="center"><strong>Mobile.</strong></div></td>
	   <td width="82"><div align="center"><strong>City</strong></div></td>
      <td width="147"><div align="center"><strong>Logo</strong></div></td>
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
      <td><div align="center"><img class="img-wfs" src="../uploads/<%=rs.getString("w_associationlogo")%>" width="120px" height="80px"/></br><a href="wwadetails_select_photo.jsp?id=<%=w_id%>">Change Pic</a></div></td>

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
