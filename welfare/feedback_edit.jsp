<!-- Design Start -->
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar_and_topbar.jsp"></jsp:include>

<div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h3 class="title">Feedback Details</h3>
                               
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
ResultSet rs=s.stm.executeQuery("select * from feedback_details where f_id='"+a+"'");
rs.next();
%>
<form id="WFS_Riz" name="form1" method="post" action="feedback_update.jsp">
<input name="fid" type="hidden" value="<%=a%>">
<div class="row">
 
   <div class="col-md-11" style="padding-left: 26px; padding-right: 26px;">
   <div class="form-group">
     <label><strong>Name of user</strong></label> 
      <input  class="validate[required,custom[onlyLetter]] form-control border-input" value="<%=rs.getString("u_id")%>" name="ud" type="text" id="ud">
    </div>
	</div>
	
   <div class="col-md-11" style="padding-left: 26px; padding-right: 26px;">
   <div class="form-group">
     <label><strong>Welfare Name</strong></label> 
      <input class="validate[required,custom[onlyLetter]] form-control border-input" value="<%=rs.getString("w_id")%>" name="wd" type="text" id="wd">
    </div>
	</div>
    
	<div class="col-md-11" style="padding-left: 26px; padding-right: 26px;">
   <div class="form-group">
     <label><strong>Feedback</strong></label> 
      <textarea class="validate[required,custom[onlyLetter]] form-control border-input" name="fb" id="fb"><%=rs.getString("feedback")%></textarea>
    </div>
	</div>
    
	<div class="col-md-11" style="padding-left: 26px; padding-right: 26px;">
   <div class="form-group">
     <label><strong>Date</strong></label> 
      <input value="<%=rs.getString("senddate")%>" class="form-control border-input" name="sd" type="text" id="sd">
    </div>
	</div>
   
   <div class="col-md-11" style="padding-left: 26px; padding-right: 26px;">
   <div class="form-group">
     <label><strong>Status</strong></label> 
      <input class="validate[required,custom[onlyLetter]] form-control border-input" value="<%=rs.getString("Status")%>" name="st" type="text" id="st">
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
