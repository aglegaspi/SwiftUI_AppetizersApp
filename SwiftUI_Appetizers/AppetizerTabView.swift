//
//  ContentView.swift
//  SwiftUI_Appetizers
//
//  Created by Alex 6.1 on 4/12/21.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerTabView()
    }
}
