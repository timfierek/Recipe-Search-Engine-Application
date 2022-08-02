package co.grandcircus.recipeapiproj.model;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import com.fasterxml.jackson.annotation.JsonProperty;

@Document("favorites")
public class Recipe {
	public RecipeNutrition[] getNutrients() {
		return nutrients;
	}

	public void setNutrients(RecipeNutrition[] nutrients) {
		this.nutrients = nutrients;
	}

	@Id
	private String id;
	
	@JsonProperty("title")
	private String name;
	private String instructions;
	
	@JsonProperty("extendedIngredients")
	private RecipeIngredients[] ingredients;
	@JsonProperty("nutrition.nutrients")
	private RecipeNutrition[] nutrients;
	private String creditsText;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getInstructions() {
		return instructions;
	}

	public void setInstructions(String instructions) {
		this.instructions = instructions;
	}

	public RecipeIngredients[] getIngredients() {
		return ingredients;
	}

	public void setIngredients(RecipeIngredients[] ingredients) {
		this.ingredients = ingredients;
	}

	public String getCreditsText() {
		return creditsText;
	}

	public void setCreditsText(String creditsText) {
		this.creditsText = creditsText;
	}
	
}
