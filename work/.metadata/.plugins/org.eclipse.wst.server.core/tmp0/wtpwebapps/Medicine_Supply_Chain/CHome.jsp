<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
	<title>Medico</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8">
	<link href="https://fonts.googleapis.com/css?family=Encode+Sans+Expanded:400,600,700" rel="stylesheet">
	<link href="plugin-frameworks/bootstrap.css" rel="stylesheet">
	<link href="fonts/ionicons.css" rel="stylesheet">
	<link href="common/styles.css" rel="stylesheet">
	<link rel="stylesheet" href="new/bootstrap.css">
  <link rel="stylesheet" href="new/bootstrap.min.css">
  <link rel="stylesheet" href="new/hi.css" >
	 <style>
	body {
  margin: 0;
  padding: 0;
  background: url(https://images.pexels.com/photos/7615562/pexels-photo-7615562.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940);
  background-size: cover;
  font-family: sans-serif;
}
.wrapper .logo a{
color: white;
}

.wrapper .nav q{
color: white;
}
  </style>
</head>
<body>
	<%
	if(request.getParameter("succ")!=null)
	{
	out.println("<script>alert('Login Successfull!')</script>");	
	}
	%>
	<!--  <header>		
		<div class="container">
			<a class="logo" href="#">Medicines Supply Chain using Block Chain</a>
			<a class="menu-nav-icon" data-menu="#main-menu" href="#"><i class="ion-navicon"></i></a>
			<ul class="main-menu" id="main-menu">
				<li><a href="CHome.jsp" class="current" >Home</a></li>
				<li><a href="OrderShow.jsp" >Order</a></li>
				<li><a href="QRCode_details.jsp">QRCode Upload</a></li>
				<li><a href="U_DistributeDataShow.jsp" class="current-demo">User Data Show</a></li>
				<li><a href="Distribute_UserPayBillDataShow.jsp" class="current-demo">Pay Bill Data Show</a></li>
			<li><a href="LoginPage.jsp?logout">Logout</a></li>
			</ul>-->
			<div class="wrapper">
                <div class="logo">
                    <a href="#">Medico: One stop for Medicines</a>
                </div>

                <!--Nav Code-->
                <nav>
                    <a href="CHome.jsp" class="current"><q>Home</q></a>
                    <a href="OrderShow.jsp" ><q>Order</q></a>
					<a href="QRCode_details.jsp"><q>QRCode</q></a>
					<a href="U_DistributeDataShow.jsp" class="current-demo"><q>User Data</q></a>
					<a href="Distribute_UserPayBillDataShow.jsp" class="current-demo"><q>Payment</q></a>
					<a href="LoginPage.jsp?logout"><q>Logout</q></a>
                    
                    
                </nav>
			<div class="clearfix"></div>
		</div>
	</header>

	<section class="ptb-0">
	<div class="mb-30 brdr-ash-1 opacty-5"></div>
		<div class="container"><br><br><br>
		 <div class="row">
		  <div class="col-sm-12 col-md-8">
			<div class="row">
			<!--  	<table align="center">
				<tr>
					<td><img src="img/admin.jpg" width="30" height="250">
				</tr>
				<tr>
					<td><span style="font-size:22px; color: red">Welcome to Distribute Section</span></td>
				</tr>
				<tr>
					<td align="center">Home Page <span style="font-size:22px; color: red">(by Best Distribute)</span></td>
				</tr>
            </table> -->			
				</div>
				</div>
				
							</div>
		</div>
	</section><br><br><br><br><br><br>
	
	
	<script src="plugin-frameworks/jquery-3.2.1.min.js"></script>	
	<script src="plugin-frameworks/tether.min.js"></script>	
	<script src="plugin-frameworks/bootstrap.js"></script>	
	<script src="common/scripts.js"></script>	
</body>
</html>