//
//  ContentView.swift
//  ToolBarProject
//
//  Created by cal on 10/29/24.
//

import SwiftUI

struct ContentView: View {
    @State var isPresenting: Bool = false

    var body: some View {
        
        NavigationView {
            Text("Initial View")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        isPresenting = true
                    }, label: {
                        Image(systemName: "gear")
                    })
                }
            }
            .sheet(isPresented: $isPresenting) {
                NavigationView {
                    Text("Settings Page")
                    .toolbar {
                        ToolbarItem {
                            Button("Save") {}
                        }
                        }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
