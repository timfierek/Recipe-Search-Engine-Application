<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html class="chefBackground">
<head>
	<link rel="stylesheet" href="styles.css">
	<script src="https://kit.fontawesome.com/aa77e8e357.js" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Recipes.com</title>
</head>
<body>
	<div class="topnav">
		<a class="active" href="/">Home</a> <a href="/favorites">Favorites</a>
	</div>

<div class="searchWindow">
	<div id="indexHeader">Search for a Recipe!</div>
	
	<form class="form" method = "POST" action ="/recipe-search">
		<div class="wrap">
			<div class="search">
				<input type="text" placeholder="Enter a recipe name or ingredient" class="searchTerm" name="searchParam" placeholder="Search here!">
				<button type="submit" class="searchButton">
					<i class="fa fa-search"></i>
				</button>
			</div>
		</div>
		
		<div class="searchOptions">
			<input type="radio" name="searchType" value="name" checked="checked">
			<label for="name">Search by recipe name</label><br>
			<input type="radio" name="searchType" value="ingredient">
			<label for="ingredient">Search by main ingredient</label><br>
		</div>
	</form>
</div>

</body>
</html>