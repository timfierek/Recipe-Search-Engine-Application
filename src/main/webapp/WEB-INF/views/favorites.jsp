<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
	<head>
	<link rel="stylesheet" href="styles.css">
		
	<meta charset="ISO-8859-1">
	<title>Favorite Recipes</title>
	</head>
		<body>
			<div class="topnav">
				<a href="/">Home</a> <a class="active" href="/favorites">Favorites</a>
			</div>
	
	
			<div class="fav">
			<h1>Favorited Recipes &#9829;</h1>
			</div>		
			
			<table>
				<tbody>
				<c:forEach var="fav" items="${favorites}">
					<tr>
						<td><a href="/recipe-details?id=${fav.id}" style="text-decoration:none;">${fav.name}</a></td>
						<td><a id="delete" href="/delete?id=${fav.id}" class="button">Delete</a></td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
				
				
				
		</body>
</html>