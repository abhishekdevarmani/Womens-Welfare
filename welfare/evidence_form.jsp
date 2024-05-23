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

<!-- Design Start -->
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar_and_topbar.jsp"></jsp:include>

<div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h3 class="title">Evidence Details</h3>
                               
                            </div>
                            <div class="content table-responsive table-full-width">
<!-- Design End -->

<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@page import="wwa.dbconnect"%>
<jsp:useBean id="s" class="wwa.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<jsp:include page="val.jsp"></jsp:include>
<form id="WFS_Riz" name="form1" method="post" action="evidence_insert.jsp">
<div class="row">

   <div class="col-md-11" style="padding-left: 26px; padding-right: 26px;">
   <div class="form-group">
       <label><strong>Complaint Name</strong></label>
	  <select class="validate[required] form-control border-input" name="ci" id="ci">
	  <option value="">-- Select Complaint--</option>
	  <%
	  ResultSet rs=s.stm.executeQuery("select * from usercomplain_details");
	  while(rs.next())
	  {
	  %>
	  <option value="<%=rs.getInt("c_id")%>"><%=rs.getString("c_details")%></option>
	  <%
	  }
	  %>
	  </select>
    </div>
   </div>
	<%
	Date d=new Date();
	int dd,mm,yy;
	dd=d.getDate(); mm=d.getMonth()+1; yy=d.getYear()+1900;
	String td=yy+"-"+mm+"-"+dd;
	%>
   <div class="col-md-11" style="padding-left: 26px; padding-right: 26px;">
   <div class="form-group">
       <label><strong>Upload Date</strong></label>
      <input class="form-control border-input" name="da" value="<%=td%>" readonly="" type="text" id="ud">
    </div>
   </div>
    
   </div>
  
     <div class="text-center">
	<button type="Submit" name="Submit" class="btn btn-success btn-fill btn-wd"> Submit</button>
	 <button type="Reset" class="btn btn btn-fill btn-wd"> Reset</button>
      </div>
	  <div class="clearfix"></div>
</form>
<!-- Design Start -->
</div>
                        </div>
                    </div>
<jsp:include page="footer1.jsp"></jsp:include>
<!-- Design End -->
<!-- Session -->
<%
}
%>
<!-- Session -->