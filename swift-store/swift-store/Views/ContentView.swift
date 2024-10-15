//
//  ContentView.swift
//  swift-store
//
//  Created by cal on 10/15/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Items in Stock")
                    .font(.title)
                    .padding()
                Spacer()
                NavigationLink(
                    destination: ItemDetailView(itemName: "My Item"),
                    label: {
                        Text("Shrimp Chips")
                    })
                Spacer()
            }
            // Sets a navigation title of "Agyei's Store"
            .navigationTitle(Text("Agyei's Store"))
            
            // Sets the styling of the navigation title to inline
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
