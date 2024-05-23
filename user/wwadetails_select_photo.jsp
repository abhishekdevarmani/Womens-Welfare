<!-- Design Start -->
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar_and_topbar.jsp"></jsp:include>

<div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h3 class="title">Select & Upload Photo <a class="btn btn-danger btn-sm" href="wwadetails_view.jsp" onClick="return confirm('Are you sure?')">Cancel</a></h3>
                               
                            </div>
                            <div class="content table-responsive table-full-width">
<!-- Design End -->

<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@page import="wwa.dbconnect"%>
<jsp:useBean id="s" class="wwa.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>

<jsp:include page="val.jsp"></jsp:include> 
 <%
 String id=request.getParameter("id");
 session.setAttribute("phtid",id);
 %>
<form id="WFS_Riz" name="form1" method="post" enctype="multipart/form-data" action="wwadetails_upload_photo.jsp">
<div class="row">
    
   <div class="col-md-11" style="padding-left: 26px; padding-right: 26px;">
   <div class="form-group">
       <label><strong>Select</strong></label>
      <input class="validate[required] form-control border-input" required name="photo" type="file" id="photo">
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