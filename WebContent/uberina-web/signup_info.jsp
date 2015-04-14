<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title></title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
		<script src="js/jquery.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-layers.min.js"></script>
		<script src="js/init.js"></script>
		<noscript>
			<link rel="stylesheet" href="css/skel.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-xlarge.css" />
			
		</noscript>
<style type="text/css">
	h2{
		color:green;
		margin-left: 20px;
	}
	h3{
		
		margin-left: 20px;
	}
	
</style>
</head>
<body>
<!-- Header -->
			<header id="header" class="skel-layers-fixed">
				<h1><a href="#">Uberina</a></h1>
				<nav id="nav">
					<ul>						
						<li><a href="index.html">Home</a></li>
						
						<li><a href="login.html" class="button special">Log in</a></li>
					</ul>
				</nav>
			</header>
			
<section id="main" class="wrapper style1">

							<h2>You have successfully registered</h2>					
						

<h3>This is your information:<br></h3>

<div class="container">
					<ul>						
						<li>Name:<%= request.getParameter("name3") %></li>
						<li>Password:<%= request.getParameter("password1") %></li>
						<li>Email:<%= request.getParameter("email1") %></li>
					</ul>

</div>
</section>
</body>
</html>