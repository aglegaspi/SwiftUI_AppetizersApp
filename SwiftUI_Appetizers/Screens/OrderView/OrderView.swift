//
//  OrderView.swift
//  SwiftUI_Appetizers
//
//  Created by Alex 6.1 on 4/12/21.
//

import SwiftUI

struct OrderView: View {
    
    @State private var orderItems = MockData.orderItems
        
    var body: some View {
        NavigationView {
            VStack{
                List{
                    ForEach(orderItems) { appetizer in
                        AppetizerListCell(appetizer: appetizer)
                    }
                    .onDelete { indexSet in
                        orderItems.remove(atOffsets: indexSet)
                    }
                }
                .listStyle(PlainListStyle())
                
                Button {
                    print("order placed")
                } label: {
                    APButton(title: "$9.99 - Place Order")
                }
                .padding(.bottom, 20)
            }
                .navigationTitle("🧾 Orders")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
