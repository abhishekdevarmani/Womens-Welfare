<!-- Design Start -->
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar_and_topbar.jsp"></jsp:include>

<div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h3 class="title">User Details</h3>
                               
                            </div>
                            <div class="content table-responsive table-full-width">
<!-- Design End -->

<%@page import="java.sql.*"%>
<%@page import="wwa.dbconnect"%>
<jsp:useBean id="s" class="wwa.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("id");
if(a==null)
{
out.println("<script>history.back();</script>");
}
else
{
ResultSet rs=s.stm.executeQuery("select * from user_details where u_id='"+a+"'");
rs.next();
%>
<form id="WFS_Riz" name="form1" method="post" action="userdetails_update.jsp">
<input name="uid" type="hidden" value="<%=a%>">
<div class="row">

   <div class="col-md-11" style="padding-left: 26px; padding-right: 26px;">
   <div class="form-group">
       <label><strong>First Name</strong></label>
    <input class="validate[required,custom[onlyLetter]] form-control border-input" value="<%=rs.getString("u_fname")%>" name="fn" type="text" id="fn">
    </div>
	</div>
	
    <div class="col-md-11" style="padding-left: 26px; padding-right: 26px;">
   <div class="form-group">
       <label><strong>Last Name</strong></label>
      <input class="validate[required,custom[onlyLetter]] form-control border-input" value="<%=rs.getString("u_lname")%>" name="ln" type="text" id="ln">
    </div>
	</div>
	
	<div class="col-md-11" style="padding-left: 26px; padding-right: 26px;">
   <div class="form-group">
       <label><strong>Mobile No (+91)</strong></label>
    <input class="validate[required,custom[mobile]] form-control border-input" value="<%=rs.getString("u_mobile")%>" name="mbl" type="text" id="mbl">
    </div>
	</div>
	
  <div class="col-md-11" style="padding-left: 26px; padding-right: 26px;">
   <div class="form-group">
       <label><strong>Email</strong></label>
      <input  class="validate[required,custom[email]] form-control border-input" value="<%=rs.getString("u_email")%>" name="em" type="text" id="em">
    </div>
	</div>
    
	<div class="col-md-11" style="padding-left: 26px; padding-right: 26px;">
   <div class="form-group">
       <label><strong>City</strong></label>
      <input class="validate[required,custom[onlyLetter]] form-control border-input" value="<%=rs.getString("u_city")%>" name="cty" type="text" id="cty">
    </div>
	</div>
    
	<div class="col-md-11" style="padding-left: 26px; padding-right: 26px;">
   <div class="form-group">
       <label><strong>Designation</strong></label>
      <input class="validate[required,custom[onlyLetter]] form-control border-input" value="<%=rs.getString("u_designation")%>" name="dsi" type="text" id="dsi">
    </div>
	</div>
    
	<div class="col-md-11" style="padding-left: 26px; padding-right: 26px;">
   <div class="form-group">
       <label><strong>Photo</strong></label>
      <input class="validate[required] form-control border-input" value="<%=rs.getString("u_photo")%>" name="ph" type="text" id="ph">
    </div>
	</div>
    
<div class="text-center">
        <button type="Submit" name="Submit" class="btn btn-success btn-fill btn-wd"> Submit</button>
	    <button type="Reset" class="btn btn-dark btn-fill btn-wd"> Reset</button>
     </div>
	 <div class="clearfix"></div>
</form>
<%
}
%>
<!-- Design Start -->
</div>
                        </div>
                    </div>
<jsp:include page="footer1.jsp"></jsp:include>
<!-- Design End -->