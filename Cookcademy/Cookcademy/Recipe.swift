//
//  Recipe.swift
//  Cookcademy
//
//  Created by cal on 10/23/24.
//

import Foundation

struct Recipe {
    var mainInformation: MainInformation
    var ingredients: [String]
    var directions: [String]
}

struct MainInformation {
    var name: String
    var description: String
    var author: String
    var category: Category
    
    enum Category: String, CaseIterable {
        case breakfast = "Breakfast"
        case lunch = "Lunch"
        case dinner = "Dinner"
        case dessert = "Dessert"
    }
}

struct Ingredient {
    var name: String
    var quantity: Double
    var unit: Unit
    
    enum Unit: String, CaseIterable {
        case oz = "Ounces"
        case g = "Grams"
        case cups = "Cups"
        case tbs = "Tablespoons"
        case tsp = "Teaspoons"
        case none = "No units"
        
        var singularName: String { String(rawValue.dropLast()) }
    }
}

struct Direction {
    var description: String
    var isOptional: Bool
}
