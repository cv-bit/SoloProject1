<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/cart.css" />
<meta charset="ISO-8859-1">
<title>project1</title>
</head>
<body>
	<div class="container">
		<header class="header">
			<h1>Pizza Place</h1>
		</header>
		<nav class="nav">
			<a href="/" class="button">Home</a>
		</nav>
		<div class="content">
			<div class="summary">
				<thead>
					<tr>
						<th>item</th>
						<th>price</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${order.item}" var="items">
					<tr>
						<th>${order.item.name}</th>
						<th>${order.item.price}</th>
					</tr>
				</c:forEach>
				</tbody>				
			</div>
			<a href="/order/${id}"><button>add to cart</button></a>
			<a href="/delete/${id}"><button>delete cart</button></a>
			<a href="/finish"><button>place order</button></a>
		</div>
		<footer class="footer">
			<img src="/img/github.png" alt="github logo" class="github" />
			<p>cv-bit.github</p>
		</footer>
	</div>
</body>
</html>