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
                                <h3 class="title">Bank Details</h3>
                               
                            </div>
                            <div class="content table-responsive table-full-width">
<!-- Design End -->

<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@page import="wwa.dbconnect"%>
<jsp:useBean id="s" class="wwa.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>

<jsp:include page="val.jsp"></jsp:include>

<form id="WFS_Riz" name="form1" method="post" action="bankdetails_insert.jsp">
<div class="row">

 <div class="col-md-11" style="padding-left: 26px; padding-right: 26px;">
   <div class="form-group">
       <label><strong>Bank Name</strong></label>
        <input class="validate[required,custom[onlyLetter]] form-control border-input" name="nm" type="text" id="nm">
    </div>
   </div>
   
    <div class="col-md-11" style="padding-left: 26px; padding-right: 26px;">
   <div class="form-group">
       <label><strong>A/C Holder Name</strong></label>
	  <select readonly class="validate[required] form-control border-input" name="uid"  id="uid">
	 <!-- <option value="">-- Select User --</option> -->
	  <%
	  String rz=session.getAttribute("uname").toString();
	  ResultSet rs=s.stm.executeQuery("select * from user_details where u_email='"+rz+"'");
	  while(rs.next())
	  {
	  %>
	  <option value="<%=rs.getString("u_email")%>"><%=rs.getString("u_fname")+" "+rs.getString("u_lname")%></option>
	  <%
	  }
	  %>
	  </select>
	   </div>
   </div>
   
    <div class="col-md-11" style="padding-left: 26px; padding-right: 26px;">
   <div class="form-group">
       <label><strong>Card No.</strong></label>
	  <input class="validate[required,custom[onlyNumber] form-control border-input" maxlength="16" name="cn" type="text" id="cn">
     </div>
   </div>
   
    <div class="col-md-11" style="padding-left: 26px; padding-right: 26px;">
   <div class="form-group">
       <label><strong>Pin</strong></label>
	<input class="validate[required,custom[onlyNumber] form-control border-input" maxlength="4" name="sp" type="text" id="sp">
   </div>
   </div>
   
    <div class="col-md-11" style="padding-left: 26px; padding-right: 26px;">
   <div class="form-group">
       <label><strong>Amount</strong></label>
  <input class="validate[required,custom[onlyNumber] form-control border-input" value="100000" readonly="" name="am" type="text" id="am"></td>
     </div>
   </div>
   
    <div class="col-md-11" style="padding-left: 26px; padding-right: 26px;">
   <div class="form-group">
       <label><strong>Status</strong></label>
	<input class="validate[required,custom[onlyLetter]] form-control border-input" value="Active" readonly="" name="st" type="text" id="st">
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
