<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Homepage</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<link href="/style.css" rel="stylesheet" />
</head>
<h1>Parties</h1>
<body>
<div class = "navbar navbar-expand">

	<ul class = "navbar-nav" id = "list">
		<li class = "nav-item"><a class = "nav-link" href="vote-page">Options & Votes</a></li>
		<li class = "nav-item"><a class = "nav-link" href="review-page">Review Options</a></li>
	</ul>
</div>
<div class="container">
		<h1>Upcoming Parties</h1>
		<table class="table">
			<thead>
				<tr>
					<th>Name</th><th>Date</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="party" items="${party}">
				<tr>
					<td>${party.name}</td>
					<td>${party.date}</td>
					<td><a class="btn btn-secondary" href="/see-details?id=${party.id}">See Details</a></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	
	<p>
	<h1>RSVP</h1>
	<form action="rsvp-add" method = "post">
	<label>Party</label>
	<select name="party">
		<c:forEach var="party" items="${party}">
					<option value="${party.id}">
						<c:out value="${party.name}" />
					</option>
				</c:forEach>
	</select>
	<label>Name</label> <input type="text" required name="name">
	<label>Comment</label> <input type="text" required name="comment">
	<button type="submit" class="btn btn-warning">RSVP</button>
	</form>
		<div>
		<p>
<h2>Add A Party</h2>
		<form action="/party-add" method="post">
		<table class="table">
			<tr>
				<th>Name</th>
				<td><input type="text" name="name" autofocus/></td>
				<th>Date</th>
				<td><input type="date" name="date"/></td>
				</tr>
		</table>
		<button type="submit" class="btn btn-primary">Add</button>
		</form>
		</div>
	</p>
</body>
</html>