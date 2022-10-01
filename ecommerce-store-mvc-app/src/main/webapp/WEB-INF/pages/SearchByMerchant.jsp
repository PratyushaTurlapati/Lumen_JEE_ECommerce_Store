<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search By Merchant Name</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" >
</head>
<body  style="text-align:center;background-color:beige;">
<br>
	<br>
	<h3 style="text-align:center;"><b>Search Using Merchant Name<b></b></h3>
	<br>
	<br>
	<form action="/list/merchant" method="post">
		<div class="form-group" >
			<label  >Enter Product Merchant Name</label>
			<br> <input type="text" class="form-group" style="text-align:center;width:400px"name="productMerchant">
			<br> 
			<br>
			<input type="submit" value="Search">
		</div>
		
	</form>
	<div style="text-align: center;">
			
			<button onclick="history.back()">Go Back To Home</button>
	</div>
</body>
</html>