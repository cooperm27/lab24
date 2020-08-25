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
<h1>Parties</h1>
<body>

<div class="container">
		<h1>Upcoming Parties</h1>
		<table class="table">
			<tr>
				<th scope="row">Name</th>
				<td>${party.name}</td>
			</tr>
			<tr>
				<th scope="row">Date</th>
				<td>${party.date}</td>
			</tr>
		</table>
		</div>
<body>

</body>
</html>