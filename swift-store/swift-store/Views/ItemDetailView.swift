//
//  ItemDetailView.swift
//  swift-store
//
//  Created by cal on 10/15/24.
//

import SwiftUI

struct ItemDetailView: View {
    // Generate a random number representing items and store in @State
    @State var quantityRemaining = Int.random(in: 1...10)
    let itemName: String
    
    var body: some View {
        VStack {
            Text("\(itemName)")
                .font(.title)
                .padding()
            Spacer()
            
            Image(systemName: "photo")
                .font(.system(size: 200))
                .padding()
            Text("Quantity Remaining: \(quantityRemaining)")
            Spacer()
            
            Button {
                if quantityRemaining > 0 {
                    quantityRemaining -= 1
                }
            } label: {
                Text("Add one to your cart")
            }
            Spacer()
        }
        // .background() runs the view below in the backround
        .background(
        // The navigation link is not active until the quantity is 0
        NavigationLink(destination: Text("You bought all the \(itemName)!"),
                       isActive: .constant(quantityRemaining == 0),
                       label: {EmptyView() })
        )
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetailView(itemName: "Test Item")
    }
}
