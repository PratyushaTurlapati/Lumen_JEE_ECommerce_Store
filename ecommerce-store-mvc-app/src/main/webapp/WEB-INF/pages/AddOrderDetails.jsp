<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Order</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" >
<style type="text/css">
form-group{
background-color:beige;
}
</style>
</head>
<body  class="form-group"style="text-align:center;background-color:beige;" >
<br>
<br>
<h3 style="text-align:center;"><b>Add the Order Details</b></h3>
	<br>
	<br>
	<p style="color: green"><b>${message}</b></p>
	<form:form method="post" modelAttribute="order" action="savetheorder" >
		
		<div class="btn-group-vertical" style="text-align:center">
		<br>
		
			
		
			
			<label>Product Id</label>
			<form:input path="productId" class="form-control" id="productId" required="required"/>

			<label>Product Quantity</label>
			<form:input path="quantity" class="form-control" id="quantity" required="required"/>

			<label>user Name</label>
			<form:input path="user" class="form-control" id="user" />
	
			

		
		</div>
		<br>
		<div class="form-group">
			<input type="submit" value="Add">
			
		</div>
		</div>
	</form:form>
	<div style="text-align: center;">
			
			<button onclick="history.back()">Go Back To Home</button>
	</div>
</body>
</html>