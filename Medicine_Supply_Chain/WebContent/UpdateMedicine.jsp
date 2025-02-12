<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
  background: url(https://images.pexels.com/photos/7615465/pexels-photo-7615465.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1);
  background-size: cover;
  font-family: sans-serif;
}
.box {
 /* position: absolute;*/
  top: 50%;
  left: 50%;
  transform: translate(50%, -15%);
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
<body background="">
<%
if(request.getParameter("succ")!=null)
{
out.println("<script>alert('Medicine Saved Successfully!')</script>");
}
   %>
<!-- <header>
<div class="container">
<a class="logo" href="#">Medico-One Step For Medicine</a>
<img src="images/brand.gif"  style="width:60px;height:60px; transform: translate(-5%, 20%);">
<a class="menu-nav-icon" data-menu="#main-menu" href="#"><i class="ion-navicon"></i></a>
<ul class="main-menu" id="main-menu">
<li><a href="AdminHome.jsp" class="current">Home</a></li>
<li><a href="UpdateMedicine.jsp" >Add Medicine</a></li>
<li><a href="DistributeDataShow.jsp" class="current-demo">Distribute Data Show</a></li>
<li><a href="Admin_updateMedicine.jsp" class="current-demo">Update Medicine</a></li>
<li><a href="Admin_DistributePayBillDataShow.jsp" class="current-demo">Pay Bill Data Show</a></li>
<li><a href="LoginPage.jsp?logout">Logout</a></li>
</ul> -->
<div class="wrapper">
                <div class="logo">
                    <a href="#">Medico: One stop for Medicines</a>
                </div>

                <!--Nav Code-->
                <nav>
                    <a href="AdminHome.jsp" class="current"><q>Home</q></a>
                    <a href="UpdateMedicine.jsp" ><q>Add Medicine</q></a>
					<a href="DistributeDataShow.jsp" class="current-demo"><q>Distributer Data</q></a>
					<a href="Admin_updateMedicine.jsp" class="current-demo"><q>Update Medicine</q></a>
					<a href="Admin_DistributePayBillDataShow.jsp" class="current-demo"><q>Payment</q></a>
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
            <h2>Add Medicine</h2>
            <div class="post_section">
<form action="Addmedicine" method="post" class="form-block form-bold form-mb-20 form-h-35 form-brdr-b-grey pr-50 pr-sm-0">
            <table align="center" border="1"  cellpadding="5" cellspacing="5">
<tr>
<td><b>Medicine Name</b></td>
<td><input type="text" name="MedicineName"  required="required"  placeholder="Medicine Name"/></td>
<td><b>Company Name</b></td>
<td><input type="text" name="companyname"  pattern="[A-Za-z].{1,}" placeholder="Company Name" title="Minimum Two  Characters  are Required For Company Name" required /></td>
</tr>
<tr>
<td><b>Description</b></td>
<td><input type="text" name="Descriptionname"  pattern="[A-Za-z].{1,}" title="Minimum Two  Characters  are Required For First Name"  placeholder="eg. Description" required /></td>
<td><b>MFG. Date</b></td>
<td><input type="date" name="mfgdate" required  /></td>
</tr>
<tr>
<td><b>Price</b></td>
<td><input type="text" name="price" placeholder="Enter Price" required="required" pattern="^[1-9]\d*(\.\d+)?$" /></td>
<td><b>Expiry Date</b></td>
<td><input type="date" name="Expirydate" required  /></td>
</tr>
<tr>
<td><b>QTY</b></td>
<td><input type="text" name="qty" placeholder="Enter Qty" required="required" pattern="^[1-9]\d*(\.\d+)?$" /></td>

</tr>
<tr>
    <td colspan="2" align="center"><input type="submit" value="Save" style="background: yellow;color: black;" class="button"/></td>
    <td colspan="2" align="center"><input type="reset" value="Reset" style="background: yellow;color: black;" class="button"/></td>
   </tr>
</table>
                       
</form> </div>
</div>
</div>
</div>

<!--  <div class="col-sm-12 col-md-4">
<h3 align="center">Update Medicine Information</h3>
<img src="img/users.jpg" alt="">
</div>-->
</div>
</div>
</section><br><br><br><br><br><br>

<!-- <footer class="bg-191 color-ccc">
<div class="brdr-ash-1 opacty-2"></div>
<div class="oflow-hidden color-ash font-9 text-sm-center ptb-sm-5"><br>
<p class="color-ash">
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="ion-heart" aria-hidden="true"></i> by <a href="#" target="_blank">Digital Certificate on Blockchain</a>
</p><br>
</div>
</footer> -->
<script src="plugin-frameworks/jquery-3.2.1.min.js"></script>
<script src="plugin-frameworks/tether.min.js"></script>
<script src="plugin-frameworks/bootstrap.js"></script>
<script src="common/scripts.js"></script>
</body>
</html>