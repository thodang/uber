<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.ResultSet"%>
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


	
</head>
<body>
<%HttpSession sess = request.getSession(false); 
ResultSet rs =(ResultSet) sess.getAttribute("rs");
%>
<!-- Header -->
			<header id="header" class="skel-layers-fixed">
				<h1><a href="#">Uberina</a></h1>
				<nav id="nav">
					<ul>						
						<li><a href="index.html">Home</a></li>
						<li>Welcome <%=rs.getString(2) %></li>
						<li><a href="index.html" class="button special">Log out</a></li>
					</ul>
				</nav>
			</header>

<section id="main" class="wrapper style1">
<div class="container">
<h1>This is your information:<br></h1>
ID:	<%=rs.getInt(1) %><br>
Name:<%= rs.getString(2) %><br>
Password:<%= rs.getString(3) %><br>
Email:<%= rs.getString(4) %><br>
</div>
</section>
</body>
</html>