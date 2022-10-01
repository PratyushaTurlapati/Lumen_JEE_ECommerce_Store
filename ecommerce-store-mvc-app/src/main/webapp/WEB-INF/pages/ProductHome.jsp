<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Home Page</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" >
</head>
<body style="text-align: center; background-color:beige">
<br>
<h1 style="text-align: center;font-family:WildWest;color:#00009C"><b>Products Home Page</b></h1>
	<hr style="position: relative;
        top: 20px;
        border: none;
        height: 8px;
        background: black;
        margin-bottom: 50px;">
	<div class="btn-group-vertical" style="color:blue;">
	  
		<br>

		<div class="cd" style="float:center;text-align:center;">
		<h3 style="color:#00009C;font-family:WildWest;"><b>Create &Update Products</b></h3>
		<br>
		<a href="/save" class="btn btn-success"style="background-color:magenta;border-radius: 90%;width:200px;height:40px;align:left">Create new product</a> 
		&nbsp;&nbsp;
		<a href="/update" class="btn btn-success"style="background-color:purple;border-radius: 90%;width:200px;height:40px;">Update existing product</a> 
		<br> 
		</div>
		<br>
		<br>
		<div class="cd" style="float:left;text-align: center;">
		<h3 style="color:#00009C;font-family:WildWest;"><b>List Products</b></h3>
		<a href="/list/products"  class="btn btn-success" style="background-color:blue;border-radius: 90%;width:250px;height:40px;">List of Products</a>
		&nbsp;&nbsp;
		<a href="/list/merchant" class="btn btn-success" style="background-color:olive;border-radius: 90%;width:250px;height:40px;">List of Products by Merchant</a>
		&nbsp;
		
		<a href="/list/products-available" class="btn btn-success" style="background-color:green;border-radius: 90%;width:250px;height:40px;">Products with inventory > 0</a> 
		&nbsp;
		<a href="/list/products-not-available" class="btn btn-success"style="background-color:maroon;border-radius: 90%;width:250px;height:40px;">Products with inventory = 0</a>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<div style="text-align: center;">
			
			<button onclick="history.back()">Go Back To Home</button>
	</div>
</body>
</html>