//
//  ContentView.swift
//  Zookeeper
//
//  Created by cal on 10/23/24.
//

import SwiftUI

struct ContentView: View {
        
    var body: some View {
        VStack {
            List {
                ForEach(animalGroups) { animalGroup in
                    Section(header: Text(animalGroup.groupName)) {
                        ForEach(animalGroup.animals) { animal in
                            Text(animal.name)
                        }
                    }
                }
            }
        }
    }
}

// Animal model
struct Animal: Identifiable {
    var id = UUID()
    var name: String
    
    init(name: String) {
        self.name = name
    }
    init() {
        self.init(name: "")
    }
}

// AnimalGroup model
struct AnimalGroup: Identifiable {
    var id = UUID()
    var groupName: String
    var animals: [Animal]
}

let animalGroups = [
    AnimalGroup(groupName: "Pets", animals: [
        Animal(name: "Dog"),
        Animal(name: "Cat"),
        Animal(name: "Parrot"),
        Animal(name: "Mouse")
    ]),
    AnimalGroup(groupName: "Farm", animals: [
        Animal(name: "Cow"),
        Animal(name: "Horse"),
        Animal(name: "Goat"),
        Animal(name: "Sheet")
    ]),
    AnimalGroup(groupName: "Critters", animals: [
        Animal(name: "Firefly"),
        Animal(name: "Spider"),
        Animal(name: "Ant"),
        Animal(name: "Squirrel")
    ]),
    
]

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
