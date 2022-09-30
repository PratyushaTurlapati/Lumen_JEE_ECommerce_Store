<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Failure Page</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	>
</head>
<body>
	<div>
		<p style="color:green">${message}</p>
	</div>
	<br>
	<div style="text-align: center;">
		<button onclick="window.location.href='/order-home-page'"
			class="btn btn-danger">Order Home page</button>
	</div>
</body>
</html>