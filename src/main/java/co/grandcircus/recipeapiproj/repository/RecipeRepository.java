package co.grandcircus.recipeapiproj.repository;

import org.springframework.data.mongodb.repository.MongoRepository;

import co.grandcircus.recipeapiproj.model.Recipe;

public interface RecipeRepository extends MongoRepository<Recipe, String>{

}
