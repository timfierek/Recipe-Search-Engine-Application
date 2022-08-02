<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${recipe.name}</title>
</head>
<body>
	<a href="/">Home</a> |
	<a href="/favorites">Favorites</a>

	<h2 class="headerText">${recipe.name}by ${recipe.creditsText}</h2>

	<div class="recipeInformation">
	
		<ul class="allIngredients">
			<c:forEach var="ingredient" items="${recipe.ingredients}">
				<li>${ingredient.name}</li>
			</c:forEach>
		</ul>
		<br> 
		<br>
		<div class="instructions">${recipe.instructions}</div>
		<br>
		<br>
		<ul class="allNutrients">
			<c:forEach var="nutrient" items="${recipe.nutrients}">
				<li>${ingredient.name}</li>
			</c:forEach>
		</ul>
		
	</div>
</body>
</html>