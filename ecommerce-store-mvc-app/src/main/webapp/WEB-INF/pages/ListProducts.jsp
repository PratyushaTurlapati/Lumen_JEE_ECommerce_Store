<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Products</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" >
<style type="text/css">
body{
	background-color:beige;
}
table, tr, td, th,h3 {
	border: 2px solid green;
	margin-left: auto;
	margin-right: auto;
	border-collapse: collapse;
}
</style>
</head>
<body>
	<br>
	<br>
	<br>
	<br>
	<h3 style="text-align:center;"><b>List Of Products<b></b></h3>
	<br>
	<br>
	<div>

		<table>
			<thead>
				<tr>
					<th>Product Id</th>
					<th>Product Name</th>
					<th>Product Price</th>
					<th>Product Inventory</th>
					<th>Product Merchant</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="eachProduct">
					<tr>
						<td>${eachProduct.productId}</td>
						<td>${eachProduct.productName}</td>
						<td>${eachProduct.productPrice}</td>
						<td>${eachProduct.productInventory}</td>
						<td>${eachProduct.productMerchant}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>


	</div>
	<br> <br>
	<div style="text-align: center;">
			
			<button onclick="history.back()">Go Back To Home</button>
	</div>

</body>
</html>