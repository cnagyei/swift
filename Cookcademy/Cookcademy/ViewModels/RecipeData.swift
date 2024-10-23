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
}
