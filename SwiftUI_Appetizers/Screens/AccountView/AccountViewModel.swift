//
//  AccountViewModel.swift
//  SwiftUI_Appetizers
//
//  Created by Alex 6.1 on 4/26/21.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    
    @AppStorage("user") private var userData: Data?
    
    @Published var user = User()
    @Published var alertItem: AlertItem?
    
    
    func saveChanges() {
        // check if anything is invalid
        guard isValidForm else { return }
        
        do {
            // encode your user to data
            let data = try JSONEncoder().encode(user)
            // set user data to data for UserDefaults
            userData = data
            // if user data is successful load alert
            alertItem = AlertContext.userSaveSuccess
        } catch {
            // if encoding fails show this alert
            alertItem = AlertContext.invalidUserData
        }
    }
    
    func retrieveUser() {
        // make sure we have data
        guard let userData = userData else { return }
        
        do {
            // decode the data into a User
            user = try JSONDecoder().decode(User.self, from: userData)
        } catch {
            // if we can't decode load this alert
            alertItem = AlertContext.invalidUserData
        }
    }
    
    
    var isValidForm: Bool {
        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.email.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
        }
        
        guard user.email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }
        
        return true
    }
    
    
}
