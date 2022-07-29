package co.grandcircus.recipeapiproj.model;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document("favorites")
public class Recipe {
	@Id
	private String id;
}
