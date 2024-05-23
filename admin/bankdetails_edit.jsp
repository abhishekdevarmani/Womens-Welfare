<!-- Design Start -->
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar_and_topbar.jsp"></jsp:include>

<div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h3 class="title">Bank Details</h3>
                               
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
ResultSet rs=s.stm.executeQuery("select * from bank_details where b_id='"+a+"'");
rs.next();
%>
<form id="WFS_Riz" name="form1" method="post" action="bankdetails_update.jsp">
<input name="bid" type="hidden" value="<%=a%>">
 <div class="row">
 
    <div class="col-md-11" style="padding-left: 26px; padding-right: 26px;">
   <div class="form-group">
       <label><strong>Bank Name</strong></label>
	   <input  class="validate[required,custom[onlyLetter]] form-control border-input" value="<%=rs.getString("b_name")%>" name="nm" type="text" id="nm">
    </div>
	</div>
	
     <div class="col-md-11" style="padding-left: 26px; padding-right: 26px;">
   <div class="form-group">
       <label><strong>A/c Holder Name</strong></label>
	   <input class="validate[required,custom[onlyLetter]] form-control border-input" value="<%=rs.getString("b_ac_holder")%>" name="ac" type="text" id="ac">
    </div>
	</div>
	
     <div class="col-md-11" style="padding-left: 26px; padding-right: 26px;">
   <div class="form-group">
       <label><strong>Card Number</strong></label>
	   <input class="validate[required,custom[onlyNumber]] form-control border-input" value="<%=rs.getString("b_cardnumber")%>" name="cn" type="text" id="cn">
    </div>
	</div>
	
     <div class="col-md-11" style="padding-left: 26px; padding-right: 26px;">
   <div class="form-group">
       <label><strong>Pin</strong></label>
	   <input class="validate[required,custom[onlyNumber]] form-control border-input" value="<%=rs.getString("b_spin")%>" name="sp" type="text" id="sp">
    </div>
	</div>
	
    <div class="col-md-11" style="padding-left: 26px; padding-right: 26px;">
   <div class="form-group">
       <label><strong>Amount</strong></label>
	   <input class="validate[required,custom[onlyNumber]] form-control border-input" value="<%=rs.getString("b_amount")%>" name="am" type="text" id="am">
    </div>
	</div>
	
     <div class="col-md-11" style="padding-left: 26px; padding-right: 26px;">
   <div class="form-group">
       <label><strong>Status</strong></label>
	   <input class="validate[required,custom[onlyLetter]] form-control border-input" value="<%=rs.getString("b_status")%>" name="st" type="text" id="st">
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