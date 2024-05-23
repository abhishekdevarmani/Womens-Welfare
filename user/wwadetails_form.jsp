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
                                <h3 class="title">WWA Details</h3>
                               
                            </div>
                            <div class="content table-responsive table-full-width">
<!-- Design End -->

<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@page import="wwa.dbconnect"%>
<jsp:useBean id="s" class="wwa.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>

<jsp:include page="val.jsp"></jsp:include> 
<form id="WFS_Riz" name="form1" method="post" action="wwadetails_insert.jsp">
<div class="row">
    
   <div class="col-md-11" style="padding-left: 26px; padding-right: 26px;">
   <div class="form-group">
       <label><strong>Name</strong></label>
      <input class="validate[required,custom[onlyLetter]] form-control border-input" name="nm" type="text" id="bid">
    </div>
	</div>
    
	<div class="col-md-11" style="padding-left: 26px; padding-right: 26px;">
   <div class="form-group">
       <label><strong>Est Date</strong></label>
      <input class="validate[required,custom[date]] form-control border-input" name="est" type="text" id="est">
    </div>
	</div>
   
   <div class="col-md-11" style="padding-left: 26px; padding-right: 26px;">
   <div class="form-group">
       <label><strong>Div Name</strong></label>
   <input class="validate[required,custom[onlyLetter]] form-control border-input" name="div" type="text" id="div">
    </div>
	</div>
	 
	 <div class="col-md-11" style="padding-left: 26px; padding-right: 26px;">
     <div class="form-group">
       <label><strong>City</strong></label>
	  <input class="validate[required,custom[onlyLetter]] form-control border-input" name="cty" type="text" id="cty">
    </div>
	</div>
   
   </div>
   
<div class="text-center">   
       <button type="Submit" name="Submit" class="btn btn-success btn-fill btn-wd"> Submit</button>
	   <button type="Reset" class="btn btn-dark btn-fill btn-wd"> Reset</button>
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