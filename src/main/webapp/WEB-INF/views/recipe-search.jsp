<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="styles.css">
<meta charset="ISO-8859-1">
<title>${searchParam}Recipes</title>
</head>
<body>
	<div class="topnav">
		<a href="/">Home</a> <a href="/favorites">Favorites</a>
	</div>

	<h2 class="headerText">Search Results for: "${searchParam}"</h2>

	<div class="results">
		<c:if test="${resultsSize == 0}">
			<h4>No results found for "${searchParam}", please try again with
				different keywords</h4>
		</c:if>

		<c:forEach var="recipe" items="${results}">
			<a href="/recipe-details?id=${recipe.id}">${recipe.name}</a>
			<br>
			<img alt="${recipe.name}" src="${recipe.image}" width="312"
				height="231">
			<br>
			<a href="/add-favorite?id=${recipe.id}">Add to Favorites</a>
			<br>
			<br>
			<br>
		</c:forEach>
	</div>
</body>
</html>