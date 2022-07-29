package co.grandcircus.recipeapiproj.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import co.grandcircus.recipeapiproj.repository.RecipeRepository;

@Controller
public class RecipeController {
	@Autowired
	private RecipeRepository repo;
	
}
