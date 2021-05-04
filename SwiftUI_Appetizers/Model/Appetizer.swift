//
//  Appetizer.swift
//  SwiftUI_Appetizers
//
//  Created by Alex 6.1 on 4/12/21.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    
    static let sampleAppetizer  = Appetizer(id: 0000,
                                           name: "Test Appetizer",
                                           description: "This is only a test",
                                           price: 9.78,
                                           imageURL: "",
                                           calories: 83,
                                           protein: 7,
                                           carbs: 37)
    
    static let appetizers       = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    static let orderItemOne     = Appetizer(id: 0001,
                                           name: "App #1",
                                           description: "This is only a test",
                                           price: 2.78,
                                           imageURL: "",
                                           calories: 83,
                                           protein: 7,
                                           carbs: 37)
    
    static let orderItemTwo     = Appetizer(id: 0002,
                                           name: "App #2",
                                           description: "This is only a test",
                                           price: 8.78,
                                           imageURL: "",
                                           calories: 83,
                                           protein: 7,
                                           carbs: 37)
    
    static let orderItemThree   = Appetizer(id: 0003,
                                           name: "App #3",
                                           description: "This is only a test",
                                           price: 5.78,
                                           imageURL: "",
                                           calories: 83,
                                           protein: 7,
                                           carbs: 37)
    
    static let orderItems       = [orderItemOne, orderItemTwo, orderItemThree]
}
