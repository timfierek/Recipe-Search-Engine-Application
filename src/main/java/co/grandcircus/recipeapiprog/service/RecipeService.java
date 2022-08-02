<<<<<<<< HEAD:src/main/java/co/grandcircus/recipeapiprog/service/RecipeService.java
package co.grandcircus.recipeapiprog.service;
========
package co.grandcircus.recipeapiproj.service;
>>>>>>>> 206aba1a5d40d53cc24243e6e6bf89c4cd94195d:src/main/java/co/grandcircus/recipeapiproj/service/RecipeService.java

import java.util.List;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import co.grandcircus.recipeapiproj.model.Recipe;
import co.grandcircus.recipeapiproj.model.RecipeResponse;

@Service
public class RecipeService {
	
	@Value("${recipe.apikey}")
	private String apiKey;
	
	RestTemplate restTemplate = new RestTemplate(); 
	
	public Recipe getRecipeById(String id) {
		String url = "https://api.spoonacular.com/recipes/" + id + "/information&apiKey=" + apiKey;
		return restTemplate.getForObject(url, Recipe.class);
	}
	
	public List<Recipe> getRecipeByIngredient(String ingredients) {
		String url = "https://api.spoonacular.com/recipes/complexSearch/?includeIngredients=" + ingredients +"&apiKey=" + apiKey;
		return restTemplate.getForObject(url, RecipeResponse.class).getRecipes();
	}
	
	public List<Recipe> getRecipeByName(String name) {
		String url = "https://api.spoonacular.com/recipes/complexSearch/?titleMatch=" + name +"&apiKey=" + apiKey;
		return restTemplate.getForObject(url, RecipeResponse.class).getRecipes();
	}

}
