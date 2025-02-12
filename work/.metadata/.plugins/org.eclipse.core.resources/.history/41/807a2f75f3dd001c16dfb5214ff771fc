<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> 
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
	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
    	$('#examples').DataTable( {
        "pagingType": "full_numbers"
	    } );
	} );
</script>
 <style>
	body {
  margin: 0;
  padding: 0;
  background: url(https://images.pexels.com/photos/7615470/pexels-photo-7615470.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940);
  background-size: cover;
  font-family: sans-serif;
}
.box {
 /* position: absolute;*/
  top: 50%;
  left: 50%;
  transform: translate(90%, 10%);
  width: 25rem;
   padding: 2.5rem;
  box-sizing: border-box;
  background: rgba(0, 0, 0, 0.6);
  border-radius: 0.625rem;
}

.box h1 {
  margin: 0 0 1.875rem;
  padding: 0;
  color: #fff;
  text-align: center;
}
.box .post_section b {
  color: white;
  
}
  
 .box .post_section r {
  color: white;} 
  
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
   %>
	<!-- <header>		
		<div class="container">
			<a class="logo" href="#">Medicines Supply Chain using Block Chain</a>
			<a class="menu-nav-icon" data-menu="#main-menu" href="#"><i class="ion-navicon"></i></a>
			<ul class="main-menu" id="main-menu">
				<li><a href="Home.jsp" class="current" >Home</a></li>
				<li><a href="U_OrderShow.jsp" >Order</a></li>
				<li><a href="LoginPage.jsp?logout">Logout</a></li>
			</ul> -->
			
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
		<div class="container">
		 <div class="row">
		  <div class="col-sm-12 col-md-8">
			<div class="row">			
			<%
					  try{
						  String mid=request.getParameter("id");
						  System.out.println(mid);
						  int i=1;
						  String query="select * from distribute_medicine_info where MID='"+mid+"'";
						  Connection conn=DBconn.conn();
						  Statement stmt=conn.createStatement();
						  ResultSet rs=stmt.executeQuery(query);
					    	if(rs.next()){
					    	{
			%>
			
			
				
			</div>
				</div>
				<div class="box">
 				<h1>Requirement</h1>
				<!--  <div class="col-sm-12 col-md-4"><br>
				<h3 align="center"><b>View Information:</b></h3>-->
				<div class="post_section">
					<form action="userorder" method="post" class="form-block form-bold form-mb-20 form-h-35 form-brdr-b-grey pr-50 pr-sm-0">
			
					<table  class="displays" >  	
				<tr>
					
					<td colspan="2"><input type="hidden" name="id" value=<%=mid %> readonly="readonly" /></td>
				</tr>
				<tr>
					<td><b>Medicine No:</b></td>
					<td><input type="text" name="Medicine_No" value=<%=rs.getString(9) %> readonly="readonly"/></td>
				</tr>
				<tr>
					<td><b>Medicine Name:</b></td>
					<td><r><%=rs.getString(2) %></r></td>
				</tr>
				<tr>
					<td><b>Company Name:</b></td>
					<td><r><%=rs.getString(3) %></r></td> 
				</tr>
				<tr>
					<td><b>Quantity:</b></td>
					<td><r><%=rs.getString(8) %></r></td> 
				</tr>
				<tr>
					<td><b>Order Quantity:</b></td>
					 <td><input type="text" name="qty" placeholder="Enter Qty" required="required" pattern="^[1-9]\d*(\.\d+)?$" /></td>
				</tr>
				
				<tr>
				     	<td><input type="submit" value="Save" style="background: yellow;color: black;" class="button"/></td>
				     	<td><input type="reset" value="Reset" style="background: yellow;color: black;" class="button"/></td>
				    </tr>	   
				<%}
						
				} %>
				<% 
					}
					catch (Exception e) {
					 e.printStackTrace();
				}%>	           
    			</table>
    			</form>
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