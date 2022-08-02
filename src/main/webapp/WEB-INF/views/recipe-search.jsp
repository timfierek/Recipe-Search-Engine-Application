<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${searchParam} Recipes</title>
</head>
<body>
	<a href="/">Home</a> | <a href="/favorites">Favorites</a>
	
	<h2 class="headerText">Search Results for: ${searchParam}</h2>
	
	<div class="results">
		<c:forEach var="recipe" items="${results}" class="recipe">
			<a href="/recipe-details?id=${recipe.id}">${recipe.name}</a>
			
			<ul class="mainIngredients">
				<c:forEach begin="0" end="3" var="ingredient" items="${recipe.ingredients}">
					<li>${ingredient.name}</li>
				</c:forEach>
			</ul><br><br>
			
			<a href="/add-favorite?id=${recipe.id}">Add to Favorites</a><br><br>
		</c:forEach>
	</div>
</body>
</html>