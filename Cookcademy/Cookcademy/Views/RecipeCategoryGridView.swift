//
//  RecipeCategoryGridView.swift
//  Cookcademy
//
//  Created by cal on 10/26/24.
//

import SwiftUI

struct RecipeCategoryGridView: View {
    
    private var recipeData = RecipeData()
    
    var body: some View {
        NavigationView {
            LazyVGrid(columns: [GridItem()], content: {
                ForEach(MainInformation.Category.allCases, id: \.self) { category in
                    Text(category.rawValue)
                        .font(.title)
                }
            })
            .navigationTitle("Categories")
        }
    }
}

struct RecipeCategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCategoryGridView()
    }
}
