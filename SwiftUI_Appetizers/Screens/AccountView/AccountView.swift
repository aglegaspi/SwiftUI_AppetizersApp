//
//  AccountView.swift
//  SwiftUI_Appetizers
//
//  Created by Alex 6.1 on 4/12/21.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var viewModel = AccountViewModel()
    
    
    var body: some View {
        NavigationView {
            Form {
                // Personal Information
                Section(header: Text("Personal Information")) {
                    TextField("First Name", text: $viewModel.firstName)
                    TextField("Last Name", text: $viewModel.lastName)
                    TextField("Email", text: $viewModel.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("Birthday", selection: $viewModel.birthDate, displayedComponents: .date)
                    
                    Button {
                        print("save")
                    } label: {
                        Text("Save Changes")
                    }
                }//Section
                
                // Requests
                Section(header: Text("Requests")) {
                    Toggle("Extra Napkins", isOn: $viewModel.extraNapkins)
                    Toggle("Frequent Refills", isOn: $viewModel.frequentRefills)
                }//Section
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))

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
