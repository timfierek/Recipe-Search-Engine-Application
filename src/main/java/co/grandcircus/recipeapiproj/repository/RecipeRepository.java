package co.grandcircus.recipeapiproj.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.mongodb.repository.MongoRepository;

import co.grandcircus.recipeapiproj.model.Recipe;

public interface RecipeRepository extends MongoRepository<Recipe, String>{
	
	List<Recipe> findAll();
	
	Optional<Recipe> findById(String id);
	

}
