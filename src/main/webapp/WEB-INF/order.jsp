<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/order.css" />
<meta charset="ISO-8859-1">
<title>project1</title>
</head>
<body>
	<div class="container">
		<header class="header">
			<h1>Pizza Place</h1>
		</header>
		<nav class="nav">
			<a href="/cart/${id}" class="button">Back to order</a>
		</nav>
		<div class="content">
			<table>
				<thead>
					<tr>
						<th>name</th>
						<th>description</th>
						<th>price</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${allItem}" var="item">
					<tr>
						<td><a href="#" class="menu">${item.name}</a></td>
            	    	<td class="desc">${item.description}</td>
            	   		<td class= "price">${item.price}</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
		<footer class="footer">
			<img src="/img/github.png" alt="github logo" class="github" />
			<p>cv-bit.github</p>
		</footer>
	</div>
</body>
</html>