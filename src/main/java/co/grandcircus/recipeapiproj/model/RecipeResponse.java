package co.grandcircus.recipeapiproj.model;

import java.util.List;

public class RecipeResponse {

	private List<Recipe> recipes;

	public List<Recipe> getRecipes() {
		return recipes;
	}

	public void setRecipes(List<Recipe> recipes) {
		this.recipes = recipes;
	}
	
}
