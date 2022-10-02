<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Product</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" >
</head>
<body  class="form-group"style="text-align:center;background-color:beige;" >
<br>
<br>
<h3 style="text-align:center;"><b>Add the Product Details</b></h3>
	<br>
	<br>
	<p style="color: green"><b>${message}</b></p>
	<form:form method="put" modelAttribute="product" action="update" >
		
		<div class="btn-group-vertical" style="text-align:center">
		<br>
		
			<label>Product Id</label>
			<form:input path="productId" class="form-control" id="productId" required="required"/>

			<label>Product Name</label>
			<form:input path="productName" class="form-control" id="productName" />
	
			<label>Product Price</label>
			<form:input path="productPrice" class="form-control" id="productPrice" />

			<label>Product Inventory</label>
			<form:input path="productInventory" class="form-control" id="productInventory" />
		
			<label>Product Merchant</label>
			<form:input path="productMerchant" class="form-control" id="productMerchant" />
		</div>
		<br>
		<div class="form-group">
			<input type="submit" value="Update">
			
			
		</div>
	</form:form>
	<div style="text-align: center;">
			
			<button onclick="history.back()">Go Back To Home</button>
	</div>
</body>
</html>