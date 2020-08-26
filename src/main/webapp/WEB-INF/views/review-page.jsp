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
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class = "navbar navbar-expand">

	<ul class = "navbar-nav" id = "list">
		<li class = "nav-item"><a class = "nav-link" href="homepage">HomePage</a></li>
		<li class = "nav-item"><a class = "nav-link" href="vote-page">Options & Votes</a></li>
	</ul>
</div>
	<div>
		<table class="table">
			<thead>
				<tr>
					<th>Name</th><th>Description</th><th>Votes</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="partyReview" items="${partyReview}">
				<tr>
					<td>${partyReview.name}</td>
					<td>${partyReview.description}</td>
					<td>${partyReview.votes}</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>