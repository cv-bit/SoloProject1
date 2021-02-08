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
			<img class="image" src="/img/cart.jfif" alt="cart image" />
			<p class="cart">${order.buys.size()}</p>
		</nav>
		<div class="content">
			<div class="summary">
				<table>
					<thead>
						<tr>
							<th>Item</th>
							<th>Price</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${order.buys}" var="items">
						<tr>
							<th>${items.name}</th>
							<th>${items.price}</th>
							<th><a href="/unBuy/{id}">remove item</a></th>
						</tr>
					</c:forEach>
					</tbody>
				</table>					
			</div>
			<p>order total: <p id="total"></p> </p>
			<script>var total = 0</script>
			<c:forEach items="${order.buys}" var="items">
				<script>
					total += ${items.price}
					document.getElementById("total").innerHTML = total.toFixed(2);
				</script>
			</c:forEach>
			<p>subtotal: <p id="subtotal"></p>
			<script>
				var subtotal = total*.065 + total;
				subtotal = subtotal.toFixed(2);
				document.getElementById("subtotal").innerHTML = subtotal;
			</script>
			<a href="/order/${id}"><button>add to cart</button></a>
			<a href="/delete/${id}"><button>delete cart</button></a>
			<button onclick="myFunction()">order</button>
			<script>
				function myFunction() {
				  confirm("Order Placed");
				}
			</script>
		</div>
		<footer class="footer">
			<img src="/img/github.png" alt="github logo" class="github" />
			<p>cv-bit.github</p>
		</footer>
	</div>
</body>
</html>