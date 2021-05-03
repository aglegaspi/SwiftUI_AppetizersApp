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
                    TextField("First Name", text: $viewModel.user.firstName)
                    TextField("Last Name", text: $viewModel.user.lastName)
                    TextField("Email", text: $viewModel.user.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("Birthday", selection: $viewModel.user.birthDate, displayedComponents: .date)
                    
                    Button {
                        viewModel.saveChanges()
                    } label: {
                        Text("Save Changes")
                    }
                }//Section
                
                // Requests
                Section(header: Text("Requests")) {
                    Toggle("Extra Napkins", isOn: $viewModel.user.extraNapkins)
                    Toggle("Frequent Refills", isOn: $viewModel.user.frequentRefills)
                }//Section
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))

            }//Form
            .navigationTitle("🗄 Account")
        }//NavigationView
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
        
    }//body
}//struct

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
