<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> 
<%@ page import="java.sql.*" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.user.*"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
	<title>BlockChain</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8">
	<link href="https://fonts.googleapis.com/css?family=Encode+Sans+Expanded:400,600,700" rel="stylesheet">
	<link href="plugin-frameworks/bootstrap.css" rel="stylesheet">
	<link href="fonts/ionicons.css" rel="stylesheet">
	<link href="common/styles.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="demo.css" />
	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
    	$('#examples').DataTable( {
        "pagingType": "full_numbers"
	    } );
	} );
</script>
<link rel="stylesheet" href="new/bootstrap.css">
  <link rel="stylesheet" href="new/bootstrap.min.css">
  <link rel="stylesheet" href="new/hi.css" >
	 <style>
	body {
  margin: 0;
  padding: 0;
  background: url(https://images.pexels.com/photos/7615621/pexels-photo-7615621.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940);
  background-size: cover;
  font-family: sans-serif;
}
.box {
 /* position: absolute;*/
  top: 50%;
  left: 50%;
  transform: translate(-12%, -5%);
  width: 92rem;
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
.box .post_section h3 {
  color: white;
  font-weight: bold;}
  
 .box .post_section r {
  color: white;} 

.box .post_section a{
  border: none;
  color: white;
  padding: 8px 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;}
  
 .button:hover {
 background-color: #E89481; 
 color: black;
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
	if(request.getParameter("Update")!=null)
	{
	out.println("<script>alert('Status Updated Successfully!')</script>");	
	}
	else if(request.getParameter("stock")!=null)
	{
	out.println("<script>alert('Out of stock')</script>");	
	}
   %>
	<!-- <header>		
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
			</ul> -->
			
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
		<div class="container" >
		<div class="box">
 					
		<h2>Payment done</h2>
		
		 <div >
		  <div  >
			<div >
			
				<div  ><br>
				<div class="post_section">
				<table align="center" style="width: 100%;" class="displays" border="1" cellpadding="10" cellspacing="10"> 	
			<tr>
			
		
			<td><h3>User_Email_ID</h3></td>
			<td><h3>Medicine_No</h3></td>
			<td><h3>MedicineName:</h3></td>
			<td><h3>CompanyName</h3></td>
			<td><h3>Qty</h3></td>
			<td><h3>Price</h3></td>
			<td><h3>Pay Amount</h3></td>
			<td><h3>User_Mobile_No</h3></td>
			
			</tr>
			<%
					  try{
						  int i=1;
						  String query="select * from user_medicine_info_bill";
						  Connection conn=DBconn.conn();
						  Statement stmt=conn.createStatement();
						  ResultSet rs=stmt.executeQuery(query);
					    	while(rs.next()){
					    	{
			%>
			
				
				
						
				<tr>
					
				
					<td><r><%=rs.getString(11) %></r></td> 
				
					<td><r><%=rs.getString(9) %></r></td> 
				
					
				
					<td><r><%=rs.getString(2) %></r></td>
				
					<td><r><%=rs.getString(3) %></r></td>
				
					<td><r><%=rs.getString(8) %></r></td>
					<td><r><%=rs.getString(6) %></r></td>
					<td><r><%=rs.getString(10) %></r></td>
					<td><r><%=rs.getString(12) %></r></td>					
				
					</tr>	   
				<%}
					i++;	
				} %>
				<% 
					}
					catch (Exception e) {
					 e.printStackTrace();
				}%>	           
    			</table>
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