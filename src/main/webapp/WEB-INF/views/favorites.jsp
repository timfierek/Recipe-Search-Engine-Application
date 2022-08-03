<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
	<head>
	<link
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
		crossorigin="anonymous">
	<meta charset="ISO-8859-1">
	<title>Favorite Recipes</title>
	</head>
		<body>
			<a href="/">Home  </a>
			<a href="/favorites">|  Favorites</a>
		
			<h3>Favorited Recipes</h3>
			
			<table>
				<tbody>
				<c:forEach var="fav" items="${favorites}">
					<tr>
						<td><a href="/recipe-details?id=${fav.id}">${fav.name}</a></td>
						<td><a href="/delete?id=${fav.id}" class="button">Delete</a></td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
				
				
				
		</body>
</html>