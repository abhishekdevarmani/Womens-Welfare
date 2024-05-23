<!-- Design Start -->
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar_and_topbar.jsp"></jsp:include>

<div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h3 class="title">Donation Details</h3>
                               
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
ResultSet rs=s.stm.executeQuery("select * from donation_details where d_id='"+a+"'");
rs.next();
%>
<form id="WFS_Riz" name="form1" method="post" action="donation_update.jsp">
<input name="did" type="hidden" value="<%=a%>">
  <div class="row">
  
   <div class="col-md-11" style="padding-left: 26px; padding-right: 26px;">
   <div class="form-group">
      <label><strong>Bank Name</strong></label>
         <input class="validate[required,custom[onlyLetter]] form-control border-input"  value="<%=rs.getString("u_id")%>" name="ui" type="text" id="ui">
    </div>
	</div>
	
     <div class="col-md-11" style="padding-left: 26px; padding-right: 26px;">
   <div class="form-group">
       <label><strong>WW ID</strong></label>
      <input class="validate[required,custom[onlyNumber]] form-control border-input" value="<%=rs.getString("w_id")%>" name="wi" type="text" id="wi">
     </div>
	</div>
	
	 <div class="col-md-11" style="padding-left: 26px; padding-right: 26px;">
   <div class="form-group">
       <label><strong>Amount</strong></label>
	<input class="validate[required,custom[onlyNumber]] form-control border-input" value="<%=rs.getString("amount")%>" name="am" type="text" id="am">
	 </div>
	</div>
	
	 <div class="col-md-11" style="padding-left: 26px; padding-right: 26px;">
   <div class="form-group">
       <label><strong>Date</strong></label>
      <input value="<%=rs.getString("date")%>" class="form-control border-input" name="dt" type="text" id="dt">
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