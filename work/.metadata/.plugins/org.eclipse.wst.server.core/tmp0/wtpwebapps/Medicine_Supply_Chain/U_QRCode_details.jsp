<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.user.*"%>
<%@page import="java.sql.Connection"%>
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
	<link rel="stylesheet" type="text/css" href="demo.css" />
	<link rel="stylesheet" href="new/bootstrap.css">
  <link rel="stylesheet" href="new/bootstrap.min.css">
  <link rel="stylesheet" href="new/hi.css" >
	 <style>
	body {
  margin: 0;
  padding: 0;
  background: url(https://images.pexels.com/photos/3850674/pexels-photo-3850674.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940);
  background-size: cover;
  font-family: sans-serif;
}
.box {
 /* position: absolute;*/
  top: 50%;
  left: 50%;
  transform: translate(50%, -10%);
  width: 35rem;
   padding: 2.5rem;
  box-sizing: border-box;
  background: rgba(0, 0, 0, 0.6);
  border-radius: 0.625rem;
}

.box h2 {
  margin: 0 0 1.875rem;
  padding: 0;
  color: #fff;
  text-align: center;
}
.box .post_section b {
  color: white;
}
.wrapper .logo a{
color: white;
}

.wrapper .nav q{
color: black;
}
  </style>
</head>
<body>
	<%
	if(request.getParameter("Done")!=null)
	{
	out.println("<script>alert('Medicine successfully saved proceed to checkout!')</script>");	
	}
	if(request.getParameter("invalid")!=null)
	{
	out.println("<script>alert('Invalid Login Credential!')</script>");	
	}
	if(request.getParameter("Unable")!=null)
	{
	out.println("<script>alert('Unable to scan!')</script>");	
	}
   %>
	<!--  <header>		
		<div class="container">
			<a class="logo" href="#">Medicines Supply Chain using Block Chain</a>
			<a class="menu-nav-icon" data-menu="#main-menu" href="#"><i class="ion-navicon"></i></a>
			<ul class="main-menu" id="main-menu">
				<li><a href="Home.jsp" class="current" >Home</a></li>
				<li><a href="U_OrderShow.jsp" >Order</a></li>
				<li><a href="U_QRCode_details.jsp">QRCode Upload</a></li>
				<li><a href="LoginPage.jsp?logout">Logout</a></li>
			</ul>-->
			
			<div class="wrapper">
                <div class="logo">
                    <a href="#">Medico: One stop for Medicines</a>
                </div>

                <!--Nav Code-->
                <nav>
                    <a href="Home.jsp" class="current"><q>Home</q></a>
                    <a href="U_OrderShow.jsp" ><q>Order</q></a>
					<a href="U_QRCode_details.jsp"><q>QRCode</q></a>
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
				<div class="box">
 					 <h2>Upload the QR Code</h2>
            		<%
			            String emailid=(String)session.getAttribute("userid");
			        %>		
		
						<form class="post_section" action="U_QRCodeupload" method="post" enctype="multipart/form-data">
							<table align="center" border="0"  cellpadding="5" cellspacing="5">
								<tr>
									<td colspan="2"><div class="cleaner" style="height: 20%">&nbsp;&nbsp;&nbsp;&nbsp;</div></td>
								</tr>
								
								 <tr>
									<td><b>Email_ID:</b></td>
									<td><input type="text" name="Marksheet_No" placeholder="mymail@mail.com" value="<%=emailid%>" style="width: 90%" required /></td>
								</tr>
								<tr>
									<td colspan="2"><div class="cleaner" style="height: 10%"></div></td>
								</tr>
									<td><b>Upload QR Code:</b></td>
									<td><input type="file" name="qrcodefile" placeholder="Select Document" required /></td>
								</tr>
								
								 <tr>
									<td colspan="2"><div class="cleaner" style="height: 10%"></div></td>
								</tr>
								
								<tr>
							     	<td colspan="2" align="center"><input type="submit" value="Upload QR" style="background: yellow; color: black;" class="button"></td>
				    			</tr>
							</table>
						</form>	
						</div>
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