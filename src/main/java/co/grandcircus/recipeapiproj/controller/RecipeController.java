package co.grandcircus.recipeapiproj.controller;

import java.util.List;
import java.util.Objects;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import co.grandcircus.recipeapiproj.model.Recipe;
import co.grandcircus.recipeapiproj.repository.RecipeRepository;
import co.grandcircus.recipeapiproj.service.RecipeService;

@Controller
public class RecipeController {
	
	@Autowired
	private RecipeRepository repo;

	@Autowired
	private RecipeService recipeService;


	
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
			results = recipeService.getRecipeByName(searchParam);
			model.addAttribute("searchParam", searchParam);
		}
		else {
			results = recipeService.getRecipeByIngredient(searchParam);
			model.addAttribute("searchParam", ("dishes with " + searchParam + " in it"));
		}
		
		model.addAttribute("results", results);
		model.addAttribute("resultsSize", results.size());
		
		return "recipe-search";
	}
	
	@RequestMapping("/recipe-details")
	public String recipeDetails(Model model, @RequestParam String id) {
		Recipe recipe = recipeService.getRecipeById(id);
		
		try {
			recipe.setCreditsText(recipe.getCreditsText().replaceAll("[^\\x00-\\x7F]", "-"));
		}catch(NullPointerException e) {}
		
		model.addAttribute("recipe", recipe);
		model.addAttribute("hasAuthor", Objects.isNull(recipe.getCreditsText()));
		
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
	
	@RequestMapping("/add-favorite")
	public String addToFavorites(@RequestParam String id) {
		Optional<Recipe> recipe = repo.findById(id);
		if(recipe.isEmpty()) {
			repo.insert(recipeService.getRecipeById(id));
		}
		return "redirect:/recipe-details?id=" + id;
	}
}
