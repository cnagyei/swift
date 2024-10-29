//
//  ContentView.swift
//  ToolBarProject
//
//  Created by cal on 10/29/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Text("Initial View")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "gear")
                    })
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
