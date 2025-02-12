<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<title>Medico</title>
<html lang="en">
<head>
	<title>Medico</title>
	<link rel="icon" href="icon_path" type="img/logo.jpg">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/hi.css" >
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
     <link rel="stylesheet" href="/w3css/3/w3.css">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Encode+Sans+Expanded:400,600,700" rel="stylesheet">
	<link href="plugin-frameworks/bootstrap.css" rel="stylesheet">
	<link href="fonts/ionicons.css" rel="stylesheet">
	<link href="common/styles.css" rel="stylesheet">
	
	<link rel="stylesheet" href="new/bootstrap.css">
  <link rel="stylesheet" href="new/bootstrap.min.css">
  <link rel="stylesheet" href="new/hi.css" >
  <link href="bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="login.css">
  
  <style>
	body {
  margin: 0;
  padding: 0;
  background: url(https://images.pexels.com/photos/7615465/pexels-photo-7615465.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1);
  background-size: cover;
  font-family: sans-serif;
}

.box {
 /* position: absolute;*/
  top: 50%;
  left: 50%;
  transform: translate(50%, 10%);
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
color: black;
}

.wrapper .nav q{
color: black;
}
  </style>
</head>
<body>
	<%
	if(request.getParameter("logout")!=null)
	{
		session.invalidate();
		Thread.sleep(2000);
		out.println("<script>alert('Logout Successful!')</script>");
	}
	if(request.getParameter("Done")!=null)
	{
	out.println("<script>alert('Congratulations! Your Profle has been successfully created!')</script>");	
	}
	else if(request.getParameter("invalid")!=null)
	{
	out.println("<script>alert('Oops! Invalid Login Credential! <br> Please Enter Correct Credentials.')</script>");	
	}
	else if(request.getParameter("succ")!=null)
	{
	out.println("<script>alert('Congratulations! You have successfully registered!')</script>");	
	}
   %>
  <!--  <header>
    
		
		<div class="container">
			
			<!--  <a class="logo" href="#">Medicines Supply Chain using Block Chain</a>
			<a class="menu-nav-icon" data-menu="#main-menu" href="#"><i class="ion-navicon"></i></a>
			<ul class="main-menu" id="main-menu"><li><a href="RegisterPage.jsp">REGISTER</a></li>
				<li><a href="LoginPage.jsp" class="current">LOGIN</a></li>
				
			</ul>-->
			 <div class="wrapper">
                <div class="logo">
                    <a href="#">Medico: One stop for Medicines</a>
                </div>

                <!--Nav Code-->
                <nav>
                    <a href="LoginPage.jsp" class="current"><q>Home</q></a>
                    
                    <a href="RegisterPage.jsp"><q>Sign-up</q></a>
                    
                </nav>
            </div>
			<div class="clearfix"></div>
		
	

	<section class="ptb-0">
	<div class="mb-30 brdr-ash-1 opacty-5"></div>
		<div class="container"><br><br><br>
		 <div class="row">
		  <div class="col-sm-12 col-md-8">
			<div class="row">
				<table align="center">
					<!--  <tr>
						<td><img src="img/admin.jpg" width="10" height="240">
					</tr>
					<tr>
						<td colspan="2"><b>Login</b></td>
					</tr>-->
            	</table>			
		
		<div class="box">
  <h2>Login</h2>
						<form class="post_section" action="AddLogin" method="post">
							<table align="center" border="0"  cellpadding="5" cellspacing="5">
								<tr>
									<td colspan="2"><div class="cleaner" style="height: 20%">&nbsp;&nbsp;&nbsp;&nbsp;</div></td>
								</tr>
								<tr>
									<td><b>Select Roll:</b></td>
									<td><select style="width: 100%; height: 30px"
										id="username" name="roll" required="required">
											<option selected="selected">Select Roll</option>
											<option value="User">User</option>
											<option value="Admin">Admin</option>
											<option value="Distribute">Distributer</option>
											</select></td>
								</tr>
								<tr>
									<td><b>Email_ID:</b></td>
									<td><input type="text" name="email" placeholder="mymail@mail.com" required /></td>
								</tr>
								<tr>
									<td><b>Password:</b></td>
									<td><input type="password" name="password" placeholder="eg. X8df!90EO" required /></td>
								</tr>
								<tr>
							     	<td colspan="1" align="center"><input class="input-rounded-button" type="submit" value="Log In" style="height: 30px;width: 80px;"/></td>
							    	
				    			</tr>
							</table>
						</form>	
						
						
					</div>
				</div>
				
				<!--  <div class="col-sm-12 col-md-4">
					<img src="images/M3.jpg" alt="">
				</div>-->
			</div>
		</div>
	</section><br><br><br><br><br><br>
	
	<!--Footer Section
    <footer>
        <div class="footer-top">
            <div class="container">
                <div class="row"> 
                    <div class="col-md-3 col-sm-6 col-xs-12 segment-one">
                        <h2>About Us</h2>
                        <p>
                            We are an institution based on the principles of justice, knowledge and discipline.
                            The staff and the interpersonal interactions between the students and the university college community is regarded at high priority to maintain the dignity of the establishment. 
                        </p>
                    </div>

                    <div class="col-md-3 col-sm-6 col-xs-12 segment-two">
                        <h2>Contact Us</h2>
                        <div class="place">
                            <span class="fas fa-map-marker-alt"><p>5801 S Ellis Ave, Chicago, IL 60637, United States.</p> <br></span>
                            
                        </div>
                        <div class="phone">
                            <span class="fas fa-phone-alt"><p>Toll free:1800 266 1515 No.:+089-795432900</p> <br></span>
                        </div>
                        <div class="email">
                            <span class="fas fa-envelope"> <p>wilsoncollege@gmail.com</p></span>
                         </div>
                    </div>

                    <div class="col-md-3 col-sm-6 col-xs-12 segment-three">
                        <h2>Follow Us</h2>
                        <p>Thank you for visiting! <br> For more information about our College visit our Social Media Handles.</p>
                        <div class="social">
                            <a href="https://www.facebook.com"><span class="fab fa-facebook-f"></span></a>
                            <a href="https://twitter.com"><span class="fab fa-twitter"></span></a>
                            <a href="https://instagram.com"><span class="fab fa-instagram"></span></a>
                            <a href="https://youtube.com"><span class="fab fa-youtube"></span></a>
                        </div>
                    </div>

                    <div class="col-md-3 col-sm-6 col-xs-12 segment-four">
                        <h2>Our Newsletter</h2>
                        <p>For latest news and updates suscribe to our Newsletter.</p>
                        <form action="#">
                                <input type="email" placeholder="Email ID" name="mail" required>
                                <input type="submit" value="Send"></input>
                        </form>


                    </div>
                </div>
            </div>
        </div>

            </footer>
    
	<footer class="bg-191 color-ccc">
			<div class="brdr-ash-1 opacty-2"></div>
			<div class="oflow-hidden color-ash font-9 text-sm-center ptb-sm-5"><br>
			<p class="color-ash">
				Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved 
			</p><br>
			</div>
	</footer>-->
	<script src="plugin-frameworks/jquery-3.2.1.min.js"></script>	
	<script src="plugin-frameworks/tether.min.js"></script>	
	<script src="plugin-frameworks/bootstrap.js"></script>	
	<script src="common/scripts.js"></script>	
</body>
</html>