<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vote-Page</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<link href="/style.css" rel="stylesheet" />
</head>
<body>
<h1>Options and Votes</h1>
<div class = "navbar navbar-expand">

	<ul class = "navbar-nav" id = "list">
		<li class = "nav-item"><a class = "nav-link" href="homepage">HomePage</a></li>
		<li class = "nav-item"><a class = "nav-link" href="review-page">Review Options</a></li>
	</ul>
</div>
	<div>
		<table class="table">
			<thead>
				<tr>
					<th>Name</th><th>Description</th><th>Votes</th><th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="partyOption" items="${partyOption}">
				<tr>
					<td>${partyOption.name}</td>
					<td>${partyOption.description}</td>
					<td>${partyOption.votes}</td>
					<td><a class="btn btn-secondary" href="/addVotes?id=${partyOption.id}">Vote!</a></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div>
<h2>Add an Option</h2>
		<form action="/vote-page/add" method="post">
		<table class="table">
			<tr>
				<th>Name</th>
				<td><input type="text" name="name" autofocus/></td>
				<th>Description</th>
				<td><input type="text" name="description" /></td>
				</tr>
		</table>
		<button type="submit" class="btn btn-primary">Add</button>
		</form>
		</div>	
</body>
</html>