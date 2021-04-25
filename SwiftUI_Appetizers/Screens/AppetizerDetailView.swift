//
//  AppetizerDisplay.swift
//  SwiftUI_Appetizers
//
//  Created by Alex 6.1 on 4/22/21.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    // pass in an appetizer for this view
    let appetizer: Appetizer
    
    var body: some View {
        
        VStack {
            Image("food-placeholder")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Spacer()
            
            Text(appetizer.name)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            Spacer()
            
            Text(appetizer.description)
                .multilineTextAlignment(.center)
                .font(.body)
                .padding()
            
            Spacer()
            
            HStack {
                VStack {
                    Text("Calories")
                        .bold()
                        .font(.caption)
                    Text("\(appetizer.calories)")
                        .foregroundColor(.secondary)
                        .fontWeight(.semibold)
                        .italic()
                }
                .padding()
                
                VStack {
                    Text("Carbs")
                        .bold()
                        .font(.caption)
                    Text("\(appetizer.carbs)")
                        .foregroundColor(.secondary)
                        .fontWeight(.semibold)
                        .italic()
                }
                .padding()
                
                VStack {
                    Text("Protein")
                        .bold()
                        .font(.caption)
                    Text("\(appetizer.protein)")
                        .foregroundColor(.secondary)
                        .fontWeight(.semibold)
                        .italic()
                }
                .padding()
            }//VStack
            
            
            Spacer()
            
            Button {
                print("tapped")
            } label: {
                Text("\(appetizer.price, specifier: "%.2f") - Add To Order")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .frame(width: 260, height: 50)
                    .foregroundColor(.white)
                    .background(Color.brandPrimary)
                    .cornerRadius(10)
            }
            .foregroundColor(.white)
            .padding(.bottom, 30)
    
            
        }//VStack
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button {
            print("dismiss")
        } label: {
            ZStack {
                Circle()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
                    .opacity(0.6)
                
                Image(systemName: "xmark")
                    .imageScale(.small)
                    .frame(width: 44, height: 44)
                    .foregroundColor(.black)
            }
        }, alignment: .topTrailing)
        
        
    }//View
}//Struct

struct AppetizerDisplay_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerDetailView(appetizer: MockData.sampleAppetizer)
    }
}
