//
//  AccountView.swift
//  SwiftUI_Appetizers
//
//  Created by Alex 6.1 on 4/12/21.
//

import SwiftUI

struct AccountView: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var birthDate = Date()
    @State private var extraNapkins = false
    @State private var frequentRefills = false
    
    var body: some View {
        NavigationView {
            Form {
                // Personal Information
                Section(header: Text("Personal Information")) {
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lastName)
                    TextField("Email", text: $email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("Birthday", selection: $birthDate, displayedComponents: .date)
                    
                    Button {
                        print("save")
                    } label: {
                        Text("Save Changes")
                    }
                }//Section
                
                // Requests
                Section(header: Text("Requests")) {
                    Toggle("Extra Napkins", isOn: $extraNapkins)
                    Toggle("Frequent Refills", isOn: $frequentRefills)
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
