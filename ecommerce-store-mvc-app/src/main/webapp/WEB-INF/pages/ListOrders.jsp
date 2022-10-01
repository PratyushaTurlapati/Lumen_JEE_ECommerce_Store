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
<body >
	<div>
		<br>
		<table>
			<thead>
				<tr>
					<th>Order Id</th>
					<th>User</th>
					<th>Order Date</th>
					<th>Product</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="eachOrder">
					<tr>
						<td>${eachOrder.orderId}</td>
						<td>${eachOrder.user}</td>
						<td>${eachOrder.orderDate}</td>
						<td>${eachOrder.product}</td>
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