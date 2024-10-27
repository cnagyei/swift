//
//  RecipeData.swift
//  Cookcademy
//
//  Created by cal on 10/23/24.
//

import Foundation

// Pull Recipe from model
class RecipeData: ObservableObject {
    @Published var recipes = Recipe.testRecipes // Pulls testRecipes array here
    
    func recipes(for category: MainInformation.Category) -> [Recipe] {
        var filteredRecipes = [Recipe]()
        for recipe in recipes {
            if recipe.mainInformation.category == category {
                filteredRecipes.append(recipe)
            }
        }
        return filteredRecipes
    }
}
