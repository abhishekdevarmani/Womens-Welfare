<%@page import="java.sql.*"%>
<%@page import="wwa.dbconnect"%>
<jsp:useBean id="s" class="wwa.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
ResultSet rs=s.stm.executeQuery("select count(w_id) from wwa_details where w_status='Pending'");
rs.next();
int c1=rs.getInt(1);
%>
<div class="wrapper">
    <div class="sidebar" data-background-color="white" data-active-color="danger">

               

    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="#" class="simple-text btn btn-warning">
                   <strong> Women's Welfare</strong>
                </a>
            </div>

            <ul class="nav">
                <li class="active">
                    <a href="home.jsp">
                        <i class="fa fa-home"></i>
                        <p>Home</p>
                    </a>
                </li>
				
				<!-- <li>
                    <a href="bankdetails_view.jsp">
                        <i class="ti-credit-card"></i>
                        <p>Bank Details</p>
                    </a>
                </li> -->
				
				<li>
                    <a href="wwadetails_view.jsp">
                        <i class="fa fa-building"></i>
                        <p>Women's Welfare &nbsp;<font size="4" color="#FF6600">[ <%=c1%> ]</font></p>
                    </a>
                </li>
				
				<li>
                    <a href="wwaworks_view.jsp">
                        <i class="fa fa-image"></i>
                        <p>Work Done</p>
                    </a>
                </li>
				
				<li>
                    <a href="userdetails_view.jsp">
                        <i class="fa fa-users"></i>
                        <p>User Details</p>
                    </a>
                </li>
				
				<li>
                    <a href="notice_view.jsp">
                        <i class="fa fa-bullhorn"></i>
                        <p>Notice</p>
                    </a>
                </li>
				
				<li>
                    <a href="usercomplaindetails_view.jsp">
                        <i class="fa fa-info"></i>
                        <p>Complaints</p>
                    </a>
                </li>
				
				<!--<li>
                    <a href="donation_view.jsp">
                        <i class="fa fa-inr"></i>
                        <p>Donations</p>
                    </a>
                </li> -->
				
				<!--<li>
                    <a href="evidence_view.jsp">
                        <i class="fa fa-file"></i>
                        <p>Evidence</p>
                    </a>
                </li>
				 -->
				<li>
                    <a href="feedback_view.jsp">
                        <i class="fa fa-inbox"></i>
                        <p>Feedback</p>
                    </a>
                </li>

            </ul>
    	</div>
    </div>

    <div class="main-panel">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar bar1"></span>
                        <span class="icon-bar bar2"></span>
                        <span class="icon-bar bar3"></span>
                    </button>
                    <a class="navbar-brand" href="#">Welcome, <strong>Admin</strong></a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                      
                        <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="ti-settings"></i>
                                   
									<p>Setting</p>
									<b class="caret"></b>
                              </a>
                              <ul class="dropdown-menu">
                                <li><a href="changepassf.jsp">Change Password</a></li>
                                <li><a href="../logout.jsp" onclick="return confirm('Are you sure?')">Logout</a></li>
                                
                              </ul>
                        </li>
						
                    </ul>

                </div>
            </div>
        </nav>
