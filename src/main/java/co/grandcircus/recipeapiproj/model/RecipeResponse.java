package co.grandcircus.recipeapiproj.model;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonProperty;

public class RecipeResponse {

	@JsonProperty("results")
	private List<Recipe> recipes;

	public List<Recipe> getRecipes() {
		return recipes;
	}

	public void setRecipes(List<Recipe> recipes) {
		this.recipes = recipes;
	}
	
}
