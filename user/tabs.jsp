<%@page import="java.sql.*"%>
<%@page import="wwa.dbconnect"%>
<jsp:useBean id="s" class="wwa.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String rz=session.getAttribute("uname").toString();
ResultSet rs=s.stm.executeQuery("select count(w_id) from wwa_details where w_status='Accepted'");
rs.next();
int c1=rs.getInt(1);

ResultSet rs1=s.stm.executeQuery("select sum(amount) from donation_details where u_id='"+rz+"'");
rs1.next();
int c2=rs1.getInt(1);

ResultSet rs2=s.stm.executeQuery("select count(u_id) from user_details");
rs2.next();
int c3=rs2.getInt(1);

ResultSet rs3=s.stm.executeQuery("select count(f_id) from feedback_details where u_id='"+rz+"'");
rs3.next();
int c4=rs3.getInt(1);
%>
<div class="content">
            <div class="container-fluid">
                <div class="row">
				
					<!-- Tab 1 -->
                  <a href="#">  <div class="col-lg-3 col-sm-6">
                        <div class="card">
                            <div class="content">
                                <div class="row">
                                    <div class="col-xs-5">
                                        <div class="icon-big icon-info text-center">
                                            <i class="fa fa-building"></i>
                                        </div>
                                    </div>
                                    <div class="col-xs-7">
                                        <div class="numbers">
                                            <p>Total</p>
                                             <font color="#0099CC"><%=c1%></font>
                                        </div>
                                    </div>
                                </div>
								
                                <div class="footer">
                                    <hr />
                                    <div class="stats">
                                         Women's Welfare Org.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div></a>
					
					
					<!-- Tab 2 -->
					 <a href="#">  <div class="col-lg-3 col-sm-6">
                        <div class="card">
                            <div class="content">
                                <div class="row">
                                    <div class="col-xs-5">
                                        <div class="icon-big icon-success text-center">
                                            <i class="fa fa-dollar"></i>
                                        </div>
                                    </div>
                                    <div class="col-xs-7">
                                        <div class="numbers">
                                            <p>Total</p>
                                             <font color="#00CC00"><%=c2%></font>
                                        </div>
                                    </div>
                                </div>
								
                                <div class="footer">
                                    <hr />
                                    <div class="stats">
                                         Donation Received
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div></a>
					
					<!-- Tab 3 -->
					 <a href="#">  <div class="col-lg-3 col-sm-6">
                        <div class="card">
                            <div class="content">
                                <div class="row">
                                    <div class="col-xs-5">
                                        <div class="icon-big icon-warning text-center">
                                            <i class="fa fa-users"></i>
                                        </div>
                                    </div>
                                    <div class="col-xs-7">
                                        <div class="numbers">
                                            <p>Total</p>
                                             <font color="#f3bb45"><%=c3%></font>
                                        </div>
                                    </div>
                                </div>
								
                                <div class="footer">
                                    <hr />
                                    <div class="stats">
                                         Total Users
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div></a>
					
					
					<!-- Tab 3 -->
					 <a href="#">  <div class="col-lg-3 col-sm-6">
                        <div class="card">
                            <div class="content">
                                <div class="row">
                                    <div class="col-xs-5">
                                        <div class="icon-big icon-danger text-center">
                                            <i class="ti-email"></i>
                                        </div>
                                    </div>
                                    <div class="col-xs-7">
                                        <div class="numbers">
                                            <p>Total</p>
                                             <font color="#FF9900"><%=c4%></font>
                                        </div>
                                    </div>
                                </div>
								
                                <div class="footer">
                                    <hr />
                                    <div class="stats">
                                        Total Feedbacks
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div></a>
					
					
               
                </div>