<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/newOrder.css" />
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<header class="header">
			<h1>Pizza Place</h1>
		</header>
		<nav class="nav">
			<a href="/"> Home </a>
		</nav>
		<div class="content">
			<h2>New Order</h2>
			<form:form  action="/newOrder" method="post" modelAttribute="order">
				<h3>Register</h3>
		    	<div>
		    	    <form:label path="name">Name</form:label>
		    	    <form:errors path="name" />
		    	    <form:input type="text" path="name" />
		    	</div>
		    	 <div>
		    	    <form:label path="address">Address</form:label>
		    	    <form:errors path="address"/>
		    	    <form:input type="text" path="address" />
		    	</div>
		    	<div>
		        	<form:label path="phone">Phone</form:label>
		        	<form:errors path="phone"/>
		        	<form:input type="text" path="phone" />
		    	</div>
		    	<input type="submit" value="Lets eat!" class="button"/>
			</form:form>
		</div>
		<footer class="footer">
			<img src="/img/github.png" alt="github logo" class="github" />
			<p>cv-bit.github</p>
		</footer>
	</div>
</body>
</html>