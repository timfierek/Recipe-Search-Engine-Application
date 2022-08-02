package co.grandcircus.recipeapiproj.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import co.grandcircus.recipeapiproj.model.Recipe;
import co.grandcircus.recipeapiproj.repository.RecipeRepository;

@Controller
public class RecipeController {
	@Autowired
	private RecipeRepository repo;
	
	@RequestMapping("/")
	public String homePage() {
		return "index";
	}
	
	//searchType param coming from index should be either "name" or "ingredient" depending on option selected.
	@RequestMapping("/recipe-search")
	public String recipeSearch(Model model, @RequestParam String searchType, @RequestParam String searchParam) {
		
		//Results of search to be shown to user
		List<Recipe> results;
		
		//Find recipe based on search style selected
		if(searchType.equals("name")) {
			results = RecipeApiService.getRecipeByName(searchParam);
		}
		else if(searchType.equals("ingredient")) {
			results = RecipeApiService.getRecipeByIngredient(searchParam);
		}
		
		model.addAttribute("searchParam", searchParam);
		model.addAttribute("results", results);
		
		return "recipe-search";
	}
	
	@RequestMapping("/recipe-details")
	public String recipeDetails(Model model, @RequestParam String id) {
		Recipe recipe = RecipeApiService.getRecipeById(id);
		model.addAttribute("recipe", recipe);
		
		return "recipe-details";
	}
	
	@RequestMapping("/favorites")
	public String favorites(Model model) {
		List<Recipe> favoritedRecipes = repo.findAll();
		model.addAttribute("favorites", favoritedRecipes);
		
		return "favorites";
	}
	
	//Deletes from db by Id and then redirects back to favorites page
	@RequestMapping("/delete")
	public String deleteFavorite(@RequestParam String id) {
		repo.deleteById(id);
		return "redirect:/favorites";
	}
}