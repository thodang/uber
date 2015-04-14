<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

		<title>Riders</title>
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
<body id="top">
<%ResultSet rs = (ResultSet)request.getAttribute("resultSet");%>
	<%if(!rs.next()){ %>
		<!-- Header -->
			<header id="header" class="skel-layers-fixed">
				<h1><a href="#">Uberina</a></h1>
				<nav id="nav">
					<ul>						
						<li><a href="index.html">Home</a></li>
						<li><a href="signup.html" class="button special">Sign up</a></li>
					</ul>
				</nav>
			</header>
			
			<!-- Main -->
			<section id="main" class="wrapper style1">
				<header class="major"">
					<h2 style="color:red">the account doesn't exist</h2>	
									
				</header>				
			</section>
			
		<%}else{ %>		
				
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
		
				<!-- Main -->
					<section id="main" class="wrapper style1">
						<header class="major">
							<h2>Welcome back <%=rs.getString(2) %></h2>					
						</header>
						<div class="container">
							<div class="row">
								
								<div class ="7u">
										<h2> <small> Ride it. Feel it. </small> </h2>
										<h3>What would you like to do today:</h6>
								</div>
							</div>
							<div class="row">
									<ul>
										
										<li><a href="info.jsp">View Your Profile</a></li>
										<li><a href="#">View Your Trips History</a></li>
										<li><a href="#">Book A Ride</a></li>
										
										
		
									</ul>
												
							</div>					
						</div>
					</section>
			<%} %>

							

		

	</body>
</html>