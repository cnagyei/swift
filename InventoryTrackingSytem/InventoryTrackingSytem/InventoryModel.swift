//
//  InventoryModel.swift
//  InventoryTrackingSytem
//
//  Created by cal on 1/12/25.
//

import Foundation

// Create product
struct Product {
    var name: String
    var id: String
    var description: String
    var quantity: Int
}

// Create collection of products
struct Collection {
    var name: String
    var description: String
    var content: Product
}
    
var balance = 0

// Add new inventory
func addNewInventory(name: Product, quantity: Int) {
    balance += quantity
}

// Display inventory information
func displayInventory(product: Product) {
    print("Name of product: \(product)")
    print("Current quantity: \(product.quantity)")
}
