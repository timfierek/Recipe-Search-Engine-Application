<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="styles.css">
<title>${recipe.name}</title>
</head>
<body>
	<div class="topnav">
		<a href="/">Home</a> <a href="/favorites">Favorites</a>
	</div>

	<h2 class="headerText">${recipe.name} by ${recipe.creditsText}</h2>
	<img alt="${recipe.name}" src="${recipe.image}" width="312" height="231">

	<div class="recipeInformation">
	
		<h4>Ingredients:</h4>
		<ul class="allIngredients">
			<c:forEach var="ingredient" items="${recipe.ingredients}">
				<li>${ingredient.name}, ${ingredient.amount} ${ingredient.unit}</li>
			</c:forEach>
		</ul>
		<br> 
		<h4>Directions:</h4>
		<div class="instructions">${recipe.instructions}</div>
		<br>
		<h4>Nutrition Information (per serving):</h4>
		<ul class="allNutrients">
			<c:forEach var="nutrient" items="${recipe.nutrition.nutrients}" begin="0" end="8">
				<li>${nutrient.name} - ${nutrient.amount}${nutrient.unit}</li>
			</c:forEach>
		</ul>	
	</div>
</body>
</html>