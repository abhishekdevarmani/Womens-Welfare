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
                                <h3 class="title">Feedback Details</h3>
                               
                            </div>
                            <div class="content table-responsive table-full-width">
<!-- Design End -->

<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@page import="wwa.dbconnect"%>
<jsp:useBean id="s" class="wwa.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>

<jsp:include page="val.jsp"></jsp:include>

<form id="WFS_Riz" name="form1" method="post" action="feedback_insert.jsp">
<div class="row">
      
	  <div class="col-md-11" style="padding-left: 26px; padding-right: 26px;">
       <div class="form-group">
       <label><strong>Name of the User</strong></label>
	   <select class="validate[required] form-control border-input" name="uid"  id="uid">
	  <option value="">-- Select User --</option>
	  <%
	  ResultSet rs=s.stm.executeQuery("select * from user_details");
	  while(rs.next())
	  {
	  %>
	  <option value="<%=rs.getInt("u_id")%>"><%=rs.getString("u_fname")+" "+rs.getString("u_lname")%></option>
	  <%
	  }
	  %>
	  </select>
	  </div>
   </div>
   
    <div class="col-md-11" style="padding-left: 26px; padding-right: 26px;">
       <div class="form-group">
       <label><strong>Welfare Name</strong></label>
	   <select class="validate[required] form-control border-input" name="wid"  id="wid">
	  <option value="">-- Select Organization --</option>
	  <%
	   ResultSet rs1=s.stm.executeQuery("select * from wwa_details");
	  while(rs1.next())
	  {
	  %>
	  <option value="<%=rs1.getInt("w_id")%>"><%=rs1.getString("w_name")%></option>
	  <%
	  }
	  %>
	  </select>
	  </div>
   </div>
   
	  <div class="col-md-11" style="padding-left: 26px; padding-right: 26px;">
       <div class="form-group">
       <label><strong>Feedback</strong></label>
     <textarea class="validate[required,custom[onlyLetter]]  form-control border-input" name="fb" id="fb"></textarea></td>
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
       <label><strong>Date Of Feedback</strong></label>
      <input class="form-control border-input" name="da" value="<%=td%>" readonly="" type="text" id="sd">
     </div>
   </div>
   
    <div class="col-md-11" style="padding-left: 26px; padding-right: 26px;">
   <div class="form-group">
       <label><strong>Status</strong></label>
      <td><input class="validate[required,custom[onlyLetter]] form-control border-input" name="st" type="text" id="st">
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
