//
//  ModifyMoreIngredientsView.swift
//  Cookcademy
//
//  Created by cal on 11/3/24.
//

import SwiftUI

protocol RecipeComponent: CustomStringConvertible {
    init()
    static func singularName() -> String
    static func pluralName() -> String
}

extension RecipeComponent {
    static func singularName() -> String {
        String(describing: self).lowercased()
    }
    static func pluralName() -> String {
        self.singularName() + "s"
    }
}

protocol ModifyComponentView: View {
    associatedtype Component
    init(component: Binding<Component>, createAction: @escaping (Component) -> Void)
}

struct ModifyComponentsView<Component: RecipeComponent, DestinationView: ModifyComponentView>: View where DestinationView.Component == Component {
    @Binding var components: [Ingredient]
    @State private var newComponent = Ingredient()
    
    private let listBackgroundColor = AppColor.background
    private let listTextColor = AppColor.foreground
    
    var body: some View {
        VStack {
            let addIngredientView = ModifyIngredientView(component: $newComponent) { component in
                ingredients.append(component)
                newComponent = Component()
            }
            if components.isEmpty {
                Spacer()
                NavigationLink("Add the first component",
                               destination: addComponentView)
                Spacer()
            } else {
                List {
                    ForEach(components.indices, id: \.self) { index in
                        let component = components[index]
                        Text(component.description)
                    }
                    .listRowBackground(listBackgroundColor)
                    NavigationLink("Add another component",
                                   destination: addComponentView)
                        .buttonStyle(PlainButtonStyle())
                        .listRowBackground(listBackgroundColor)
                }.foregroundColor(listTextColor)
            }
        }
    }
}

struct ModifyMoreIngredientsView_Previews: PreviewProvider {
    @State static var recipe = Recipe.testRecipes[1]
    @State static var emptyIngredients = [Ingredient]()
    
    static var previews: some View {
        NavigationView  {
            ModifyComponentsView<Ingredient, ModifyIngredientView>(components: $recipe.ingredients)
        }
    }
}
