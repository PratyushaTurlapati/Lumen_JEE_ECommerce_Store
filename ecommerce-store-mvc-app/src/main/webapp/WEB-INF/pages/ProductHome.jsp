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
<h1 style="text-align: center;"><b>Products Home Page</b></h1>
	<div class="btn-group-vertical">
	
		<br>
		<br>
		<br>
		<br>
		<a href="/list/products" class="btn btn-success">List of Products</a>
		 <br>
		<a href="/list/merchant" class="btn btn-success">List of Products by Merchant</a>
		 <br>
		<a href="/save" class="btn btn-success">Create new product</a> 
		<br>
		<a href="/update" class="btn btn-success">Update existing product</a> 
		<br> 
		<a href="/list/products-available" class="btn btn-success">Products with inventory > 0</a><br> 
		<a href="/list/products-not-available" class="btn btn-success">Products with inventory = 0</a>
	</div>
	<br>
	<br>
	<div style="text-align: center;">
			
			<button onclick="history.back()">Go Back To Home</button>
	</div>
</body>
</html>