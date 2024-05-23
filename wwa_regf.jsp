<!DOCTYPE html><head>
<title>Welfare Reg</title>

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
	<h2>Organization Registration</h2>
		<form action="wwa_reg.jsp" method="post">
			<input name="nm" type="text" class="ggg" id="nm"  autofocus="on" placeholder="Organization Name" required="" pattern="[a-z A-Z]*">
			<input name="eml" type="text" class="ggg" id="eml"  placeholder="Email" required="">
			<input name="mbl" type="text" class="ggg" id="mbl" maxlength="10" placeholder="Mobile No" required="" pattern="[9876]{1}[0-9]{9}">
			<input name="est" type="date" class="ggg" id="est"  placeholder="Established Date" required="">
			<!--<input name="div" type="text" class="ggg" id="div"  placeholder="Division" required=""> -->
			<input name="cty" type="text" class="ggg" id="cty"  placeholder="City" required="" pattern="[a-z A-Z]*">
			
			
				<div class="clearfix"></div>
				<input type="submit" value="Register" name="Submit">
		</form>
		<p><a href="index.jsp">Back to Login</a> </p>
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
