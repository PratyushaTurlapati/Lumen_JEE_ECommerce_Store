<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Home Page</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	>
</head>
<body style="text-align: center;background-color:beige">

	<h1 style="text-align: center;color:#00009C;font-family:WildWest;"><b>Order Home Page</b></h1>
	<hr style="position: relative;
        top: 20px;
        border: none;
        height: 8px;
        background: black;
        margin-bottom: 50px;">
	<br>
	</div>
		
		<div class="cd" style="float:center;text-align: center;">
		
		<h3 style="color:#00009C;font-family:WildWest;"><b>Create &Update Products</b></h3>
		<br>
		<a href="/saveorder" class="btn btn-success" style="background-color:green;border-radius: 90%;width:250px;height:40px;">Create new order</a>&nbsp;&nbsp;
		<a href="/updateorder" class="btn btn-success" style="background-color:magenta;border-radius: 90%;width:250px;height:40px;">Update existing order</a>
	</div>
	<div class="btn-group-vertical">
	 <div class="cd" style="float:left;text-align: center;">
	 <br>
	 <br>
	<br>
	<br>
	 <h3 style="color:#00009C;font-family:WildWest;"><b>List Products</b></h3>
		<a href="/list/orders" class="btn btn-success" style="background-color:maroon;border-radius: 90%;width:250px;height:40px;">List All orders</a> 
		&nbsp;&nbsp;
		<a href="/list/user" class="btn btn-success" style="background-color:olive;border-radius: 90%;width:250px;height:40px;">List user orders</a>
		&nbsp;&nbsp;
		<a href="/orderId" class="btn btn-success"style="background-color:purple;border-radius: 90%;width:250px;height:40px;">List out orders by id</a>
		&nbsp;&nbsp;
		
	</div>
	
	<br>
	<br>
	

	<div style="text-align: center;">
	<br>
	<br>
	<br>
	<br>
	
	<br>
	<br>
	<br>
	<br>
	<br>
	
	<br>
	<br>
			
			<button onclick="history.back()">Go Back To Home</button>
	</div>
</body>
</html>

