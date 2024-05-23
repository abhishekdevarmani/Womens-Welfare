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
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar_and_topbar.jsp"></jsp:include>
<jsp:include page="tabs.jsp"></jsp:include>

<div class="row">
                    <div class="col-md-6" style="width:100%">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Welcome to Womens Welfare Panel</h4>
                                <!--<p class="category">Admin Panel</p> -->
                            </div>
                            <div class="content" align="center">
                                
								<img src="../wfs_tmp/assets/img/wwa.jpg" width="50%"/>

                            </div>
                        </div>
                    </div>
					
					<!-- .... -->
					
                    
                </div>
            </div>
        </div>

<jsp:include page="footer.jsp"></jsp:include>
<!-- Session -->
<%
}
%>
<!-- Session -->
