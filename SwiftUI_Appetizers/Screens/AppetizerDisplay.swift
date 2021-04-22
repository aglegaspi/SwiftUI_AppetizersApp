//
//  AppetizerDisplay.swift
//  SwiftUI_Appetizers
//
//  Created by Alex 6.1 on 4/22/21.
//

import SwiftUI

struct AppetizerDisplay: View {
    var body: some View {
        
        VStack {
            Image("food-placeholder")
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(8)
            
            Spacer()
            
            Text("Chicken Wings")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            Spacer()
            
            Text("You'll need extra napking with these tasty treats.")
                .padding()
            
            Spacer()
            
            HStack {
                VStack {
                    Text("Calories")
                    Text("700")
                }
                .padding()
                
                VStack {
                    Text("Carbs")
                    Text("11g")
                }
                .padding()
                
                VStack {
                    Text("Protein")
                    Text("13g")
                }
                .padding()
            }//VStack
            
            
            Spacer()
            
            Button("$11.99 To Order") {
                
            }
            .foregroundColor(.green)
            
            Spacer()
            
        }//HStack
    }//View
}//Struct

struct AppetizerDisplay_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerDisplay()
    }
}
