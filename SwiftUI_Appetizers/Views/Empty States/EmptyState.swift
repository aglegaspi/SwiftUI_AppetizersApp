//
//  EmptyState.swift
//  SwiftUI_Appetizers
//
//  Created by Alex 6.1 on 5/10/21.
//

import SwiftUI

struct EmptyState: View {
    
    let imageName: String
    let message: String
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height:150)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }//VStack
            .offset(y: -100.0)
        }//ZStack
        
    }
}

struct EmptyState_Previews: PreviewProvider {
    static var previews: some View {
        EmptyState(imageName: "empty-order", message: "This message is only a test")
    }
}
