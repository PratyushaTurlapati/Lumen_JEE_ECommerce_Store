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
<body>
	<p style="color: #00FF00">${message}</p>
	<form:form method="post" modelAttribute="product" action="update">
		<div class="form-group">
			<label>Product Id</label>
			<form:input path="productId" class="form-control" id="productId" required="required"/>
		</div>
		<div class="form-group">
			<label>Product Name</label>
			<form:input path="productName" class="form-control" id="productName" />
		</div>
		<div class="form-group">
			<label>Product Price</label>
			<form:input path="productPrice" class="form-control" id="productPrice" />
		</div>
		<div class="form-group">
			<label>Product Inventory</label>
			<form:input path="productInventory" class="form-control" id="productInventory" />
		</div>
		<div class="form-group">
			<label>Product Merchant</label>
			<form:input path="productMerchant" class="form-control" id="productMerchant" />
		</div>
		<div class="form-group">
			<input type="submit" value="Update">
			
			
		</div>
	</form:form>
</body>
</html>