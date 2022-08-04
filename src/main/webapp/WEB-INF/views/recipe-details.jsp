<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html id="recipe-details">
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="styles.css">
<title>${recipe.name}</title>
</head>
<body>
	<div class="topnav">
		<a href="/">Home</a> <a href="/favorites">Favorites</a>
	</div>

	<div class="header">
		<h2 class="headerText">${recipe.name} by ${recipe.creditsText}</h2>
	</div>
	
	<div class="recipeInfoContainer">
		<div class="imgContainer">
			<img id="recipeImg2" alt="${recipe.name}" src="${recipe.image}">
		</div>

		<!-- <div class="recipeInformation"> -->
		
			<div class="ingredientsContainer">
				<h4>Ingredients:</h4>
				<ul class="allIngredients">
					<c:forEach var="ingredient" items="${recipe.ingredients}">
						<li>${ingredient.name}, ${ingredient.amount} ${ingredient.unit}</li>
					</c:forEach>
				</ul>
			</div>
		
			<div class="nutritionContainer">
				<h4>Nutrition Information (per serving):</h4>
				<ul class="allNutrients">
					<c:forEach var="nutrient" items="${recipe.nutrition.nutrients}" begin="0" end="8">
						<li>${nutrient.name} - ${nutrient.amount}${nutrient.unit}</li>
					</c:forEach>
				</ul>
			</div>	
	</div>
			<div class="instructions"> 
				<h4>Directions:</h4>
				${recipe.instructions}
			</div>
		<!-- </div> -->
	
</body>
</html>