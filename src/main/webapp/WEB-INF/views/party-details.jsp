<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Party Details</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<link href="/style.css" rel="stylesheet" />
</head>

<h1>Party: ${partyName} </h1><br>
<ul class = "navbar-nav" id = "list">
		<li class = "nav-item"><a class = "nav-link" href="homepage">HomePage</a></li>
		<li class = "nav-item"><a class = "nav-link" href="review-page">Review Options</a></li>
	</ul>
<body class = "container">

<h4>Party Date: ${partyDate}</h4><br>

<h2>RSVPs</h2>

<div>
		<table class="table">
			<thead>
				<tr>
					<th>Attendee</th><th>Comment</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="attendees" items="${attendees}">
				<tr>
					<td>${attendees.attendee}</td>
					<td>${attendees.comment}</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>