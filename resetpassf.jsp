<%@page import="java.sql.*"%>
<%@page import="wwa.dbconnect"%>
<jsp:useBean id="s" class="wwa.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String un=request.getParameter("un");
String sa=request.getParameter("sa");
ResultSet rs=s.stm.executeQuery("select * from login where username='"+un+"' and s_ans='"+sa+"'");
if(!rs.next())
{
  out.println("<script>alert('Invalid Answer');history.back();</script>");
}
else
{
%>
<!DOCTYPE html>
<head>
<title>Forgot Password</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="lgn_tmp/css/bootstrap.min.css" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="lgn_tmp/css/style.css" rel='stylesheet' type='text/css' />
<link href="lgn_tmp/css/style-responsive.css" rel="stylesheet"/>
<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="lgn_tmp/css/font.css" type="text/css"/>
<link href="lgn_tmp/css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<script src="lgn_tmp/js/jquery2.0.3.min.js"></script>
</head>
<body>
<div class="log-w3">
<div class="w3layouts-main">
	<h2>Reset Password</h2>
		<form action="resetpass.jsp" method="post">
		 <input type="hidden" name="un" value="<%=un%>"/>
			<input type="password" autocomplete="off" autofocus="on" class="ggg" name="npass" placeholder="New Password" required="">
			<input type="password" autocomplete="off" class="ggg" name="cpass" placeholder="Confirm" required="">
				<div class="clearfix"></div>
				<input type="submit" value="Reset Now" name="Submit">
		</form>
		<p><a href="index.jsp">Back to Login</a></p>
</div>
</div>
<div align="center" style="color:#FFFFFF">&copy; Designed & Developed by: <a style="color:#FFFFFF">Hrithik and Abhishek</a></div>
<script src="lgn_tmp/js/bootstrap.js"></script>
<script src="lgn_tmp/js/jquery.dcjqaccordion.2.7.js"></script>
<script src="lgn_tmp/js/scripts.js"></script>
<script src="lgn_tmp/js/jquery.slimscroll.js"></script>
<script src="lgn_tmp/js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="lgn_tmp/js/jquery.scrollTo.js"></script>
</body>
</html>
<%
}
%>