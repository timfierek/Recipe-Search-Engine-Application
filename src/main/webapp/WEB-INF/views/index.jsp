<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Recipes.com</title>
</head>
<body>
<div>Search for a Recipe!</div>
<br>
<div>
<form class="form" method = "POST" action ="/recipe-search">
<div class="searchterm"> 
<label for="searchterm">Enter a recipe name or ingredient:</label><br>
<input type="text" id="searchterm" name="searchParam" placeholder="Search here!">
</div>
<br>
<input type="radio" id="searchby" name="searchType" value="name" checked="checked">
<label for="name">Search by recipe name</label><br>
<input type="radio" id="searchby" name="searchType" value="ingredient">
<label for="ingredient">Search by main ingredient</label><br>
<br>
<input type="submit" value="Submit">
</form>
</div>







</body>
</html>