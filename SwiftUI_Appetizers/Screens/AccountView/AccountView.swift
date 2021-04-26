//
//  AccountView.swift
//  SwiftUI_Appetizers
//
//  Created by Alex 6.1 on 4/12/21.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Information")) {
                    Text("Account View!")
                }

            }//Form
            .navigationTitle("🗄 Account")
        }//NavigationView
        
    }//body
}//struct

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
