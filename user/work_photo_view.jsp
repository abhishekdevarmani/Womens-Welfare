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
<%
String id=request.getParameter("id");
String eml=request.getParameter("eml");
%>
<div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h3 class="title">Welfare Work Details | <a href="wwaworks_view.jsp?eml=<%=eml%>">Back</a></h3>
                            </div>
                            <div class="content table-responsive table-full-width">

<%@page import="java.sql.*"%>
<%@page import="wwa.dbconnect"%>
<jsp:useBean id="s" class="wwa.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
ResultSet rs=s.stm.executeQuery("select * from wwa_works where ww_id='"+id+"'");
rs.next();
%>
<div align="center"><img src="../uploads/<%=rs.getString("w_photo")%>" width="50%"/></div>

<!-- Session -->
<%
}
%>
<!-- Session -->

